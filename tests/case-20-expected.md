---
mode: Debrief
status: Validation required
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8]
---

# Case 20 — Implicit Routing: Completed Notes, No Mode Stated — Expected Result

## Acceptance summary

- ROUTING UNDER TEST: the input names no mode and asks no forward-looking question — just completed-meeting notes. Per precedence rule 3, the run must route to `Debrief` (U9). A Checkpoint, Prepare, or Message output fails the case, as does asking the user which mode to run.
- Status is `Validation required`: the multi-owner approval flow and kiosk session-timeout behavior are open, decision-critical items (the customer gated "taking it upstairs" on the approval answer) (D1).
- The SCIM provisioning confirmation stays scoped to the two HR feeds, attributed to the Senior Identity Engineer; the quoted fragment "handles both feeds the way we need" may be quoted (it is presented as his words) or given as an attributed paraphrase — it is evidence for one criterion, never the overall win (U1, U2).
- The IAM Program Lead's UX reaction is a Customer signal, not a confirmation.
- NEAR-MISS TRAP: "Feeling great about this one" is the SE's own sentiment and must not appear as customer evidence or influence status (U5).
- Shortest proof route is a low rung: written clarification/documentation for the multi-owner approval design and session-timeout behavior (documentation or a focused follow-up demo); a workshop or POC here fails D2, and any POC recommendation also fails D3.
- Technical-win forecast: Window/date `Unknown` (no decision meeting scheduled, no window stated); Confidence `Low`; rationale names the unscheduled decision event and the two open items (U3, U4).
- Full two-layer output: SE Decision Assist plus `Copy to Salesforce` (Debrief always emits it). No org field set is declared in the input, so the Salesforce layer follows the canonical **Presales & Services Details** template: the three banner groups (Presales Information / Presales Notes / Presales Reporting (checkboxes)) with every contract field present in the contract's order, each value independently copyable, plus the review-before-paste line. Pre-Sales Notes opens with the `[YYYY-MM-DD <initials> WinLoop]` stamp (any run date; initials from team.json when present, otherwise `INPUT REQUIRED` — no initials source exists in this suite); `Technical Win Date` returns `INPUT REQUIRED` rather than an invented date (D5, U3).
- Pre-Sales Next Steps separate customer actions (provide kiosk requirements detail if needed) from SE/vendor actions (deliver the multi-owner approval answer, session-timeout documentation, schedule the technical decision checkpoint), each with owner and date or `TBD` (D6).
- Pre-Sales Notes emphasize decision movement — scoped confirmation, two open criteria, no overall win, chosen route — not a feature recap of the demo (D7).
- `POC Status` is exactly `Not Required` and the `POC` checkbox is exactly `No` (documentation answers the open items — a route below POC); the recommended alternative route and any nuance go in Pre-Sales Notes, never inside the field value (D8).
