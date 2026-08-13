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
- The end-of-Q3 sign-off target is attributed to the AE/vendor, not presented as a customer-stated decision window. The exact Salesforce forecast date is `INPUT REQUIRED` — no invented date such as September 30, 2026 (U3).
- Forecast confidence is `Low` or `Medium`, never `High`, with a rationale naming the unscheduled confirmation meeting with the IT Director (and the unverified criteria completeness) as the dependency — not SE or AE activity (U4).
- POC Required is exactly `No`; any nuance lives only in the Reason line (D3, D8).
- Salesforce content is four separate blocks; SE Notes opens with the `[YYYY-MM-DD WinLoop debrief]` stamp (any run date acceptable); the layer ends with the review-before-paste line (D5).
- SE Notes state explicitly that the overall technical win is not yet confirmed and name the IT Director as the required confirmer; the note is decision-focused, not a lab-by-lab recap (D7).
- Next steps carry owners and dates or `TBD`, with customer and SE/vendor actions separated, and include scheduling the technical decision checkpoint (D6).

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

Technical Win Forecast Date

INPUT REQUIRED — exact date not established; no customer-stated window (end of Q3 2026 is a vendor target). (Date-picker field: leave unchanged; note carried in SE Notes.)

SE Notes

[2026-07-30 WinLoop debrief] Forecast date INPUT REQUIRED — no scheduled confirmation event; end-of-Q3 2026 is a vendor target, not a customer-stated window. Hands-on validation workshop completed 2026-07-29 (second eval-plan session). All six agreed criteria — SSO federation, SCIM provisioning, MFA step-up, delegated administration, four-hour offboarding, SIEM log streaming — passed the pass/fail conditions agreed at kickoff. A junior systems administrator answered the anchored confirmation question affirmatively; confirmation received from a junior systems administrator — authoritative confirmation from the IT Director (named evaluation lead, absent from the session) still required. Overall technical win not yet confirmed. No further validation recommended; next step is a technical decision checkpoint with the IT Director to ask for explicit confirmation against the six criteria and to verify whether security, architecture, or procurement review precedes technical sign-off.

Next Steps

Customer:

- Confirm a technical decision checkpoint slot with the IT Director — customer team — TBD
- Confirm whether a security, architecture, or procurement review precedes technical sign-off — IT Director — TBD

SE / Vendor:

- Send the workshop results summary against the six agreed criteria to the IT Director ahead of the checkpoint — SE — TBD
- Schedule the technical decision checkpoint and ask for explicit confirmation against the agreed requirements — SE and AE — TBD

POC Required

No

Reason: All six agreed criteria passed a bounded workshop with pre-agreed pass/fail conditions; no technical uncertainty remains that additional proof would resolve — the next step is authoritative confirmation, not more validation.

Review each value against your own evidence before pasting — you own this record.
