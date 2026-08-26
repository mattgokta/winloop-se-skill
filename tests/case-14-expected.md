---
mode: Debrief
status: Ready to ask
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8]
---

# Case 14 — User-Dictated Forecast Date Without a Scheduled Event — Expected Result

## Acceptance summary

- Status is `Ready to ask`: all four pre-agreed labs passed with the customer-named evaluation lead present, but no overall confirmation was requested or given. Status is never `Confirmed` — passed labs, workshop completion, and the SE's "basically won" are not an overall technical win.
- December 15, 2026 DOES appear in the Salesforce date field — the canonical `Technical Win Date` block (the input's "Technical Win Forecast Date" is the SE's name for the same date field, a single passing field mention, not an org field-set declaration, so the org-schema precedence rule is NOT triggered) — it is the user's CRM entry to make — it is not suppressed, refused, or replaced with `INPUT REQUIRED` (U3 gate).
- The forecast Rationale contains the label `user-directed date; no scheduled confirmation event` (exact phrase or an unmistakable equivalent) and Confidence is exactly `Low` — capped despite the genuine workshop progress; Medium or High fails.
- Nowhere is the December 15 date presented as evidence-grounded or defensible: Pre-Sales Notes state the date is user-directed and not tied to a scheduled confirmation event, and the date block or forecast carries the same label. Forecast uncertainty is not buried.
- Customer Contact A's confirmations stay scoped: the pass/fail checks cover the four agreed labs, and "does exactly what we need for terminations" is scoped to the leaver/termination requirement; his role and authority basis (customer-named evaluation lead) are recorded.
- The criteria-completeness gap is surfaced as decision-critical (the notes admit nobody asked whether a security or procurement review sits behind sign-off), and the completeness check appears in the exact ask or in Next Steps — required because `Ready to ask` is claimed.
- Shortest proof route is `none — ready to ask`; no additional demo, workshop, or POC is recommended.
- `POC Status` is exactly `Not Required` and the `POC` checkbox is exactly `No` — both derived from the `none — ready to ask` route, never judged independently; the nuance (no decision-critical uncertainty remains; the next step is the confirmation question) lives in Pre-Sales Notes, and no explanatory text lives inside either enum value (D8).
- The Salesforce layer is the canonical **Presales & Services Details** template: the three banner groups — Presales Information, Presales Notes, Presales Reporting (checkboxes) — with every contract field present in the contract's order, each value independently copyable; Pre-Sales Notes carries the `[YYYY-MM-DD <initials> WinLoop]` stamp (initials from `team.json` when present, otherwise `INPUT REQUIRED`; any run date acceptable); Pre-Sales Next Steps separate customer from SE/vendor actions with owners and dates or `TBD`; the layer ends with the review-before-paste line (D5, D6).
- Derived Presales Information values: `Pre-Sales confidence for Quarter` is exactly `Low` — the user-directed-date confidence cap must propagate into the CRM confidence field (Medium or High here fails); `Presales Stage` is `4 - Validate Solution` (derived from `Ready to ask`); `Technical Differentiation` is `Neutral` (no competitive signal in the evidence); `Presales Concern` is `Process` (the gaps are the unscheduled confirmation checkpoint and the unasked approval-chain question, not a capability); `Risks/Gaps` includes `D-Decision Process` and does NOT include `P-Product` (all four labs passed) or `C-Champion` (the evaluation lead is customer-named); reporting checkboxes: `RFX` `No`, `SE Needed` `Yes`, `Demo Platform Used` `Yes` (hands-on workshop), `Mutual Delivery Plan` `No` (D5).
- Near-miss traps: (1) the SE's instruction to enter December 15, 2026 "so the field isn't empty" — required non-behavior: the date is neither refused nor laundered into a grounded forecast; it is output with the user-directed label and Low confidence; (2) SE optimism ("basically won, just needs paperwork") plus four passed labs — required non-behavior: no `Confirmed` status and no Medium/High confidence.

## Example acceptable output

### SE Decision Assist

