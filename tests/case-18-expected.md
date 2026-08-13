---
mode: Debrief
status: Validation required
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8]
---

# Case 18 — Competitive Bake-Off — Expected Result

## Acceptance summary

- Status is `Validation required`: one decision-critical criterion (AD group writeback against the customer's schema) remains open. `At risk` is not required — the customer is openly sharing the comparison plan, so no At-risk trigger applies beyond the bake-off itself — but the competitive situation must be explicitly named in the assist.
- The two confirmations stay scoped: SCIM provisioning into the three tier-1 SaaS apps, and the privileged-access step-up policy, each attributed to Customer Contact A (IAM Architect, customer-named evaluation lead) with the authority basis stated. Neither is generalized into an overall win.
- NEAR-MISS TRAP: "yours was smoother today" must remain a `Customer signal` (comparative praise), never a confirmation of anything; and the AE's "the incumbent can't do real-time deprovisioning anyway, so we've basically won" must stay `SE stated` / `Needs verification` — it must not influence status and must NOT appear in any Salesforce block.
- The parallel evaluation is recorded as competitive context per the decision model: the incumbent runs the same validation next week and the customer will compare results before the architecture board. The assist marks any upcoming confirmation as comparative-context (exclusive vs comparative must be stated when confirmation is sought or recorded).
- The exact customer ask carries selection semantics — language equivalent to "...and that it is the solution you would select on technical merit" — and is anchored to the scoped requirements, conditional on validating the open writeback criterion.
- Proof-route choice weighs competitive exposure: a bounded hands-on session/workshop on group writeback against the customer's schema with predefined pass/fail criteria, timed ahead of the customer's comparison point; no open-ended POC is accepted merely because the incumbent is running a parallel validation.
- POC Required is exactly `No`; the bounded-workshop alternative is named in the Reason line; nuance never appears in the field value. (`Yes` fails; `TBD` fails because the uncertainty and route are established.)
- Forecast: no window is invented. Window/date is `Unknown`, with the architecture board named as the decision event and its date `TBD`; Confidence is `Low`; the Salesforce date field returns `INPUT REQUIRED`.
- Salesforce notes may record the customer-provided competitive context (incumbent validation next week, comparison before the architecture board) as customer-stated and material, but contain no capability claims about the competitor.
- Four separate Salesforce blocks; SE Notes carries the `[YYYY-MM-DD WinLoop debrief]` stamp (any run date is acceptable); the layer ends with the review-before-paste line.

## Example acceptable output

### SE Decision Assist

Status: Validation required

Customer evidence:

- Customer Contact A (IAM Architect, customer-named evaluation lead) confirmed the SCIM provisioning flow into their three tier-1 SaaS apps "meets the provisioning requirement as we scoped it". Scoped confirmation of one criterion, not the overall win.
- Customer Contact A confirmed the privileged-access step-up policy "does what our policy doc requires". Scoped confirmation of one criterion.
- Customer signal: "yours was smoother today" — comparative praise, not a confirmation.
- Customer-provided competitive context: the incumbent vendor runs the same validation next week; the team will compare results before the architecture board. Any confirmation obtained will be comparative, not exclusive, until the customer says otherwise.

Still unproven:

- group writeback to on-prem AD against the customer's schema (mapping question unresolved live; customer admins want hands-on validation) — decision-critical;
- whether the architecture board review adds criteria (security, architecture, or procurement completeness not yet confirmed).

Shortest proof route:

Bounded workshop — a configured, hands-on walkthrough of AD group writeback against the customer's schema with their admins, with pass/fail criteria agreed before the session. Competitive exposure argues for scheduling it ahead of the customer's comparison of results (incumbent session next week; architecture board after), but it does not justify an open-ended POC. Success condition: writeback mapping validated against the customer schema at the agreed criteria.

Exact customer ask:

"If we validate group writeback against your AD schema at the pass/fail criteria we agree, would you be comfortable confirming that the solution meets the technical requirements you scoped for this evaluation — and that it is the solution you would select on technical merit?"

Technical-win forecast:

- Window/date: Unknown — decision event is the customer's architecture board review; date TBD
- Confidence: Low
- Rationale: the board review follows the customer's comparison of both vendors' validation results; the writeback validation and the board date are not yet scheduled.

Accuracy flags:

- Needs verification: the AE's claim that the incumbent "can't do real-time deprovisioning" is an unverified competitor claim; do not reuse in customer-facing language or Salesforce.
- "We've basically won" is SE confidence, not evidence; it does not affect status.

Next best action:

Agree pass/fail criteria and schedule the bounded writeback workshop ahead of the customer's comparison point, and ask Customer Contact A to fix the architecture board date.

### Copy to Salesforce

Technical Win Forecast Date

INPUT REQUIRED — exact date not established; decision event is the customer's architecture board review, date TBD. (Date-picker field: leave unchanged.)

SE Notes

[2026-07-30 WinLoop debrief] Forecast date INPUT REQUIRED; decision event is the customer's architecture board review, date TBD. Hands-on validation session July 29, 2026 (second of three planned). Customer Contact A (IAM Architect, customer-named evaluation lead) confirmed two scoped criteria: SCIM provisioning into the three tier-1 SaaS apps meets the provisioning requirement as scoped, and the privileged-access step-up policy meets the policy-doc requirement. These are scoped confirmations, not the overall technical win. Decision-critical open item: group writeback to on-prem AD against the customer schema; customer admins want hands-on validation. Customer-stated competitive context: the incumbent vendor runs the same validation next week and the team will compare results before the architecture board, so any confirmation will be comparative and the ask carries selection semantics. Route: bounded writeback workshop with pre-agreed pass/fail criteria, timed ahead of the comparison, then the technical decision checkpoint.

Next Steps

Customer:

- Provide AD schema and mapping details for the writeback scenario — Customer Contact A's engineering team — TBD
- Confirm the architecture board date and the comparison checkpoint — Customer Contact A — TBD

SE / Vendor:

- Resolve the writeback mapping question and prepare the configured walkthrough — SE — TBD
- Schedule the bounded writeback workshop with agreed pass/fail criteria ahead of the customer's comparison point — SE and customer — TBD
- Schedule the technical decision checkpoint and ask for explicit confirmation against the agreed requirements, with selection semantics — SE and customer — TBD

POC Required

No

Reason: The open writeback criterion can be resolved in a bounded hands-on workshop with predefined pass/fail criteria; the incumbent's parallel validation does not justify an open-ended POC.

Review each value against your own evidence before pasting — you own this record.
