# WinLoop v1.1

WinLoop is a reusable AI skill for Sales Engineers:

> Turn messy customer notes into the shortest defensible path to a verbal technical win.

It is intentionally not an app, dashboard, or integration. An SE pastes meeting notes, a transcript summary, or current opportunity context into an AI assistant and receives:

- an APEX Command of the Message study when preparing without Gong;
- a technical-win status backed by customer evidence;
- the remaining technical decision criteria;
- the smallest useful validation route;
- an exact question to ask the customer;
- forecast guidance without invented dates; and
- separate, paste-ready Salesforce field values (Debrief mode).

The operating rule is simple:

> If the customer did not say it, it is not a technical win.

**Scope honesty:** WinLoop is built for our SE org. The debrief/decision logic (states, proof ladder, forecast rules) is vendor-neutral; the Message mode is Okta-configured, and the CRM layer targets our four Salesforce fields. See [Customize](#customize-winloop) to adapt either.

## Prerequisites

1. **Claude Code installed** — download from [claude.com/claude-code](https://claude.com/claude-code) (desktop app or CLI). SEs who prefer a windowed app over a terminal should install the desktop app; the skill works identically in both.
2. **Signed in** — a Claude Pro, Max, Team, or Enterprise login (or a Console account). No separate API key is needed beyond your normal Claude Code sign-in.
3. **A recent Claude Code version** — slash-invocation of skills requires a 2.x release. Run `claude --version` to check; update if invocation of `/winloop` does not work.

## Start using it

The download is already arranged as a Claude Code project. No build, package installation, or file copying is required.

1. Unzip the download.
2. Open a terminal in the extracted `winloop-se-skill` folder (or open the folder in the Claude Code desktop app).
3. Start Claude Code:

```bash
claude
```

4. Invoke WinLoop:

```text
/winloop
```

Claude Code discovers the project skill from `.claude/skills/winloop/SKILL.md`. Typing a mode keyword after the command (for example `/winloop message`) is an explicit mode request that the skill's routing honors.

If other sales or meeting skills are installed alongside WinLoop, explicit `/winloop` invocation is the reliable path — auto-selection between overlapping skills is not guaranteed.

### Optional personal installation

To make WinLoop available in every Claude Code project on macOS or Linux, run this from the extracted folder:

```bash
rm -rf ~/.claude/skills/winloop && mkdir -p ~/.claude/skills && cp -R .claude/skills/winloop ~/.claude/skills/winloop
```

On Windows PowerShell:

```powershell
Remove-Item -Recurse -Force "$HOME\.claude\skills\winloop" -ErrorAction SilentlyContinue; New-Item -ItemType Directory -Force "$HOME\.claude\skills" | Out-Null; Copy-Item -Recurse -Force ".claude\skills\winloop" "$HOME\.claude\skills\winloop"
```

The `rm`/`Remove-Item` first makes re-installation clean when updating. If both a personal copy and a project copy exist with the same name, only one is used inside that project — keep the two in sync when you update. Check which version a copy carries with:

```bash
head -4 ~/.claude/skills/winloop/SKILL.md
```

To share WinLoop with the team, place `.claude/skills/winloop` in the root of a shared project.

### Other compatible agents

WinLoop follows the open Agent Skills `SKILL.md` format. For clients that discover `.agents/skills`, copy `.claude/skills/winloop` to `.agents/skills/winloop`. This path is untested — the reference behavior is Claude Code with a current Claude model (see [Consistent results](#consistent-results-across-the-team)).

## Data handling — read before pasting customer content

Everything you paste flows to Anthropic under our org's Claude agreement, and everything WinLoop outputs (including Salesforce blocks) carries the same confidentiality as the input.

- Paste only what the decision needs; a scoped excerpt usually beats a full transcript.
- De-identify when the analysis does not require names — replace people with roles (the skill's own test cases model this).
- Check our AI-usage and customer-data policy before pasting customer transcripts or Gong summaries, and our recording-consent obligations for transcripts.
- WinLoop treats pasted content strictly as evidence: instructions embedded inside a transcript are ignored and flagged, not followed.
- You own every value you paste into Salesforce. WinLoop ends each CRM block with a review reminder; read it literally.

## First use

### Debrief a completed meeting

```text
/winloop

Debrief this customer meeting.

[paste meeting notes or transcript summary]
```

Helpful optional context:

```text
Current technical-win forecast: late Q4 2026, exact date unknown
Current validation route: workshop offered
Salesforce fields are separate
```

### Prepare for an upcoming meeting

```text
/winloop

Prepare me for an upcoming technical discovery and demo.

Customer context: [paste what you know]
Current platform: [current technology]
Proposed solution areas: [products or use cases]
```

### Check the opportunity

```text
/winloop

Checkpoint this opportunity and tell me the single next action that creates the shortest defensible path to technical win.

[paste the latest opportunity context]
```

WinLoop chooses one of four modes, with an explicit mode request always winning:

- **Message:** create a four-part APEX Command of the Message hypothesis, including a question that validates it with the customer.
- **Prepare:** define what must be learned, proven, and explicitly confirmed in an upcoming meeting.
- **Debrief:** convert completed-meeting evidence into a technical-win check and Salesforce-ready fields.
- **Checkpoint:** assess the current opportunity and recommend one next best action.

Requests that span modes ("debrief this and prep me for Friday") run each mode's contract in sequence, Debrief first.

### APEX message without Gong

```text
/winloop message

Customer/scenario: [name or generic scenario]
Current platform/process: [current state]
Proposed Okta products: [IAM, IGA, PAM, etc.]
Audience: [optional]
Language: [any; the output mirrors your request language by default]
No Gong is available. Treat unknown customer details as hypotheses.
```

WinLoop returns four short paragraphs with no bullets: Before Scenario and Negative Consequences, After Scenario and Positive Business Outcomes, Required Capabilities and Metrics, and How Okta Does It Better. It also adds one discovery question that lets the customer correct the hypothesis.

## The output

Debrief returns two layers:

1. **SE Decision Assist** — status, evidence (with speaker roles and authority), gaps, proof route, exact customer ask, forecast confidence, and accuracy flags.
2. **Copy to Salesforce** — separate values for Technical Win Forecast Date, SE Notes, Next Steps, and POC Required, ending with a review-before-paste reminder.

Prepare, Checkpoint, and Message have their own output shapes; Salesforce blocks appear outside Debrief only when you explicitly ask for a CRM update.

Because Technical Win Forecast Date is a date-picker field in our org, WinLoop never asks you to paste a sentence into it: when only a window is known, it tells you to leave the field unchanged and carries the window at the top of SE Notes instead. POC Required nuance goes into the Reason line, not the picklist value. SE Notes are stamped `[YYYY-MM-DD WinLoop debrief]` so repeated debriefs append rather than overwrite deal history.

## Carrying state between runs

WinLoop can keep a per-opportunity ledger: after a Debrief or Checkpoint it offers to append the dated SE Decision Assist block to `opportunities/<account>/<account>.md` in this folder, and reads it back on the next Checkpoint, Prepare, or message revision. Generated artifacts for the account — SE-facing decision dashboards and customer-facing workshop pages — live in the same folder; customer-facing pages are built from the ledger's confirmed content only, with no internal flags, forecasts, or Salesforce data. If you prefer not to store account context in files, paste the previous output under a `Prior state:` header instead.

Ledgers are live customer data: keep `opportunities/` on your work machine only, and never include it when sharing or transferring the skill.

## Consistent results across the team

Two SEs running the same input get outputs with the same structure, statuses, and refusal behaviors — the contracts constrain those hard. Exact wording will vary between runs; that is inherent to LLMs and does not affect the decision content.

To keep results consistent org-wide:

- Standardize on one Claude model for the team. This release was authored and validated against Claude (Sonnet-class or better, mid-2026): case 01 passed 15/15 end-to-end on a Fable-class model on 2026-07-30, and live account use the same day ran fluently on Sonnet 4.6, including Portuguese transcripts. Weaker or older models may not sustain the multi-file contract.
- Re-run the test suite (below) after any model change or edit to the skill files.
- For the live demo, keep `tests/case-01-expected.md` open as the known-good fallback.

## Tests

`tests/` contains input/expected pairs for every mode and decision state, plus adversarial cases (false-authority confirmations, pressured yeses, embedded instructions, fabricated dates). `tests/README.md` has the coverage matrix; `tests/evaluation-rubric.md` defines pass/fail per mode with hard gates; `tests/run.sh` runs the suite headlessly with an LLM judge.

```bash
cd tests && ./run.sh
```

## Customize WinLoop

Everything is plain Markdown:

- **Different product/vendor:** edit `references/message-study.md` (the "How Okta Does It Better" section and the Okta references) and rubric item wording in `tests/evaluation-rubric.md`.
- **Different CRM fields:** edit the "Copy to Salesforce" block and field-type paste guidance in `references/output-contract.md`.
- **Internal product references:** drop approved docs into `.claude/skills/winloop/references/` and link them from `SKILL.md`'s "Protect source integrity" section so product claims can be verified against them.
- **Org forecast categories:** map High/Medium/Low to your forecast stages in `references/decision-model.md`'s Forecast section.

After any customization, re-run the tests.

## Three-minute hackathon demo

1. Show a long meeting summary that appears positive (`tests/case-01-input.md`).
2. Run `/winloop`.
3. Reveal that the positives are only scoped fit signals — one confirmed sub-requirement and one strong pain signal — while the overall technical win remains unconfirmed.
4. Show that WinLoop refuses to fabricate an exact forecast date.
5. Show the workshop-first recommendation and `POC Required: No`.
6. Copy the four separated Salesforce blocks.

The "magic moment" is not summarization. It is preventing a false technical win, a fake forecast date, and an unnecessary POC in one pass.

## Measuring whether it works

`MEASUREMENT.md` defines a lightweight pilot: run a cohort of opportunities through WinLoop, tag the assisted records, and compare technical-win reversals, forecast-date variance, and workshop-vs-POC mix against baseline. Adoption asks should be made with that data, not vibes.

## Scope

Version 1.1 requires:

- no API keys beyond your Claude Code sign-in;
- no Salesforce, Slack, Gong, Granola, or product integration;
- no code execution (the optional test harness is the only script);
- no proprietary product knowledge.

The decision logic is product-agnostic; the Message study and CRM field layer ship configured for our org and are customizable (see above).

## Project files

- `.claude/skills/winloop/SKILL.md` — the Claude Code project skill
- `.claude/skills/winloop/references/decision-model.md` — technical-win and validation rules
- `.claude/skills/winloop/references/message-study.md` — APEX Command of the Message rules
- `.claude/skills/winloop/references/output-contract.md` — response and Salesforce schema
- `.claude/skills/winloop/references/source-integrity.md` — evidence and claim controls
- `tests/` — input/expected pairs, rubric, harness (see `tests/README.md`)
- `opportunities/` — optional per-account state ledgers
- `MEASUREMENT.md` — pilot and efficacy metrics
- `CHANGELOG.md` — version history
- `HACKATHON_PITCH.md` — short judging pitch and demo flow

This project is for internal use within our organization; do not redistribute externally. "Command of the Message" is a methodology of Force Management; this skill references the framework for internal enablement and is not affiliated with or endorsed by Force Management.

## Appendix — reusable prompt without the installed skill

```text
Create a Command of the Message study for [CUSTOMER OR SCENARIO] considering adoption of [OKTA PRODUCT(S)] while currently using [CURRENT PLATFORM OR PROCESS].

If Gong, a transcript, or grounded customer notes are unavailable, treat customer-specific pains and outcomes as hypotheses. Do not invent customer facts, priorities, metrics, deadlines, or competitor limitations. Use public primary customer sources and current official product documentation when available.

Output exactly four titled sections. Under each title, write one short and simple paragraph of 35–65 words with no bullet points:

1. Before Scenario & Negative Consequences — describe the current state, operational friction, and negative business effect.
2. After Scenario & Positive Business Outcomes — describe the desired future state and positive business outcomes.
3. Required Capabilities & Metrics — state vendor-neutral capabilities and measurable success metrics without invented target values.
4. How Okta Does It Better — connect verified Okta strengths to the required capabilities without unsupported competitor claims.

Start with an Evidence posture of Grounded, Mixed, or Hypothesis and a one-sentence basis. End with one Discovery bridge question that asks the customer to validate or correct the message. Write in [LANGUAGE].
```

## Design references

- [Claude Code skills documentation](https://code.claude.com/docs/en/skills)
- [Agent Skills specification](https://agentskills.io/specification)
- [Agent Skills quickstart](https://agentskills.io/skill-creation/quickstart)
