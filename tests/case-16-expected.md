---
mode: Debrief
status: Validation required (both accounts)
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8]
---

# Case 16 — Weekly Debrief Across Two Accounts — Expected Result

## Acceptance summary

- Mode is Debrief (explicit request), and both accounts are processed in one run (U9).
- Two complete, separately labeled outputs are produced — one for Account Alpha, one for Account Beta — each with its own SE Decision Assist layer and its own Copy to Salesforce layer. A single merged output fails U9. Because the account split is explicit in the notes, replying only with a which-account question instead of the two outputs also fails.
- NEAR-MISS TRAP: Alpha's auto-provisioning confirmation is the final sentence of the Alpha section, sitting directly above Beta's header. Required non-behavior: that confirmation — and any other Alpha material (workshop, POS integration, Customer Contact A, IT Director) — never appears in Beta's output, and none of Beta's material (PAM interest, vaulting/session capture, audit findings, IT Ops Manager) appears in Alpha's output (U9, U2).
- Alpha status is `Validation required`. The confirmation stays scoped to the store-associate provisioning criterion, attributed to Customer Contact A, with the note that the customer-identified technical decision owner (the IT Director) was absent; no overall technical win is declared and `Ready to ask` fails while criteria remain open (U1, U2).
- Alpha's decision-critical gaps include approval workflows, the POS vendor integration, and the explicitly incomplete criteria list (security team's additions outstanding) (D1).
- Alpha's proof route is the bounded half-day workshop with pass/fail criteria agreed after the complete criteria list arrives; Alpha `POC Required` is exactly `No`, with the workshop named in the Reason line (D2, D3, D8).
- Beta status is `Validation required` (early stage). Beta's Customer evidence contains no confirmations — only pains/requirements (shared admin credentials, no session recording, audit finding) and the request to see vaulting and session capture, labeled as signals or requirements, never as confirmation (U1, U2, U5).
- Beta's proof route is a low rung — a focused live demonstration of vaulting and session capture tied to eliciting an agreed criteria list; Beta `POC Required` is `TBD` or `No` — never `Yes` — with the Reason naming the criteria gap and/or the demo-first route (D2, D3, D8).
- Neither forecast invents a window or date: Window/date is `Unknown` and Confidence is `Low` in both SE Decision Assist blocks (Medium is acceptable for Alpha only if the rationale names the unlocked workshop, the incomplete criteria list, and the unscheduled decision checkpoint as dependencies). "Week of Aug 10" remains a workshop-scheduling target and never becomes a Technical Win Forecast Date (U3, U4).
- Each account's Salesforce layer contains the four blocks, its own `[YYYY-MM-DD WinLoop debrief]` stamp at the start of SE Notes (any run date acceptable), and its own review-before-paste line; each Technical Win Forecast Date block returns `INPUT REQUIRED` with the date-picker guidance rather than an invented date (D5, U3).
- Next Steps separate customer from SE/vendor actions with owners and dates or `TBD`, and Alpha's include the technical-decision checkpoint step with the IT Director (D6).
- SE Notes stay decision-focused for both accounts — no feature-by-feature recap of either meeting (D7).
- Each ask is anchored: Alpha's is a conditional technical-win ask referencing the workshop validation and the IT Director's confirmation; Beta's elicits the evaluation criteria and decision owner rather than posing a premature win ask (D4).

## Example acceptable output

## Account Alpha

### SE Decision Assist

Status: Validation required

Customer evidence:

- Customer Contact A (evaluation contact; not the technical decision owner — the customer identified the IT Director as decision owner, and he was absent) confirmed that the demonstrated attribute-based auto-provisioning covers the store-associate provisioning requirement. This is evidence for one decision criterion, not confirmation of the overall technical win.
- Customer Contact A identified the IT Director as owner of the technical decision (customer-stated decision-process fact).

Still unproven:

- approval workflows against the customer's requirement;
- the POS vendor integration;
- the security team's additional criteria — the evaluation criteria list is explicitly incomplete;
- overall confirmation from the IT Director, who has not attended any session.

Shortest proof route:

Workshop. A bounded half-day workshop covering approval workflows and the POS integration, with labs and pass/fail criteria agreed once the customer delivers the complete criteria list; success condition is a pass on the agreed criteria followed by a decision checkpoint that includes the IT Director.

Exact customer ask:

"Once we receive your complete evaluation criteria and validate approval workflows and the POS integration in the workshop against agreed pass/fail criteria, would the IT Director be comfortable confirming that the solution meets your technical requirements — and does your process include a security, architecture, or procurement review before technical sign-off?"

Technical-win forecast:

- Window/date: Unknown
- Confidence: Low
- Rationale: the workshop is not locked (the week of Aug 10 is a scheduling target, not a decision event), the criteria list is incomplete, and no technical decision checkpoint is scheduled.

