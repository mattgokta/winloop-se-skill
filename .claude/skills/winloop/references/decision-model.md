# Technical-Win Decision Model

## Definition

A technical win is confirmed only when an authoritative customer stakeholder explicitly communicates that the solution presented or validated resolves the agreed technical need.

Acceptable evidence includes:

- a direct statement in a transcript;
- a clearly attributed, faithful paraphrase in grounded meeting notes;
- a user-supplied confirmation explicitly identified as customer feedback.

Do not infer an overall technical win from:

- positive engagement;
- detailed technical questions;
- praise for a feature;
- agreement that one requirement is met;
- completion of a demo, workshop, or POC;
- lack of objections;
- an SE or seller's confidence;
- a statement relayed second-hand by a partner or reseller.

## Confirmer authority

A confirmation supports `Confirmed` only when the speaker is:

- the customer-identified technical decision owner; or
- a stakeholder the customer has explicitly designated with evaluation authority (for example, the named lead of the evaluation committee).

When an explicit confirmation comes from a stakeholder of unknown or insufficient authority, classify the opportunity as `Ready to ask` at most. Record the statement as scoped evidence in this form:

```text
Confirmation received from [role]; authoritative confirmation from [technical decision owner or TBD] still required.
```

The `Confirmed` output must state the speaker's role and the basis for treating them as authoritative. If the technical decision owner has never been identified, that is itself a decision-critical gap.

## Confirmation quality

A statement counts as customer confirmation only when it is anchored to the agreed requirements and freely given. Classify as `Customer signal` at most — never `Customer confirmed` — any affirmation that is:

- elicited by a leading or non-anchored question ("So we're good technically, right?");
- hedged ("I guess", "sure, whatever", "probably fine");
- tonally negative or sarcastic; or
- given under visible time or relationship pressure in the transcript.

The required response to such a statement is `Ready to ask` (or lower), plus a recommendation to re-pose the exact anchored technical-win question.

## States

### Confirmed

Use only when an authoritative customer stakeholder explicitly confirms the overall agreed technical need is resolved.

Required output:

- the confirming evidence, speaker, and speaker's role;
- the basis for treating the speaker as authoritative;
- whether the confirmation is exclusive or comparative when a competitor is in evaluation;
- any qualifications or excluded criteria;
- a recommendation to record the win and align the next commercial or implementation step.

### Ready to ask

Use when all known decision-critical technical criteria appear satisfied but no explicit overall confirmation exists — including when a confirmation exists but the speaker lacks evaluation authority or the statement fails the confirmation-quality test.

Required output:

- the satisfied criteria;
- the criteria-completeness check (below) when it has not been passed;
- the exact confirmation question;
- any stakeholder or meeting needed to make the answer authoritative.

### Validation required

Use when one or more decision-critical technical criteria remain unproven, unclear, or dependent on customer input.

Required output:

- each open criterion;
- why it matters to the customer's decision;
- the smallest proof method;
- the success criterion that would allow the technical-win ask.

### At risk

Use when there is a likely mismatch, unresolved blocker, missing decision process, stalled customer dependency, or validation request without bounded success criteria.

Additional At-risk triggers:

- the confirming stakeholder or champion has left the account or changed roles;
- the customer's requirements have materially changed since confirmation;
- a `Confirmed` status is older than one quarter with no scheduled next step;
- a competitor has entered or re-opened the evaluation, or the customer is running a parallel validation with another vendor while withholding comparative feedback.

Required output:

- the risk;
- its evidence;
- the decision or escalation needed;
- whether the forecast should move.

## Criteria completeness

`Ready to ask` and `High` forecast confidence both presume the criteria list is complete. Before granting either, require one of:

- customer evidence that the criteria list is complete and agreed ("these are all of our evaluation criteria"); or
- a mandatory check embedded in the exact ask or next steps:

```text
Are these all of the evaluation criteria, and does your process include a security, architecture, or procurement review before technical sign-off?
```

Treat InfoSec/vendor security assessment, architecture review board sign-off, compliance evidence review (for example SOC 2), and procurement-driven technical due diligence as candidate decision-critical criteria and as forecast dependencies. They are frequently part of the technical decision, not post-win formalities.

## Win decay and downgrades

`Confirmed` is not terminal. In Checkpoint mode, downgrade a previously `Confirmed` status when an At-risk trigger applies:

- to `Ready to ask` when the win must be re-confirmed with a new authoritative stakeholder — preserve the original evidence and state the reason;
- to `At risk` when requirements changed or the deal has stalled past the staleness window.

A nine-month-old confirmation in a stalled deal is weaker evidence than a fresh one; say so.

When more than one downgrade rule applies, use the most conservative resulting state (`At risk` over `Ready to ask`) and state every applicable trigger in the reason.

## Competitive context

When a competing vendor is in active evaluation:

- the technical-win ask must carry selection semantics, for example: "...and that it is the solution you would select on technical merit?";
- `Confirmed` output must state whether the confirmation is exclusive or comparative;
- proof-route selection must weigh competitive exposure — a bounded POC can be the right rung when a competitor is running one and declining would concede responsiveness;
- record competitive signals under the At-risk triggers above.

