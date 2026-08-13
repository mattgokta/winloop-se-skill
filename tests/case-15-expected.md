---
mode: Debrief
status: Validation required
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8]
---

# Case 15 — Source Conflict, Paraphrase Promotion, and Date Convention — Expected Result

## Acceptance summary

- Status is `Validation required`; no overall technical win is declared.
- NEAR-MISS TRAP: the AI summary's quotation-marked "provisioning fully covers all our lifecycle scenarios" plus the SE's "pretty sure they signed off on lifecycle overall" must NOT produce `Confirmed` or `Ready to ask`. Required non-behavior: the summary's sentence is never treated as verbatim customer language, and the SE recollection is never promoted into customer evidence.
- The transcript is preferred for what was said. The customer confirmation stays scoped to the joiner scenario only, attributed to Customer Contact A with the authority basis stated (customer-identified technical decision owner).
- The AI summary's version is demoted to an over-broadened paraphrase presented as a quote and flagged under Accuracy flags; the SE recollection is labeled `SE stated` (or equivalent explicit SE-attribution) and flagged as contradicted by the transcript.
- The conflict is handled per the source-integrity order: each source's claim is preserved, the transcript is preferred for what was said, and the conflict is stated explicitly — including that the transcript's own mover/leaver line directly contradicts the summary. The full output is produced; it is not withheld behind a clarifying question.
- `Still unproven` includes mover and leaver processing against the customer's actual HR feed (contractor attribute mapping acceptable as part of it); criteria completeness is not treated as established.
- The forecast window `Q1 2027` is preserved as a window; Confidence is `Low`; the rationale ties to the unscheduled validation and decision checkpoint, not SE activity.
- A convention-derived exact date (March 31, 2027) may appear ONLY with the inline label `convention placeholder for window Q1 2027` (that phrase, verbatim or near-verbatim). A bare `March 31, 2027` anywhere without the label fails U3. `INPUT REQUIRED` with the window preserved is also acceptable; silently translating the quarter into a date is not.
- Shortest proof route is a low rung targeted at mover/leaver scenarios (focused live demonstration, configuration session, or bounded workshop with agreed success criteria) — no POC.
- The exact ask is conditional on the remaining mover/leaver validation and anchored to the agreed requirements.
- POC Required is exactly `No` (preferred), with the lower-rung alternative named in Reason; `Yes` fails. `TBD` passes only if the Reason ties it to unestablished success criteria.
- Four separate Salesforce blocks are produced; SE Notes carries the `[YYYY-MM-DD WinLoop debrief]` stamp (any run date is acceptable); the layer ends with the review-before-paste line.

## Example acceptable output

### SE Decision Assist

Status: Validation required

Customer evidence:

- Customer Contact A (IAM Program Lead, customer-identified technical decision owner) confirmed, verbatim in the transcript: "the provisioning flow you showed covers our joiner scenario." This confirms the joiner criterion only, not the overall technical win.
- Customer Contact A, verbatim: "we still need to see movers and leavers against our actual HR feed before we take anything upstairs" — an explicit customer requirement for further validation.
- Customer Contact B (HRIS Analyst) raised contractor attribute mapping and will send the current mapping sheet — a customer requirement/signal, not a confirmation.

Still unproven:

- mover and leaver processing against the customer's actual HR feed;
- contractor attribute mapping from the HR system (mapping sheet pending);
- whether the evaluation criteria list is complete, including any security, architecture, or procurement review before technical sign-off.

Shortest proof route:

Focused validation session (live demonstration or configuration session, expandable to a bounded workshop) covering mover and leaver scenarios against the customer's HR feed and attribute mapping, with success criteria agreed before the session. Success condition: mover and leaver behavior matches the agreed requirements using the customer's mapping sheet.

Exact customer ask:

"If we validate mover and leaver processing against your HR feed and attribute mapping under success criteria we agree together, would you be comfortable confirming that the solution meets the technical requirements for this evaluation — and are these all of the evaluation criteria, including any security, architecture, or procurement review before technical sign-off?"

Technical-win forecast:

- Window/date: Q1 2027 (window); Salesforce date only as March 31, 2027 — convention placeholder for window Q1 2027
- Confidence: Low
- Rationale: only a broad window exists; mover/leaver validation and the technical decision checkpoint are unscheduled; the exact date is a team quarter-end convention placeholder, not a scheduled confirmation event.

Accuracy flags:

- Source conflict: the transcript, the AI notetaker summary, and the SE recollection disagree. Transcript preferred for what was said. The AI summary presents "provisioning fully covers all our lifecycle scenarios" in quotation marks, but the transcript shows Customer Contact A scoped the statement to the joiner scenario and explicitly deferred movers and leavers — treat the summary version as an over-broadened paraphrase promoted into a quote; do not reuse it.
- The notetaker's "team is aligned on moving forward" and "next step: commercial discussion" are unsupported by the transcript.
- SE stated: the recollection of an overall lifecycle sign-off is the SE's impression, contradicted by the transcript; it is not customer evidence.

Next best action:

Obtain the attribute mapping sheet, agree mover/leaver success criteria with Customer Contact A, and schedule the focused validation session plus the technical decision checkpoint.

### Copy to Salesforce

Technical Win Forecast Date

March 31, 2027 — convention placeholder for window Q1 2027 (team quarter-end convention; no scheduled confirmation event). If the date picker cannot carry the label, keep the label at the top of SE Notes.

SE Notes

[2026-07-30 WinLoop debrief] Technical Win Forecast Date March 31, 2027 is a convention placeholder for window Q1 2027 (team quarter-end convention; no scheduled confirmation event). Focused live demo of lifecycle provisioning held July 28, 2026. Customer Contact A (IAM Program Lead, customer-identified technical decision owner) confirmed the demonstrated provisioning flow covers the joiner scenario, and explicitly deferred movers and leavers pending validation against their actual HR feed. This is a scoped confirmation of one criterion, not the overall technical win. Note: the AI meeting summary over-broadened this into "all lifecycle scenarios"; transcript preferred. Decision-critical open items: mover and leaver processing against the customer HR feed and contractor attribute mapping (Customer Contact B to send the mapping sheet). Preferred route: focused validation session with pre-agreed success criteria, then the technical decision checkpoint.

Next Steps

Customer:

- Send the contractor attribute mapping sheet — Customer Contact B — TBD
- Confirm mover/leaver success criteria for the validation session — Customer Contact A — TBD

SE / Vendor:

- Prepare and schedule the mover/leaver validation session against the customer HR feed with agreed success criteria — SE — TBD
- Schedule the technical decision checkpoint and ask for explicit confirmation against the agreed requirements — SE and customer — TBD

POC Required

No

Reason: The remaining mover/leaver uncertainty can be resolved by a focused validation session or bounded workshop with agreed success criteria; no customer-specific uncertainty requires a POC.

Review each value against your own evidence before pasting — you own this record.
