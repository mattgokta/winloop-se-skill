---
mode: Debrief
status: Ready to ask
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8]
---

# Case 02 — Three Criteria Confirmed, No Overall Ask — Expected Result

## Acceptance summary

- Mode is Debrief; both layers are present (SE Decision Assist, then Copy to Salesforce).
- Status is exactly `Ready to ask` — not `Confirmed`, not `Validation required`.
- Near-miss trap: the SE-authored line "honestly we clearly have the technical win here" is SE opinion. It must not produce `Confirmed`, must not be presented as customer evidence, and must not appear in Salesforce text as a customer statement. Customer Contact A's "this is looking really good" remains a customer signal, never a confirmation. Any output that declares the overall technical win from either line fails.
- Each of the three agreed criteria — SSO coexistence during the migration window, lifecycle automation from the two HR sources, delegated admin model for regional helpdesks — is recorded as a separately scoped confirmation attributed to the IT Director, with the authority basis stated (customer-named technical decision owner). No confirmation is generalized beyond its criterion.
- The criteria-completeness check appears (under `Still unproven`, in the exact ask, or in next steps): the customer never said the three criteria are the complete evaluation set, so the output must probe completeness and whether a security, architecture, or procurement review precedes technical sign-off.
- Shortest proof route is `none — ready to ask`. Recommending documentation, another demo, a workshop, or a POC fails — validation of the known criteria is complete.
- The exact customer ask names the three criteria and ties them to the overall technical-win confirmation.
- Forecast Window/date is August 12, 2026, preserved exactly — it is grounded in the scheduled decision review with the technical decision owner. No vaguer window, no different date. The `Technical Win Date` field carries this same date.
- Forecast Confidence is `Medium`, not `High` and not `Low`. Reasoning the judge must see reflected: the decision model grants `High` only when the confirmation meeting is scheduled, stakeholders are identified, validation is complete, AND the criteria-completeness check has been passed. The first three conditions hold here, but the completeness check has not been passed — there is no customer statement that the three criteria are the full set, and the security/architecture/procurement question is unanswered — so the completeness check is the named remaining dependency and Confidence is `Medium`. An output granting `High` fails; `Low` is also wrong given the scheduled confirmation event with identified stakeholders.
- The forecast Rationale names the customer decision event (the August 12 decision review) and the completeness dependency, not SE activity.
- POC Status is exactly `Not Required` and the POC checkbox is `No` — both derived from the chosen `none — ready to ask` route (a rung below POC), never judged independently; any nuance lives in Pre-Sales Notes, not inside the field values.
- The input declares no org field set, so Salesforce content follows the canonical Presales & Services Details schema: the three banner groups (Presales Information / Presales Notes / Presales Reporting checkboxes) with every contract field present in the contract's order, each value independently copyable; Pre-Sales Notes begins with the `[YYYY-MM-DD <initials> WinLoop]` stamp (any run date acceptable; `INPUT REQUIRED` in place of the initials is acceptable when no initials source exists); the layer ends with the review-before-paste line.
- Pre-Sales Next Steps separate customer actions from SE/vendor actions, each with owner and date or `TBD`.
- Pre-Sales Notes are decision-focused (status, scoped confirmations with roles, the completeness gap, the scheduled decision event), not a feature-by-feature recap.

## Example acceptable output

### SE Decision Assist

Status: Ready to ask

Customer evidence:

- IT Director (customer-named technical decision owner) confirmed at the July 21 demo, after the second fallback walkthrough, that the coexistence approach "covers what we need for the migration window." Scoped to the SSO coexistence criterion only.
- IT Director confirmed at the July 28 workshop that lifecycle automation from both HR feeds, including the rehire edge case, "meets the lifecycle requirement we defined." Scoped to the lifecycle criterion only.
- IT Director confirmed the delegated admin build-out: "that's exactly the admin model we asked for." Scoped to the delegated administration criterion only.
- Customer Contact A (identity engineer): "this is looking really good" — customer signal, not confirmation.

Still unproven:

- No open gaps against the three agreed criteria.
- Criteria-list completeness is not established: the customer has not stated that these three criteria are the complete evaluation set, and there is no evidence on whether a security, architecture, or procurement review precedes technical sign-off.

Shortest proof route:

none — ready to ask. Per-criterion validation is complete; the remaining step is the explicit overall confirmation, with the criteria-completeness check embedded, at the August 12, 2026 decision review.

Exact customer ask:

"We've now validated the three criteria we agreed in June — SSO coexistence through the migration window, lifecycle automation from both HR sources, and the delegated admin model for the regional helpdesks. Do you confirm the solution meets your technical requirements for this initiative — and are these all of your evaluation criteria, or does your process also include a security, architecture, or procurement review before technical sign-off?"

Technical-win forecast:

- Window/date: August 12, 2026 — scheduled decision review with the IT Director
- Confidence: Medium
- Rationale: the confirmation event is scheduled with the technical decision owner and per-criterion validation is complete, but the criteria-completeness check has not been passed — no customer statement that the three criteria are the full evaluation set, and the security/architecture/procurement review question is unanswered — so High confidence is not available.

Accuracy flags:

- The SE-authored conclusion in the notes ("honestly we clearly have the technical win here") is SE stated, not customer evidence; it does not affect status.
- Criterion quotes come from SE meeting notes rather than a transcript; treat them as faithful attributed paraphrases unless verified against the recording.

Next best action:

At the August 12, 2026 decision review, pose the exact technical-win ask above — the three criteria plus the completeness and security/architecture/procurement check — to the IT Director.

### Copy to Salesforce

── PRESALES INFORMATION ──────────────────────────────────────────

Pre-Sales confidence for Quarter

Medium

Presales Stage

4 - Validate Solution

Technical Differentiation

Neutral

Presales Concern

Process

Risks/Gaps

D-Decision Process

Technical Win Date

August 12, 2026

POC Status

Not Required

── PRESALES NOTES ────────────────────────────────────────────────

Pre-Sales Notes

[2026-07-30 INPUT REQUIRED WinLoop] Status: Ready to ask — no overall confirmation yet. Demo July 21 and hands-on workshop July 28, 2026 covered the three criteria agreed in June. IT Director (customer-named technical decision owner) confirmed each criterion separately: the coexistence approach "covers what we need for the migration window" (SSO coexistence); lifecycle automation from both HR feeds, including the rehire case, "meets the lifecycle requirement we defined"; the delegated admin build-out is "exactly the admin model we asked for." These are scoped per-criterion confirmations; the overall technical-win question was not asked. Open item: criteria-list completeness — the customer has not stated the three criteria are the complete evaluation set, and it is unknown whether a security, architecture, or procurement review precedes technical sign-off. Decision review scheduled August 12, 2026; the explicit overall ask, including the completeness check, will be posed there. POC not required — no further technical validation is planned before the review.

Pre-Sales Next Steps

Customer:

- Walk the three agreed criteria with the internal team and give a formal technical answer at the decision review — IT Director — August 12, 2026

SE / Vendor:

- Pose the explicit technical-win ask, including the criteria-completeness and security/architecture/procurement check, at the decision review — SE — August 12, 2026
- Confirm the decision-review invite includes every stakeholder needed for an authoritative answer — SE — TBD

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