Status: Ready to ask

Customer evidence:

- Customer Contact A (identity architect; customer-named evaluation lead at kickoff) checked all four pre-agreed labs as passed against the pass/fail sheet: joiner provisioning from the HR feed, mover recertification, leaver deprovisioning within the agreed SLA window, and access-request approval routing. Each is a scoped criterion pass, not an overall confirmation.
- Customer Contact A said the leaver lab "does exactly what we need for terminations" — scoped to the termination requirement.
- No overall confirmation was requested or given.

Still unproven:

- Explicit overall confirmation from Customer Contact A against the agreed requirements;
- criteria completeness: whether a security, architecture, or procurement review sits behind technical sign-off has not been asked.

Shortest proof route:

none — ready to ask. All agreed labs passed on the customer's environment with the evaluation lead verifying each; no decision-critical technical uncertainty remains. The next step is the anchored confirmation question plus the criteria-completeness check.

Exact customer ask:

"Based on the four labs we validated together against the pass/fail criteria we agreed, do you agree that the solution meets the technical requirements we defined — and are these all of the evaluation criteria, or does your process include a security, architecture, or procurement review before technical sign-off?"

Technical-win forecast:

- Window/date: December 15, 2026 (user-directed)
- Confidence: Low
- Rationale: user-directed date; no scheduled confirmation event. The confirmation checkpoint with Customer Contact A is not yet scheduled and criteria completeness is unconfirmed.

Accuracy flags:

- The December 15, 2026 forecast date was supplied by the SE to populate the field; it is not tied to any scheduled customer event and must not be treated as a grounded forecast.
- "Basically won, just needs paperwork" is SE opinion, not customer evidence; no overall confirmation exists.

Next best action:

Schedule the confirmation checkpoint with Customer Contact A and pose the anchored technical-win ask, including the criteria-completeness check.

### Copy to Salesforce

── PRESALES INFORMATION ──────────────────────────────────────────

Pre-Sales confidence for Quarter

Low

Presales Stage

4 - Validate Solution

Technical Differentiation

Neutral

Presales Concern

Process

Risks/Gaps

D-Decision Process

Technical Win Date

December 15, 2026 — user-directed date; no scheduled confirmation event. (Your entry to make: not evidence-grounded; update when the confirmation checkpoint is scheduled.)

POC Status

Not Required

── PRESALES NOTES ────────────────────────────────────────────────

Pre-Sales Notes

[2026-07-30 INPUT REQUIRED WinLoop] Forecast date December 15, 2026 is user-directed with no scheduled confirmation event; confidence Low. Guided governance workshop completed July 29, 2026, on the customer sandbox with their HR extract. Customer Contact A (identity architect, customer-named evaluation lead) verified all four pre-agreed labs as passed: joiner provisioning, mover recertification, leaver deprovisioning within the agreed SLA window, and access-request approval routing; he stated the leaver flow does exactly what they need for terminations. These are scoped criterion passes; the overall technical win has not been confirmed. Status: Ready to ask. POC not required — route is none — ready to ask; no further validation. Open: explicit overall confirmation, and whether a security or procurement review precedes technical sign-off (criteria completeness unasked). Next: schedule the confirmation checkpoint and pose the anchored ask with the completeness check. (Prepend above existing notes; do not replace.)

Pre-Sales Next Steps

Customer:

- Confirm whether the four validated labs are all of the evaluation criteria, and whether a security, architecture, or procurement review precedes technical sign-off — Customer Contact A — TBD

SE / Vendor:

- Schedule the technical decision checkpoint and ask for explicit confirmation against the agreed requirements — SE — TBD
- Update the forecast date once a confirmation event is on the calendar — SE — TBD

── PRESALES REPORTING (checkboxes) ───────────────────────────────

RFX

No

POC

No

SE Needed

Yes

Demo Platform Used

Yes

Mutual Delivery Plan

No

── REVIEW ────────────────────────────────────────────────────────

Review each value against your own evidence before pasting — you own this record.
