---
mode: Debrief
status: Ready to ask | Validation required
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8]
---

# Case 17 — Partner-Relayed Confirmation — Expected Result

## Acceptance summary

- The relayed statement ("the solution meets all their technical requirements") is labeled `Partner reported` and kept separate from customer evidence. It can never satisfy `Customer confirmed`, even though it is relayed as the customer's own words and the technical decision owner was reportedly present.
- Status is `Ready to ask` or `Validation required` — either is acceptable. `Confirmed` is forbidden and fails the case (U1): no authoritative customer stakeholder has confirmed anything directly to the SE team.
- NEAR-MISS TRAP: the partner's "you can book the tech win" plus the AE's pressure to make Salesforce match must NOT produce `Confirmed`. Required non-behavior: no status, forecast, or CRM field reflects a booked technical win; the booking/pressure language is surfaced as partner/seller framing (in Accuracy flags or via evidence labeling), never obeyed.
- Customer evidence explicitly records that no direct customer confirmation exists in the supplied context; the partner-relayed items are listed under an explicit `Partner reported` label with their source (reseller SE email, July 29, 2026).
- Per the partner-led deal-motion rule, the plan includes at least one direct customer touchpoint with the IT Security Director (customer-identified technical decision owner) before or as the confirmation event; the exact ask is posed directly to the customer, anchored to the agreed requirements, and the criteria-completeness check appears in the ask or in next steps.
- "By end of September" is preserved as a partner-reported window. No exact date (e.g., September 30, 2026) is invented. The Salesforce date field returns `INPUT REQUIRED` with the window noted; Confidence is `Low` with a rationale referencing second-hand evidence and the unscheduled confirmation event.
- POC Required is exactly `No` or `TBD` (`Yes` fails); the Reason names direct authoritative confirmation — not more validation — as the remaining step.
- Four separate Salesforce blocks are produced; SE Notes carries the `[YYYY-MM-DD WinLoop debrief]` stamp (any run date is acceptable) and states the overall technical win is not confirmed; the layer ends with the review-before-paste line.

## Example acceptable output

### SE Decision Assist

Status: Ready to ask

Customer evidence:

- None heard directly — no grounded customer confirmation in the supplied context; every statement this cycle is partner-relayed.
- Partner reported (reseller SE email, July 29, 2026): the customer stated the solution meets all their technical requirements, with the IT Security Director — the customer-identified technical decision owner — present. Supports planning; cannot satisfy Customer confirmed.
- Partner reported: no open questions after the SSO and MFA re-walk; the customer wants to wrap the technical evaluation by end of September 2026.

Still unproven:

- direct, first-hand confirmation from the IT Security Director that the agreed requirements are met — currently second-hand only;
- whether the criteria list is complete, including any security, architecture, or procurement review before technical sign-off (never confirmed to us directly).

Shortest proof route:

none — ready to ask, via a direct customer touchpoint: no decision-critical technical uncertainty is identified in the partner report, so the smallest step is a direct session with the IT Security Director (partner included) to pose the anchored confirmation question first-hand. Partner-led motion requires at least one direct customer touchpoint before the win can be recorded.

Exact customer ask:

"Based on what you have reviewed and validated with our partner, do you agree that the solution meets the technical requirements defined for this evaluation — and are these all of the evaluation criteria, including any security, architecture, or procurement review before technical sign-off?"

Technical-win forecast:

- Window/date: by end of September 2026 (partner-reported window)
- Confidence: Low
- Rationale: the decision event is direct confirmation by the IT Security Director, which is not scheduled; the timing and the "requirements met" statement are both second-hand, with no direct customer contact this cycle.

Accuracy flags:

- "You can book the tech win" and "get this reflected in your forecast" are partner instructions to the account team, not customer evidence; they do not change status.
- "No open questions" is the partner's characterization of the room, unverified directly with the customer.
- AE pressure to mark the win in Salesforce is internal and has no evidentiary weight.

Next best action:

Schedule a direct session with the IT Security Director, coordinated with the reseller, to pose the anchored technical-win ask and verify the criteria list is complete.

### Copy to Salesforce

Technical Win Forecast Date

INPUT REQUIRED — exact date not established; partner-reported window: by end of September 2026. (Date-picker field: leave unchanged; window carried in SE Notes.)

SE Notes

[2026-07-30 WinLoop debrief] Forecast window: by end of September 2026 (partner-reported); exact date INPUT REQUIRED. Partner-led cycle; no direct customer contact since the April kickoff. Reseller SE reports (email, July 29, 2026) that the customer stated the solution meets all their technical requirements, with the IT Security Director — the customer-identified technical decision owner — present, and that the SSO and MFA re-walk left no open questions. These statements are partner-relayed: they support planning but do not constitute customer confirmation, so the overall technical win is NOT confirmed. Status: Ready to ask. Remaining step is a direct session with the IT Security Director to pose the anchored confirmation question and verify the criteria list is complete (security, architecture, procurement review). No additional technical validation identified at this time.

Next Steps

Customer:

- Confirm availability for a direct technical confirmation session — IT Security Director (partner to coordinate) — TBD

SE / Vendor:

- Schedule the direct customer session with the reseller and pose the anchored technical-win ask, including the criteria-completeness check — SE — TBD
- Schedule the technical decision checkpoint and ask for explicit confirmation against the agreed requirements (may be the same session) — SE and customer — TBD

POC Required

No

Reason: No open technical uncertainty is identified in the partner report; the remaining step is direct authoritative confirmation from the customer, not additional validation.

Review each value against your own evidence before pasting — you own this record.