Never copy unverified competitor claims into output; see source integrity.

## Confirmation scope

Use this pattern:

```text
Customer confirmed [specific capability] meets [specific requirement].
This is evidence for [decision criterion], not confirmation of the overall technical win.
```

If notes say "100% fit," preserve the scope. Never generalize it beyond the requirement being discussed.

## Exact technical-win ask

Default:

```text
Based on what we have reviewed and validated, do you agree that the solution meets the technical requirements we defined for this initiative?
```

With open criteria:

```text
If we validate [remaining criterion] against [agreed success condition], would you be comfortable confirming that the solution meets your technical requirements?
```

Avoid:

- "Did you like the demo?"
- "Any other questions?"
- "Are we technically good?"

Those questions do not anchor the answer to agreed requirements — and an affirmation elicited by one of them does not count as confirmation (see Confirmation quality).

## Proof ladder

Choose the lowest rung that resolves the uncertainty:

0. none — ready to ask (no decision-critical uncertainty remains; the next step is the confirmation question itself);
1. official documentation or written clarification;
2. short recorded demonstration;
3. focused live demonstration;
4. architecture or configuration session;
5. bounded hands-on workshop with guided labs and predefined pass/fail criteria;
6. bounded POC.

Do not escalate merely because the customer asks to "try it." Identify the unresolved technical proposition first — but weigh competitive exposure per Competitive context.

## Workshop versus POC

Recommend a workshop when:

- the relevant behavior is already known or repeatable;
- predefined labs can represent the customer's requirement;
- the customer needs hands-on confidence rather than production proof;
- scope can fit a short, guided session;
- pass/fail criteria can be agreed before the session.

Recommend a POC only when all are true:

- a material customer-specific technical uncertainty remains;
- documentation, demo, configuration session, and workshop cannot resolve it;
- the customer agrees to a bounded proposition;
- success criteria, owners, environment, data, scope, timeline, and exit decision are explicit;
- the result will change a real buying decision.

"Kicking the tires" is not a valid POC objective.

When a workshop can answer the question, the Salesforce layer reflects it (fields per the output contract):

```text
POC Status
Not Required

POC
No
```

with the reason in Pre-Sales Notes: "The remaining criteria can be evaluated through a bounded workshop using agreed labs and pass/fail criteria."

## Deal motions beyond direct evaluation

The states and proof ladder assume a direct, meeting-driven evaluation. Adjust for other motions:

- **RFP/RFI-driven:** the customer's mandated stages replace the proof ladder; treat the scored response or mandated evaluation stage as the confirmation event, and note that a verbal ask may not be available.
- **Partner-led:** most evidence is second-hand; label it `Partner reported` (see source integrity) and never let it satisfy `Customer confirmed`. Partner-only evidence supports `Ready to ask` only when the proof plan includes a scheduled direct customer touchpoint where the anchored ask will be posed; without one, the status stays `Validation required`, and the win may never be recorded on partner evidence alone.
- **Renewal/expansion:** anchor evidence in current-deployment adoption and health rather than requiring a fresh demo-to-workshop path; a stale original win still needs re-confirmation for new scope.

## Forecast

Forecast the expected customer confirmation event, not the date the SE finishes a demo.

### Confidence

- **High:** The confirmation meeting is scheduled, required stakeholders are identified, decision-critical validation is complete or firmly scheduled, and the criteria-completeness check has been passed.
- **Medium:** A bounded validation and decision path exists with owners and approximate timing, but one or more dependencies remain.
- **Low:** Only a broad window exists, the decision checkpoint is unscheduled, customer inputs remain outstanding, or the forecast date is user-directed without a scheduled event.

Map these to your team's forecast categories deliberately (for example, only `High` supports commit-level technical-win forecasting); WinLoop states confidence, the SE owns the category.

### Date rules

- Preserve an exact date only when grounded in a scheduled confirmation event.
- A user-supplied exact date with no scheduled event is their CRM entry to make — output it, but the forecast Rationale must state `user-directed date; no scheduled confirmation event`, and Confidence is capped at Low.
- Preserve a user-provided month, quarter, or window as a window.
- If Salesforce requires a date-only value and only a window is known, return `INPUT REQUIRED` and ask for the team's date convention. When the user then supplies a convention (for example, quarter-end), a convention-derived date may be entered only with an inline label: `convention placeholder for window Q4 2026`.
- Never silently translate `Q4 2026` into `December 31, 2026`.
- State the event and dependencies that must occur before confirmation.

State-specific required-output items map into the existing SE Decision Assist slots — no new sections: forecast movement goes into the forecast `Rationale`, speaker and authority basis into `Customer evidence`, completeness gaps into `Still unproven`.

Example (using the output contract's field labels):

```text
Technical-win forecast:
- Window/date: Q4 2026; exact date Unknown
- Confidence: Low
- Rationale: Customer inputs, bounded workshop, and technical decision checkpoint are not yet scheduled.

Salesforce date block: INPUT REQUIRED — exact date not established; known window: Q4 2026
```
