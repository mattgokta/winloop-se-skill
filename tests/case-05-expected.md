---
mode: Debrief
status: At risk
rubric: [U1, U2, U3, U4, U5, U7, U9, D1, D2, D3, D4, D5, D6, D7, D8]
---

# Case 05 — Six-Week Exploratory POC Request — Expected Result

## Acceptance summary

- Status is `At risk`, on the decision-model trigger: a validation request without bounded success criteria, plus a missing decision process (no evaluation owner, no requirements list, no test plan, no decision event).
- The six-week "explore the platform" POC is not accepted as a proof plan — "kicking the tires" is named (or clearly treated) as an invalid POC objective, and no POC scope, timeline, or environment work is planned.
- NEAR-MISS TRAP: the AE's enthusiasm ("huge appetite, they want hands-on ASAP!") and his ask to "just get them a sandbox spun up this week" must not become a proof plan. The output does not recommend or commit to standing up a sandbox or any hands-on environment; account-team excitement is never recorded as customer evidence; any momentum concern is answered with the bounded discovery-then-workshop path instead.
- Customer evidence stays scoped: the POC request and the "figure it out as we go" process comment are recorded as customer statements/signals; liking the overview presentation is at most a signal, never fit evidence.
- The recommendation is to first discover the decision-critical technical uncertainty, the evaluation owner, the criteria, and the decision event, and to offer a bounded workshop with guided labs and predefined pass/fail criteria when discovery shows guided labs can answer the question. No proof rung above documentation/workshop is proposed.
- The exact customer ask targets the missing decision structure and is anchored to requirements-to-be-agreed — it asks for the decision-critical requirements, the evaluation owner/decision process, and includes the criteria-completeness check (security, architecture, or procurement review) — rather than posing a technical-win confirmation question that has no agreed requirements behind it.
- Technical-win forecast: Window/date is `Unknown`; Confidence is `Low`; the rationale cites the absent decision event, owner, and criteria — no date or window is invented, and the Salesforce date block carries no date (sentinel per the glossary, with the date-picker field left unchanged).
- `POC Required` field value is exactly `TBD` — any nuance such as "not at this stage" or "revisit after discovery" appears only in the `Reason` line, never in the field value.
- Salesforce content is returned as four separate blocks; SE Notes carries the `[YYYY-MM-DD WinLoop debrief]` stamp (any run date is acceptable) and emphasizes decision movement, not the presentation content; Next Steps separate customer from SE/vendor actions with owners and dates or `TBD`, and include the technical decision checkpoint; the layer ends with the review-before-paste line.

## Example acceptable output

### SE Decision Assist

Status: At risk

Customer evidence:

- IT Director requested "a POC for about six weeks to explore the platform and see what it can do" — a validation request without bounded success criteria; when asked what to prove, he said the team "just wants to get in there and play with it, kick the tires properly."
- Security analyst on the evaluation process: they usually "figure it out as we go" — no defined decision process.
- Positive reception of the overview presentation — customer signal only, not fit evidence.
- The AE's "huge appetite, they want hands-on ASAP" is account-team enthusiasm, not customer evidence.

Still unproven:

- The decision-critical technical uncertainty itself — no requirement has been identified that a standard demo could not cover; discovery has not been done.
- The evaluation owner, criteria list, test plan, and decision event — none exist; whether the process includes a security, architecture, or procurement review is also unknown.

Shortest proof route:

No proof rung can be selected yet, because no decision-critical uncertainty has been identified. The risk here is an open-ended six-week POC with no success criteria, owner, or exit decision — "kicking the tires" is not a valid POC objective. Run a discovery session first; if it shows that guided labs can represent the requirements, offer a bounded hands-on workshop with predefined pass/fail criteria as the hands-on experience the customer wants, instead of the six-week POC. Do not stand up a sandbox before the uncertainty and criteria exist.

Exact customer ask:

"Before we set up any hands-on evaluation: which specific technical requirements would you need to see proven for this to move forward, who owns the technical evaluation decision, and does your process include a security, architecture, or procurement review before technical sign-off?"

Technical-win forecast:

- Window/date: Unknown
- Confidence: Low
- Rationale: no decision event exists or is scheduled, no evaluation owner or criteria are defined, and the requested validation has no bounded success criteria.

Accuracy flags:

- The AE's sandbox request and urgency are internal statements; they must not be recorded as customer demand or converted into a proof plan before discovery.

Next best action:

Propose a discovery session with the IT Director to define the decision-critical requirements, the evaluation owner, and the decision event — positioning a bounded, guided workshop (not a six-week POC) as the fastest route to hands-on experience once criteria are agreed.

### Copy to Salesforce

Technical Win Forecast Date

Unknown — no forecast window or scheduled decision event exists; leave the Salesforce date field unchanged.

SE Notes

[2026-07-30 WinLoop debrief] First technical conversation (intro call with IT Director and security analyst). Customer requested a six-week POC "to explore the platform"; when asked what to prove, the answer was to "kick the tires." No decision-critical technical uncertainty, success criteria, evaluation owner, test plan, or decision event has been identified, and the analyst described the evaluation process as undefined. Status: at risk — the validation request has no bounded success criteria and no decision process behind it. Plan: run discovery to surface the decision-critical requirements, the evaluation owner, the decision event, and any security/architecture/procurement review; then offer a bounded hands-on workshop with guided labs and predefined pass/fail criteria if labs can answer the requirements. The six-week exploratory POC is not accepted as a proof plan; POC need is TBD pending discovery.

Next Steps

Customer:

- Name the technical evaluation owner and describe the decision process, including any security, architecture, or procurement review — IT Director — TBD
- Define the decision-critical technical requirements and success criteria in the discovery session — IT Director and security analyst — TBD

SE / Vendor:

- Propose and schedule the discovery session to surface decision-critical uncertainty and criteria — SE — TBD
- If discovery shows guided labs can answer the requirements, offer a bounded workshop with predefined pass/fail criteria as the hands-on path — SE — TBD
- Schedule the technical decision checkpoint and ask for explicit confirmation against the agreed requirements — SE and customer — TBD

POC Required

TBD

Reason: No decision-critical uncertainty, success criteria, owner, or decision event is established; revisit after discovery, and prefer a bounded workshop if guided labs can answer the question.

Review each value against your own evidence before pasting — you own this record.
