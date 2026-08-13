#!/usr/bin/env bash
#
# WinLoop skill test harness.
#
# COST NOTE: each case makes 2 Claude calls — one headless skill run and one
# LLM-judge run. Running all cases doubles that across the suite; use a subset
# (./run.sh 01 07) while iterating.
#
# NON-DETERMINISM NOTE: skill outputs vary between runs, so the judge grades
# each output against the case's acceptance criteria (case-NN-expected.md plus
# tests/evaluation-rubric.md), never a literal diff against the example output.
#
# Usage:
#   ./tests/run.sh                 # run every tests/case-*-input.md
#   ./tests/run.sh 01 07           # run only cases 01 and 07
#   CLAUDE_MODEL=<model> ./tests/run.sh   # override the model for both calls
#
# Results land in tests/results/<timestamp>/:
#   case-NN-output.md   raw skill output
#   case-NN-judge.json  judge verdict (strict JSON)
#
# Plain bash + python3 (ships with macOS); no jq required. python3 is used only
# for judge-prompt template substitution and for parsing the judge's JSON.

set -u -o pipefail

# The skill is discovered from the project folder, so run from the repo root
# (this script lives in tests/).
cd "$(dirname "$0")/.." || exit 2

RUBRIC_FILE="tests/evaluation-rubric.md"
JUDGE_TEMPLATE="tests/judge-prompt.md"
RESULTS_DIR="tests/results/$(date +%Y%m%d-%H%M%S)"

for f in "$RUBRIC_FILE" "$JUDGE_TEMPLATE"; do
  if [ ! -f "$f" ]; then
    echo "Missing required file: $f" >&2
    exit 2
  fi
done

command -v claude >/dev/null 2>&1 || { echo "claude CLI not found in PATH — install Claude Code first" >&2; exit 2; }

MODEL_ARGS=()
if [ -n "${CLAUDE_MODEL:-}" ]; then
  MODEL_ARGS=(--model "$CLAUDE_MODEL")
fi

# Resolve the case list (all cases, or the zero-padded numbers given as args).
inputs=()
if [ "$#" -gt 0 ]; then
  for n in "$@"; do
    f="tests/case-${n}-input.md"
    if [ ! -f "$f" ]; then
      echo "No such case input: $f" >&2
      exit 2
    fi
    inputs+=("$f")
  done
else
  for f in tests/case-*-input.md; do
    [ -f "$f" ] && inputs+=("$f")
  done
fi

if [ "${#inputs[@]}" -eq 0 ]; then
  echo "No case inputs found under tests/." >&2
  exit 2
fi

mkdir -p "$RESULTS_DIR"

overall_fail=0
summary_rows=()

for input in "${inputs[@]}"; do
  base="$(basename "$input")"
  nn="${base#case-}"
  nn="${nn%-input.md}"
  expected="tests/case-${nn}-expected.md"
  output_file="$RESULTS_DIR/case-${nn}-output.md"
  judge_file="$RESULTS_DIR/case-${nn}-judge.json"

  if [ ! -f "$expected" ]; then
    echo "case ${nn}: missing expected file ${expected} — skipping" >&2
    summary_rows+=("${nn}|?|?|ERROR(no expected)")
    overall_fail=1
    continue
  fi

  # Applicable rubric items come from the expected file's frontmatter.
  applicable="$(grep -m1 '^rubric:' "$expected" | sed -e 's/^rubric:[[:space:]]*//' -e 's/[][]//g')"
  [ -n "$applicable" ] || applicable="?"

  echo "==> case ${nn}: running skill..."
  if ! claude -p "/winloop

$(cat "$input")" ${MODEL_ARGS[@]+"${MODEL_ARGS[@]}"} > "$output_file" 2> "$RESULTS_DIR/case-${nn}-run-stderr.log"; then
    echo "case ${nn}: skill run failed (see $RESULTS_DIR/case-${nn}-run-stderr.log)" >&2
    summary_rows+=("${nn}|${applicable}|?|ERROR(run)")
    overall_fail=1
    continue
  fi

  echo "==> case ${nn}: judging..."
  judge_prompt="$(python3 - "$JUDGE_TEMPLATE" "$RUBRIC_FILE" "$expected" "$output_file" <<'PY'
import sys
tpl, rubric, expected, output = (open(p, encoding="utf-8").read() for p in sys.argv[1:5])
sys.stdout.write(
    tpl.replace("{{RUBRIC}}", rubric)
       .replace("{{EXPECTED}}", expected)
       .replace("{{OUTPUT}}", output)
)
PY
)"

  if ! claude -p "$judge_prompt" ${MODEL_ARGS[@]+"${MODEL_ARGS[@]}"} > "$judge_file" 2> "$RESULTS_DIR/case-${nn}-judge-stderr.log"; then
    echo "case ${nn}: judge run failed (see $RESULTS_DIR/case-${nn}-judge-stderr.log)" >&2
    summary_rows+=("${nn}|${applicable}|?|ERROR(judge)")
    overall_fail=1
    continue
  fi

  # Parse the judge JSON: verdict comes from the 'pass' field, any item scored 0
  # (or listed in gates_failed) fails the case, and the scored item set must
  # exactly match the case's applicable list — a judge that drops an item
  # (LLM drift) must surface as an error, not a silent PASS.
  verdict="$(python3 - "$judge_file" "$applicable" <<'PY'
import json, re, sys
raw = open(sys.argv[1], encoding="utf-8").read()
expected_ids = {s.strip() for s in sys.argv[2].split(",") if s.strip() and s.strip() != "?"}
m = re.search(r"\{.*\}", raw, re.S)  # tolerate stray prose or fences around the JSON
if not m:
    print("ERROR(bad-json)|?")
    raise SystemExit
try:
    data = json.loads(m.group(0))
except Exception:
    print("ERROR(bad-json)|?")
    raise SystemExit
items = data.get("items", {}) or {}
if expected_ids and set(items.keys()) != expected_ids:
    missing = ",".join(sorted(expected_ids - set(items.keys()))) or "-"
    extra = ",".join(sorted(set(items.keys()) - expected_ids)) or "-"
    print(f"ERROR(items-mismatch)|missing:{missing};extra:{extra}")
    raise SystemExit
failed = sorted(
    {k for k, v in items.items() if not (isinstance(v, dict) and v.get("score") == 1)}
    | set(data.get("gates_failed") or [])
)
ok = bool(data.get("pass")) and not failed
print(("PASS" if ok else "FAIL") + "|" + (",".join(failed) if failed else "-"))
PY
)"

  status="${verdict%%|*}"
  failed_items="${verdict#*|}"
  [ "$status" = "PASS" ] || overall_fail=1
  summary_rows+=("${nn}|${applicable}|${failed_items}|${status}")
done



echo
echo "Results: $RESULTS_DIR"
echo
printf '%-6s | %-72s | %-28s | %s\n' "case" "applicable items" "failed items" "verdict"
printf '%s\n' "-------+--------------------------------------------------------------------------+------------------------------+---------"
for row in "${summary_rows[@]}"; do
  IFS='|' read -r c a f v <<< "$row"
  printf '%-6s | %-72s | %-28s | %s\n' "$c" "$a" "$f" "$v"
done
echo

exit "$overall_fail"