Accuracy flags:

- The provisioning confirmation is an SE-recalled paraphrase ("her words more or less"), not a verbatim transcript quote; treat it as an attributed paraphrase.

Next best action:

Obtain the complete evaluation criteria list, then lock the half-day workshop with agreed pass/fail criteria and a decision checkpoint that includes the IT Director.

### Copy to Salesforce

Technical Win Forecast Date

INPUT REQUIRED — exact date not established; no grounded forecast window stated. (Date-picker field: leave unchanged.)

SE Notes

[2026-07-30 WinLoop debrief] Technical win forecast: no grounded window or date; exact date INPUT REQUIRED. Follow-up demo this week with Customer Contact A and team, focused on lifecycle auto-provisioning for store associates. Customer Contact A confirmed the demonstrated attribute-based auto-provisioning covers the store-associate provisioning requirement — scoped to that single criterion; she is not the technical decision owner (customer identified the IT Director, who was absent). Overall technical win not confirmed. Decision-critical open items: approval workflows, POS vendor integration, and the security team's additional criteria — the evaluation criteria list is incomplete until the customer sends it. Preferred route: bounded half-day workshop (target week of Aug 10, not locked) with agreed pass/fail criteria, followed by a technical decision checkpoint with the IT Director.

Next Steps

Customer:

- Send the complete evaluation criteria list, including the security team's additions — Customer Contact A — TBD
- Confirm workshop date and attendees for the week of Aug 10 — Customer Contact A — TBD

SE / Vendor:

- Define workshop labs and pass/fail criteria for approval workflows and the POS integration — SE — TBD
- Schedule the technical decision checkpoint with the IT Director and ask for explicit confirmation against the agreed requirements — SE and customer — TBD

POC Required

No

Reason: The remaining criteria can be evaluated through a bounded half-day workshop with agreed labs and pass/fail criteria.

Review each value against your own evidence before pasting — you own this record.

## Account Beta

### SE Decision Assist

Status: Validation required

Customer evidence:

- IT Ops Manager described shared admin credentials on warehouse servers, missing session recording, and a recent audit finding — customer requirements/pain, not a confirmation.
- IT Ops Manager asked to see how vaulting and session capture work — customer-requested proof (customer signal), not a confirmation. He stated they are "just starting to look at this space."

Still unproven:

- no evaluation criteria are agreed and no decision process or technical decision owner is identified;
- whether vaulting and session capture meet the customer's (not yet defined) requirements;
- whether a security, architecture, or procurement review applies.

Shortest proof route:

Focused live demonstration. A focused live demo of vaulting and session capture mapped to the stated pains, used to elicit and agree a written evaluation-criteria list; success condition is an agreed criteria list with owners and an identified technical decision owner.

Exact customer ask:

"Which specific requirements — for example around credential vaulting, session recording, and audit evidence — would your team need to see proven in this evaluation, and who on your side owns the technical decision?"

Technical-win forecast:

- Window/date: Unknown
- Confidence: Low
- Rationale: first discovery call; no criteria, decision owner, decision event, or next meeting exists, and the customer paused until after their team offsite.

Accuracy flags:

- None.

Next best action:

Book the focused vaulting and session-capture demo for after the customer's offsite and use it to agree evaluation criteria and identify the technical decision owner.

### Copy to Salesforce

Technical Win Forecast Date

INPUT REQUIRED — exact date not established; no forecast window stated. (Date-picker field: leave unchanged.)

SE Notes

[2026-07-30 WinLoop debrief] Technical win forecast: none — no window or date; exact date INPUT REQUIRED. First discovery call this week with the IT Ops Manager and a sysadmin. Customer-stated pains: shared admin credentials on warehouse servers, no session recording, prior audit finding. Customer asked to see vaulting and session capture. No evaluation criteria agreed, no decision process or technical decision owner identified, and no overall technical-win evidence; status: validation required, early stage. Next proof step: focused live demonstration of vaulting and session capture mapped to the stated pains, scheduled after the customer's team offsite and used to agree a written criteria list and identify the decision owner.

Next Steps

Customer:

- Reconnect after the team offsite and confirm demo timing — IT Ops Manager — TBD
- Identify the technical decision owner and evaluation process — IT Ops Manager — TBD

SE / Vendor:

- Prepare and deliver a focused vaulting and session-capture demo mapped to the stated pains — SE — TBD
- Draft a candidate evaluation-criteria list from the stated pains for customer review — SE — TBD
- Schedule the technical decision checkpoint and ask for explicit confirmation against the agreed requirements — SE and customer — TBD

POC Required

TBD

Reason: Evaluation criteria and success conditions are not yet established; a focused live demo is the next proof step and should precede any POC discussion.

Review each value against your own evidence before pasting — you own this record.
