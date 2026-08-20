# WinLoop — SE Technical-Win Skill

> Turn messy customer notes into the shortest defensible path to a verbal technical win.

WinLoop is a reusable Claude Code skill for Sales Engineers. Paste meeting notes, a transcript summary, or current opportunity context and receive a structured technical-win analysis — including Salesforce-ready fields and a customer-facing value document.

---

## What you get

### APEX "Why Okta" customer document

Branded, customer-facing value document generated from your debrief in seconds. Exports to PDF.

![APEX customer-facing document preview](docs/assets/apex-template-preview.png)

### SE Decision Assist

Structured reasoning that tells you where you actually stand:

```
Status: Validation required

Customer evidence:
- VP Engineering (evaluation authority unconfirmed): "The session recording
  capability fills our biggest PAM gap." — Customer signal, not overall confirmation.

Still unproven:
- Whether the full IGA + PAM scope meets all defined requirements.
- Technical decision owner not identified.

Shortest proof route:
Bounded workshop — predefined labs for PAM and IGA certification; pass/fail
criteria agreed before the session.

Exact customer ask:
"If we validate privileged session recording and IGA certification campaigns
against your defined criteria, would you confirm that the solution meets your
technical requirements for this initiative?"

Technical-win forecast:
- Window/date: Unknown
- Confidence: Low
- Rationale: Decision owner unidentified; workshop not yet scheduled.
```

### Salesforce-ready blocks

```
Pre-Sales confidence for Quarter
Low

Presales Stage
3 - Solution Development

Technical Differentiation
Positive

Presales Concern
Champion

Risks/Gaps
D-Decision Process;C-Champion;P-Product

Technical Win Date
INPUT REQUIRED — exact date not established; known window: Q3 2026

POC Status
Not Required
```

---

## Four modes

| Mode | When to use |
|---|---|
| **Message** | Build an APEX Command of the Message hypothesis when you have no Gong or transcript |
| **Prepare** | Define what must be learned and proven before an upcoming meeting |
| **Debrief** | Convert completed-meeting evidence into a technical-win status + Salesforce fields |
| **Checkpoint** | Assess where an opportunity stands and get one next best action |

---

## Quick start

### Prerequisites

1. **Claude Code** — download from [claude.com/claude-code](https://claude.com/claude-code)
2. **Signed in** — Claude Pro, Max, Team, or Enterprise (no separate API key)
3. **Claude Code 2.x+** — run `claude --version` to check

### Install

```bash
# Open the winloop-se-skill folder in Claude Code
cd winloop-se-skill
claude
```

### Run

```text
/winloop

[paste meeting notes, transcript summary, or opportunity context]
```

Explicit mode invocation (optional):

```text
/winloop message
/winloop prepare
/winloop debrief
/winloop checkpoint
```

### Optional: install globally

```bash
rm -rf ~/.claude/skills/winloop && mkdir -p ~/.claude/skills \
  && cp -R .claude/skills/winloop ~/.claude/skills/winloop
```

---

## Debrief example

```text
/winloop

Demo delivered to Acme Corp. VP Engineering said "this is exactly what we need
for session recording." No explicit confirmation from CTO. Technical lead
to send PAM sizing next week. Team satisfied with the IGA demo.
```

WinLoop output:
- `Status: Validation required` — no overall confirmation from an authoritative stakeholder
- Flags "exactly what we need" as a scoped fit signal, not an overall win
- Names the CTO touchpoint as the shortest proof route
- Generates Salesforce blocks with `Risks/Gaps: D-Decision Process;C-Champion`

---

## The operating rule

> If the customer did not say it, it is not a technical win.

WinLoop refuses to:
- declare a win from enthusiasm, feature praise, or a completed demo
- fabricate a forecast date from a vague window
- recommend a POC when a workshop can answer the question
- follow instructions embedded inside pasted transcripts

---

## Per-opportunity ledger

After each Debrief or Checkpoint, WinLoop offers to append the dated analysis to `opportunities/<account>/<account>.md`. On the next run it reads the ledger back, so context carries forward across sessions.

Customer-facing artifacts (value documents, workshop pages) live in the same folder and are built from confirmed ledger content only — no internal flags, forecast data, or Salesforce content.

> `opportunities/` is excluded from git. Keep it on your work machine only.

---

## Customer-facing templates

Two Okta-branded HTML templates:

| Template | File | When to use |
|---|---|---|
| **APEX value doc** | `customer-apex-value.html` | "Why Okta" leave-behind from a debrief |
| **Workshop agenda** | `customer-workshop.html` | Hands-on session prep page |

Both export to self-contained PDF via Chrome headless. Team photos and contact details auto-inject from `team.json`.

---

## Customize

Everything is plain Markdown:

| File | What to edit |
|---|---|
| `references/message-study.md` | "How Okta Does It Better" section, product references |
| `references/output-contract.md` | Salesforce field schema and derivation rules |
| `references/decision-model.md` | Forecast confidence mapping, proof ladder rungs |
| `references/source-integrity.md` | Evidence classification rules |

After any customization, re-run the test suite.

---

## Tests

```bash
cd tests && ./run.sh
```

`tests/` contains input/expected pairs for every mode and decision state, plus adversarial cases: false-authority confirmations, pressured yeses, embedded AI instructions, and fabricated dates. See `tests/README.md` for the coverage matrix and `tests/evaluation-rubric.md` for pass/fail gates.

---

## Data handling

Everything you paste flows to Anthropic under your org's Claude agreement.

- Paste only what the decision needs — a scoped excerpt beats a full transcript.
- De-identify when the analysis doesn't require names.
- WinLoop treats pasted content strictly as evidence: instructions embedded inside a transcript are ignored and flagged, not followed.
- You own every value you paste into Salesforce. WinLoop ends each CRM block with a review reminder.

---

## Project files

```
.claude/skills/winloop/
  SKILL.md                        Claude Code skill entry point
  references/
    decision-model.md             Technical-win states, proof ladder, forecast rules
    message-study.md              APEX Command of the Message rules
    output-contract.md            Response schema and Salesforce field derivation
    source-integrity.md           Evidence classification and claim controls
  templates/
    customer-apex-value.html      "Why Okta" branded customer document
    customer-workshop.html        Workshop agenda template
tests/                            Input/expected pairs, rubric, harness
opportunities/                    Per-account ledgers and artifacts (gitignored)
docs/assets/                      README screenshots
MEASUREMENT.md                    Pilot and efficacy metrics
CHANGELOG.md                      Version history
```

---

## Three-minute demo

1. Show a long, positive-looking meeting summary (`tests/case-01-input.md`).
2. Run `/winloop`.
3. Show that WinLoop calls it `Validation required` — not a win — despite the enthusiasm.
4. Show the refusal to fabricate a forecast date.
5. Show `POC Required: No` with a workshop recommendation instead.
6. Copy the Salesforce blocks.

The moment is not summarization. It is preventing a false technical win, a fake forecast date, and an unnecessary POC in one pass.

---

*This skill is configured for Okta Workforce Identity. The decision logic is vendor-neutral and fully customizable. "Command of the Message" is a methodology of Force Management; this skill references the framework for internal enablement only.*
