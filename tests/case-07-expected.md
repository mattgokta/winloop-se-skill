---
mode: Debrief
status: Ready to ask
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8]
---

# Case 07 — Workshop Passed, Junior Admin Yes, Absent Decision Owner — Expected Result

## Acceptance summary

- Status is exactly `Ready to ask`. `Confirmed` is not output anywhere, in any section or Salesforce block (U1 gate).
- NEAR-MISS TRAP: the AE's closing note "TECH WIN CONFIRMED!!" is seller confidence. It must be classified as an SE/vendor statement (SE stated), must never raise the status to `Confirmed`, and must never enter Salesforce text as a confirmed win. Treating it as evidence of any kind fails the case.
- The junior systems administrator's "Yes — honestly this meets all our technical needs" is recorded as scoped evidence using the decision model's form: confirmation received from the junior systems administrator; authoritative confirmation from the IT Director (the named evaluation lead / technical decision owner) still required. The output states that the speaker lacks identified evaluation authority.
- The six agreed criteria passing their pre-agreed pass/fail conditions are recorded as per-criterion evidence, not generalized into the overall win (U2).
- Shortest proof route is `none — ready to ask`: no additional demo, workshop rerun, or POC is recommended, because no decision-critical technical uncertainty remains — the remaining step is the confirmation question itself, posed to the IT Director (D2).
- The exact customer ask is anchored to the six agreed criteria and directed at the IT Director, and the criteria-completeness check (whether a security, architecture, or procurement review precedes technical sign-off) appears in the ask or in the next steps (D1, D4).
- The end-of-Q3 sign-off target is attributed to the AE/vendor, not presented as a customer-stated decision window. The Salesforce `Technical Win Date` field is `INPUT REQUIRED` with the date-picker left-unchanged guidance — no invented date such as September 30, 2026 (U3).
- Forecast confidence is `Low` or `Medium`, never `High`, with a rationale naming the unscheduled confirmation meeting with the IT Director (and the unverified criteria completeness) as the dependency — not SE or AE activity (U4).
- The input declares no org Salesforce field set, so the org-schema precedence rule is NOT triggered and the canonical **Presales & Services Details** template applies: the three banner groups — Presales Information, Presales Notes, Presales Reporting (checkboxes) — with every contract field present in the contract's order, each value independently copyable, ending with the review-before-paste line (D5).
- Derived Presales Information values: `Pre-Sales confidence for Quarter` equals the forecast Confidence (`Low` in the example; never `High`); `Presales Stage` is `4 - Validate Solution` (derived from `Ready to ask`); `Technical Differentiation` is `Neutral` (no competitive signal in the evidence); `Presales Concern` is `Process` (the decision-critical gap is the unscheduled authoritative confirmation and the unverified approval chain, not a capability gap); `Risks/Gaps` includes `D-Decision Process` and does NOT include `P-Product` (all six criteria passed) or `C-Champion` (the IT Director is the named evaluation lead) (D5).
- `POC Status` is exactly `Not Required` and the `POC` checkbox is exactly `No` — both derived from the `none — ready to ask` route, never judged independently; the recommended alternative (no further validation; the confirmation checkpoint itself) is named in Pre-Sales Notes, and no explanatory text lives inside either enum value (D3, D8).
- Reporting checkboxes are derived, not defaulted: `RFX` is `No` (no RFP/RFI motion), `SE Needed` is `Yes`, `Demo Platform Used` is `Yes` (hands-on workshop in the proof route), `Mutual Delivery Plan` is `No` (D5).
- Pre-Sales Notes opens with the `[YYYY-MM-DD <initials> WinLoop]` stamp — initials from `team.json` when present, otherwise `INPUT REQUIRED` in their place; any run date acceptable (D5).
- Pre-Sales Notes state explicitly that the overall technical win is not yet confirmed and name the IT Director as the required confirmer; the note is decision-focused, not a lab-by-lab recap (D7).
- Pre-Sales Next Steps carry owners and dates or `TBD`, with customer and SE/vendor actions separated, and include scheduling the technical decision checkpoint (D6).

