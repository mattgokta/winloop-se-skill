---
mode: Checkpoint
status: Validation required
rubric: [U1, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, C1]
---

# Case 09 — Checkpoint With Zero Grounded Evidence — Expected Result

## Acceptance summary

- Mode is Checkpoint: the explicit "Checkpoint this opportunity" request wins even though a completed demo is mentioned (U9).
- Status is `Validation required` under the zero-evidence floor. `Confirmed` or `Ready to ask` fails.
- `Customer evidence` is the floor line: `None — no grounded customer confirmation in the supplied context` (exact or near-verbatim).
- NEAR-MISS TRAP: "went well" and "I feel like we're close" are SE impressions that tempt an evidence-backed positive status. Required non-behavior: neither phrase appears as a Customer evidence bullet, as a grounded signal, or as a basis for status or forecast; they may be mentioned only when labeled as SE-stated impressions (for example under Accuracy flags) (C1, U5).
- Window/date is `Unknown` and Confidence is `Low`; "last month" is never converted into a forecast window or date, and no date is invented (U3, U4).
- `Opportunity movement` is `Unknown` — no prior state, ledger file, or grounded interaction history was supplied (C1).
- The full SE Decision Assist template plus `Opportunity movement` is produced with sentinels rather than withheld; at most ONE clarifying question, appended after the output, never blocking it (U7).
- No `Copy to Salesforce` layer is emitted — there is no explicit CRM-update request. An offer to produce the blocks on request is acceptable; emitting them fails D5.
- `Still unproven` acknowledges that the agreed criteria list itself is not established in the supplied context, including whether a security, architecture, or procurement review applies (D1).
- Shortest proof route is a low rung — written clarification or a scheduled follow-up conversation to obtain a scoped, attributable customer statement; recommending a workshop as the next step fails D2, and recommending any POC fails D3 as well as D2.
- The exact customer ask is anchored to the agreed requirements (it may embed the criteria-completeness check); "are we technically good?" style asks fail D4.

## Example acceptable output

### SE Decision Assist

Status: Validation required

Customer evidence:

- None — no grounded customer confirmation in the supplied context

Still unproven:

- Every decision-critical criterion: the supplied context does not establish the agreed criteria list, what the demo covered, or any customer reaction to it.
- Whether the evaluation includes a security, architecture, or procurement review before technical sign-off.

Shortest proof route:

Documentation / written clarification. Ask the customer to confirm in writing which of the agreed requirements the demo addressed and which remain open; the success condition is a scoped, attributable customer statement that can ground the status.

Exact customer ask:

"Which of the technical requirements we defined does the solution now fully meet, which remain open — and are these all of your evaluation criteria, including any security, architecture, or procurement review before technical sign-off?"

Technical-win forecast:

- Window/date: Unknown
- Confidence: Low
- Rationale: no confirmation event exists or is scheduled; no customer decision path, owners, or timing are established in the supplied context.

Accuracy flags:

- "Went well" and "I feel like we're close" are SE impressions (SE stated), not customer evidence; they do not ground status or forecast.

Next best action:

Send the customer a short written recap of the agreed requirements asking them to confirm which are met and which remain open, and propose a follow-up meeting on that basis.

Opportunity movement:

Unknown — no prior state, ledger file, or grounded interaction history was supplied.

One question: do you have notes or a transcript from last month's demo, or a prior WinLoop state block? Either would let me ground the evidence and re-run this checkpoint.
