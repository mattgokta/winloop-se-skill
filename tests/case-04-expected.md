---
mode: Debrief
status: Validation required
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8]
---

# Case 04 — Justified Bounded POC — Expected Result

## Acceptance summary

- Status is `Validation required` — not `Confirmed` or `Ready to ask`. The IT Director's statement that a passing result "closes the last open criterion" is a conditional commitment recorded as scoped evidence, never treated as a confirmation of the technical win.
- Shortest proof route is `POC`, with the rationale that the lower rungs — documentation, focused live demo, architecture session, and guided workshop — were each tried and failed, and the uncertainty is customer-specific and not reproducible in vendor labs.
- `POC Required` field value is exactly `Yes`, and the output demonstrates the bounded-POC conditions are met by naming: the single proposition (terminate at least 99% of test sessions within 60 seconds of the defined risk signal), the scope (one application, synthetic accounts, customer test environment, agreed ~200-user dataset), the named owners on both sides, the ten-business-day timeline (August 3–14), and the scheduled August 18 exit/decision meeting.
- NEAR-MISS TRAP: the SE line "while we're in there we could also show them the full platform — governance, PAM, device posture" must NOT broaden the POC. The output keeps the POC single-proposition; if the expansion idea is mentioned at all, it is explicitly kept outside the POC scope (for example, as a separate post-decision conversation) and never enters the POC plan, success criteria, or Salesforce Next Steps as part of the POC.
- The workshop result stays scoped: "labs passed" is evidence about the labs only, paired with the agreement that the labs cannot represent the token cache — it is not fit evidence for the open criterion.
- Technical Win Forecast Date is `2026-08-18` (or equivalently "August 18, 2026"), defensible because it is grounded in the scheduled technical decision meeting; no other date is invented.
- Forecast Confidence is `Medium` or `High` (at least Medium), with a rationale tied to the scheduled decision meeting, the customer-stated criteria completeness ("last open criterion"), and the POC result as the remaining dependency — not to SE activity.
- The exact customer ask is a conditional confirmation question anchored to the agreed POC success criterion and the August 18 decision (for example: "If the POC shows at least 99% ... within 60 seconds, will you confirm at the August 18 meeting that the solution meets the technical requirements you defined?").
- Salesforce content is returned as four separate blocks; SE Notes carries the `[YYYY-MM-DD WinLoop debrief]` stamp (any run date is acceptable); Next Steps separate customer from SE/vendor actions with owners and dates; the layer ends with the review-before-paste line.
- SE recollection ("we have genuinely tried everything", the expansion idea) is kept separate from customer evidence; SE Notes contain decision movement, not a rundown of everything demoed since May.

## Example acceptable output

### SE Decision Assist

Status: Validation required

Customer evidence:

- IT Director (customer-named technical decision owner) stated that session termination in the legacy claims application, proven in the customer's own environment, is a mandatory selection criterion and that no vendor will be selected without it.
- IT Director stated that a passing POC result closes the last open criterion and that he will give the technical decision at the August 18 meeting. This is a conditional commitment tied to the agreed success criterion, not confirmation of the technical win.
- Identity Architect and Application Owner accepted named POC ownership (test harness and pass/fail measurement; environment and synthetic accounts).
- Guided workshop labs passed two weeks ago — scoped: all parties agreed the labs cannot represent the homegrown token cache, so this does not resolve the open criterion.

Still unproven:

- Termination of at least 99% of test sessions in the legacy claims application within 60 seconds of the defined risk signal, under the customer's proxy chain and segmented, throttled test network.

Shortest proof route:

POC. Documentation, a focused live demo, an architecture session, and a guided workshop have each been tried and did not resolve this customer-specific, non-lab-reproducible uncertainty, so the bounded POC is the lowest remaining rung. Success condition: at least 99% of test sessions terminated within 60 seconds of the defined risk signal; per the IT Director, a pass closes the final criterion. Keep the POC to this single proposition — the platform-expansion idea (governance, PAM, device posture) is an SE initiative, not a customer requirement, and belongs in a separate conversation after the technical decision, not inside the POC.

Exact customer ask:

"If the POC shows at least 99% of test sessions in the claims application terminated within 60 seconds of the defined risk signal, will you confirm at the August 18 meeting that the solution meets the technical requirements you defined for this evaluation?"

Technical-win forecast:

- Window/date: 2026-08-18 (scheduled technical decision meeting)
- Confidence: Medium
- Rationale: the decision meeting is scheduled with the technical decision owner, and the customer has stated this is the last open criterion; confirmation still depends on the POC result and on the environment and accounts being ready by August 1.

Accuracy flags:

- "The one thing still open" / "last open criterion" — the closed status of all other criteria rests on SE recollection corroborated by the IT Director's statement; confirm the full criteria list, including any security, architecture, or procurement review, at or before the August 18 meeting.

Next best action:

Send a one-page POC charter restating the single proposition, scope, owners, dates, and the August 18 exit decision, and obtain written customer acknowledgment before the environment handoff on August 1.

### Copy to Salesforce

Technical Win Forecast Date

2026-08-18 (grounded in the scheduled technical decision meeting)

SE Notes

[2026-07-30 WinLoop debrief] POC scoping call July 29 with IT Director (technical decision owner), Identity Architect, and Application Owner. One mandatory selection criterion remains open: session termination in the legacy claims application under the customer's production-like network constraints; the session behavior is customer-specific and not reproducible in vendor labs, and documentation, a focused demo, an architecture session, and a guided workshop have not resolved it. Agreed bounded POC: single proposition — terminate at least 99% of test sessions within 60 seconds of the defined risk signal — scoped to one application, synthetic accounts, the customer test environment, and the agreed ~200-user dataset; ten business days, August 3–14, with named owners on both sides. IT Director stated a passing result closes the last open criterion, with the technical decision at the scheduled August 18 meeting. No overall technical win yet; status: validation required.

Next Steps

Customer:

- Stand up the test environment and synthetic accounts — Application Owner — 2026-08-01
- Run the test harness and own pass/fail measurement during the POC — Identity Architect — 2026-08-03 to 2026-08-14
- Hold the technical decision meeting and give explicit confirmation against the agreed criterion — IT Director — 2026-08-18

SE / Vendor:

- Send the POC charter (proposition, scope, owners, dates, exit decision) for written acknowledgment — SE — 2026-07-31
- Configure the integration and termination policy in the customer test environment — SE — 2026-08-03
- Present POC results at the decision meeting and pose the technical-win ask against the agreed requirements — SE — 2026-08-18

POC Required

Yes

Reason: The remaining uncertainty is customer-specific and cannot be resolved by lower proof rungs, which were exhausted; the POC is bounded by a single agreed proposition, explicit scope, named owners, a ten-business-day timeline, and a scheduled exit decision on August 18.

Review each value against your own evidence before pasting — you own this record.
