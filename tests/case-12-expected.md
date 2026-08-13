---
mode: Debrief + Message
status: Validation required
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8, M1, M2, M3]
---

# Case 12 — Mixed Intent: Debrief Plus Message Refresh — Expected Result

## Acceptance summary

- Both intents are fulfilled in one response: a complete Debrief first, then the revised Message study, clearly separated. MIXED-INTENT TRAP: producing only the Debrief (dropping the message refresh) or only the message study (dropping the Debrief) fails U9; Debrief must come first because it grounds the evidence.
- Debrief `Status` is `Validation required`.
- NEAR-MISS TRAP: the IT Director's confirmation of the dormant-account/audit pain and the Security Operations Manager's "that audit finding goes away" reaction are a confirmed pain and a single-capability signal — they must not produce `Confirmed` or `Ready to ask`. The technical decision owner is unidentified, no overall confirmation exists, and decision-critical criteria remain open; each statement stays scoped with speaker and role recorded.
- `Still unproven` includes contractor identities sourced from outside the HR system (vendor-management spreadsheet today) and auditor-facing evidence/reporting export; the unknown decision owner and unestablished criteria completeness are surfaced (in the gaps, the ask, or next steps).
- The Debrief contains the `Message revision` section with all three lines: `Promoted` — the dormant-account/audit-exposure language, now Grounded on the IT Director's statement; `Revised` — the password-reset/help-desk-load hypothesis, contradicted (self-service reset live since last year) and replaced with manual contractor onboarding across three systems taking up to two weeks; `Still hypothesis` — the MFA-friction language, untested in this call.
- Shortest proof route is a low rung — documentation plus a focused demonstration or configuration session covering contractor sourcing and audit reporting — not a POC. `POC Required` field value is exactly `No`, with the alternative named only in the `Reason` line.
- `Exact customer ask` is a conditional confirmation anchored to the remaining criteria; "any other questions?"-style phrasing fails.
- Forecast: `Window/date: Unknown`, `Confidence: Low`, rationale tied to the unscheduled decision event and unidentified decision owner. No date or window is invented anywhere, including the Salesforce date block, which carries `INPUT REQUIRED` guidance (leave the date-picker unchanged) rather than a fabricated value.
- Salesforce layer: four separate blocks; SE Notes begins with the `[YYYY-MM-DD WinLoop debrief]` stamp (any run date acceptable) and reads as decision movement — status, scoped confirmations with roles, corrected hypothesis, gaps, route — not a feature recap; Next Steps separate customer actions from SE/vendor actions with owners and `TBD` dates and include the technical-decision-checkpoint step; the layer ends with the review-before-paste line.
- Revised Message study: `Evidence posture: Mixed`, with a basis naming the July 29 call as the grounded source and the untested areas (MFA, metric values). Exactly four titled sections, one short paragraph each (35–65 words), no bullets inside them, one discovery bridge.
- The revised before-scenario no longer asserts password-reset ticket load; it carries the confirmed audit finding and the contractor-onboarding delay. The "about 60 dormant accounts" figure may appear only as customer-attributed evidence; no other metric baselines or targets are invented. Differentiation ties supportable strengths to the required capabilities without competitor attacks or unvalidated customer outcomes.
- No second set of Salesforce blocks follows the Message study — the Debrief already emitted them, and Message mode emits only on an explicit CRM-update request.

## Example acceptable output

### SE Decision Assist

Status: Validation required

Customer evidence:

- IT Director confirmed the deprovisioning pain: "our last internal audit flagged about 60 dormant accounts that still had access, and that finding is still open" — and identified it as the funding driver. This grounds the before-scenario pain; it is not confirmation that the solution resolves it.
- Security Operations Manager, reacting to the HR-triggered deprovisioning demo, said "that audit finding goes away" if accounts are disabled that fast. Scoped signal on one capability, not an overall technical win; evaluation authority not established.
- IT Director contradicted the help-desk hypothesis: password resets are not a pain (self-service reset deployed last year, volume dropped); the volunteered pain is manual contractor onboarding across three systems, up to two weeks.

Still unproven:

- handling contractor identities that are not in the HR system (vendor-management spreadsheet today);
- auditor-facing evidence and reporting export;
- who holds technical sign-off, the decision process, and whether the criteria list is complete (security, architecture, or procurement review unknown).

Shortest proof route:

Documentation plus a focused demonstration or configuration session covering non-HR contractor identity sourcing and audit evidence export. Success: the Identity/IT stakeholders agree the sourcing pattern covers their contractor population and the exported evidence would satisfy their auditors.