## Example acceptable output

### SE Decision Assist

Status: Ready to ask

Customer evidence:

- Junior systems administrator (workshop attendee; no evaluation authority identified) answered the anchored confirmation question: "Yes — honestly this meets all our technical needs." Confirmation received from a junior systems administrator; authoritative confirmation from the IT Director (named evaluation lead and technical decision owner, absent from the session) still required.
- All six agreed criteria — SSO federation to the legacy portal, SCIM provisioning for the HR-driven app set, MFA step-up on the payments app, delegated administration for regional teams, four-hour offboarding, SIEM log streaming — passed the pass/fail conditions agreed at kickoff. Evidence per criterion, not the overall win.
- IAM Engineer said the delegated admin model is "cleaner than what we do today" — a scoped positive signal on the delegated-administration criterion.

Still unproven:

- None known among the six agreed criteria. The decision-critical gaps are authoritative confirmation from the IT Director and criteria completeness: whether a security, architecture, or procurement review precedes technical sign-off has not been established.

Shortest proof route:

none — ready to ask. Every agreed criterion passed its pre-agreed pass/fail condition in a bounded workshop; the remaining step is the confirmation question itself, posed to the IT Director in a scheduled checkpoint.

Exact customer ask:

"Based on the workshop results against the six criteria you set at kickoff, do you agree that the solution meets the technical requirements defined for this evaluation — and are these all of the evaluation criteria, or does your process include a security, architecture, or procurement review before technical sign-off?"

Technical-win forecast:

- Window/date: Unknown — end of Q3 2026 is the AE's target, not a customer-stated decision window
- Confidence: Low
- Rationale: the decision event is the confirmation meeting with the IT Director, which is not scheduled, and criteria completeness is unverified

Accuracy flags:

- The AE's note "TECH WIN CONFIRMED!!" is seller confidence (SE/vendor stated), not customer evidence; it must not be carried into Salesforce as a win claim.
- The licensing-tier question was routed to the AE; commercial, not decision-critical technical.

Next best action:

Schedule the technical decision checkpoint with the IT Director and pose the anchored confirmation question, including the criteria-completeness check.

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

INPUT REQUIRED — exact date not established; no customer-stated window (end of Q3 2026 is a vendor target). (Date-picker field: leave unchanged; note carried in Pre-Sales Notes.)

POC Status

Not Required

── PRESALES NOTES ────────────────────────────────────────────────

Pre-Sales Notes

[2026-07-30 INPUT REQUIRED WinLoop] Forecast date INPUT REQUIRED — no scheduled confirmation event; end-of-Q3 2026 is a vendor target, not a customer-stated window. Hands-on validation workshop completed 2026-07-29 (second eval-plan session). All six agreed criteria — SSO federation, SCIM provisioning, MFA step-up, delegated administration, four-hour offboarding, SIEM log streaming — passed the pass/fail conditions agreed at kickoff. A junior systems administrator answered the anchored confirmation question affirmatively; confirmation received from a junior systems administrator — authoritative confirmation from the IT Director (named evaluation lead, absent from the session) still required. Overall technical win not yet confirmed. POC not required; route is none — ready to ask: no further validation recommended; next step is a technical decision checkpoint with the IT Director to ask for explicit confirmation against the six criteria and to verify whether security, architecture, or procurement review precedes technical sign-off. (Prepend above existing notes; do not replace.)

Pre-Sales Next Steps

Customer:

- Confirm a technical decision checkpoint slot with the IT Director — customer team — TBD
- Confirm whether a security, architecture, or procurement review precedes technical sign-off — IT Director — TBD

SE / Vendor:

- Send the workshop results summary against the six agreed criteria to the IT Director ahead of the checkpoint — SE — TBD
- Schedule the technical decision checkpoint and ask for explicit confirmation against the agreed requirements — SE and AE — TBD

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
