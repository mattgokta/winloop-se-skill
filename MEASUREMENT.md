# Measuring WinLoop

The pitch claims WinLoop standardizes judgment and prevents false technical wins. This file defines how to prove or disprove that with a lightweight pilot, so the adoption ask to SE leadership rests on data.

## Pilot design (4–6 weeks)

**Cohort:** every opportunity a volunteer group of 5–10 SEs debriefs through WinLoop during the pilot window.

**Baseline:** a matched set of the same SEs' opportunities from the prior quarter (same segment mix), or a concurrent control group of non-participating SEs.

**Tagging:** WinLoop-assisted records are identifiable by the `[YYYY-MM-DD WinLoop debrief]` stamp in SE Notes — no extra process needed.

## Metrics

| Metric | Question it answers | Source |
|---|---|---|
| Technical-win reversals | Do deals marked technically won later reopen their evaluation? (false-win rate) | SFDC stage history |
| Forecast-date variance | How far did Technical Win Forecast Date move between first entry and actual confirmation? | SFDC field history |
| Workshop-vs-POC mix | Are bounded workshops replacing open-ended POCs? | SFDC POC Required + activity records |
| POCs launched without bounded success criteria | Is POC discipline improving? | SE review of POC plans |
| SE time per debrief | Does WinLoop actually save time? | SE self-report, sampled |
| SE trust | Would the SE keep using it? What did it get wrong? | 3-question survey at pilot end |

## Calibration check

Sample 10 WinLoop outputs that said `Confirmed` or `High` confidence. For each, did the customer's authoritative confirmation actually hold through selection? If fewer than 8 of 10 held, the decision model needs tightening before wider rollout.

## Decision rule

Adopt org-wide if, versus baseline: technical-win reversals and forecast-date variance both improve (or hold) AND the workshop-vs-POC mix shifts toward workshops AND SEs report they would keep using it. Otherwise iterate on the rules (they are plain Markdown) and re-pilot.