Exact customer ask:

"If we validate contractor identity sourcing from outside your HR system and the auditor-facing evidence export against success conditions we agree, would you be comfortable confirming that the solution meets the technical requirements for this project?"

Technical-win forecast:

- Window/date: Unknown
- Confidence: Low
- Rationale: no decision process discussed, technical decision owner unidentified, next touchpoint unscheduled; confirmation depends on validating contractor sourcing and audit reporting.

Accuracy flags:

- "About 60 dormant accounts" is the IT Director's approximate figure — record as customer-provided, not independently verified.

Next best action:

Book the follow-up session to validate contractor sourcing and audit evidence export, and ask the IT Director who holds technical sign-off so the confirmation question reaches an authoritative stakeholder.

### Message revision

Promoted: Dormant accounts with standing access creating audit exposure — confirmed by the IT Director (open audit finding, ~60 accounts, project funding driver); now Grounded.
Revised: Heavy password-reset/help-desk load — contradicted (self-service reset live since last year); replaced with manual contractor onboarding across three systems taking up to two weeks.
Still hypothesis: MFA adoption stalled on user friction — untested in this call; remains labeled a hypothesis.

### Copy to Salesforce

Technical Win Forecast Date

INPUT REQUIRED — no grounded window or date; decision process not yet discussed. (Date-picker field: leave unchanged.)

SE Notes

[2026-07-30 WinLoop debrief] Follow-up discovery and demo July 29, 2026 (workforce lifecycle and deprovisioning focus). IT Director confirmed the deprovisioning pain — an open internal-audit finding of roughly 60 dormant accounts with standing access — and named it the project driver. Security Operations Manager reacted that fast automated deprovisioning would close that finding; scoped signal, not an overall technical win. IT Director corrected our hypothesis: password-reset volume is not a pain (self-service reset live since last year); manual contractor onboarding across three systems, up to two weeks, is. Status: Validation required. Decision-critical open items: sourcing contractor identities that are not in the HR system, auditor-facing evidence export, and identifying the technical decision owner and process. Route: focused demonstration or configuration session; no POC at this stage. Forecast window unknown; no date entered.

Next Steps

Customer:

- Identify who holds technical sign-off and describe the evaluation and decision process — IT Director — TBD
- Provide contractor population details (current vendor-management source, volumes, target systems) — IT Director / HR Systems Analyst — TBD
- Share the auditors' evidence and reporting requirements — Security Operations Manager — TBD

SE / Vendor:

- Prepare and deliver a focused demonstration of contractor identity sourcing from outside the HR system — SE — TBD
- Follow up on audit evidence and reporting export with current official documentation — SE — TBD
- Schedule the technical decision checkpoint and ask for explicit confirmation against the agreed requirements — SE and customer — TBD

POC Required

No

Reason: The remaining uncertainty (contractor sourcing, audit evidence export) is resolvable through documentation and a focused demonstration or configuration session.

Review each value against your own evidence before pasting — you own this record.

### Revised message study

Evidence posture: Mixed

Basis: Grounded in the July 29, 2026 call with the IT Director and Security Operations Manager; MFA-related language and any metric baselines or targets beyond the customer-stated audit finding remain untested hypotheses.

1. Before Scenario & Negative Consequences

Departing users' accounts are deactivated manually across disconnected systems, and the customer's last internal audit flagged roughly 60 dormant accounts with standing access — a finding that remains open. Contractor onboarding is manual across three systems and can take up to two weeks, delaying productive work and extending unmanaged access.

2. After Scenario & Positive Business Outcomes

When lifecycle events drive access automatically — including contractors sourced from outside the HR system — accounts are disabled promptly at departure and created quickly at start. The expected outcomes are closure of the open audit finding, faster contractor productivity, and defensible evidence of who has access and why.

3. Required Capabilities & Metrics

Moving from before to after requires lifecycle automation driven by authoritative sources, support for contractor identities outside the HR system, prompt deprovisioning, and auditor-consumable access reporting. Progress can be measured through dormant-account count, time to deprovision at departure, contractor time to first access, and audit-evidence preparation effort.

4. How Okta Does It Better

Okta's lifecycle automation can act on multiple authoritative identity sources, which maps to the confirmed deprovisioning pain and to a contractor population that lives outside the HR system, and its reporting supports access evidence for reviews. Coverage of the customer's three target systems and their auditors' evidence format still needs validation.

Discovery bridge

"Does this now reflect your priorities correctly — and would your technical sign-off be judged against closing the audit finding, contractor onboarding time, or both?"
