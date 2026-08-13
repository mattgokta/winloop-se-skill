---
mode: Prepare
rubric: [U5, U7, U8, U9, D5, P1, P2]
---

# Case 10 — Prepare With Prior Message Study — Expected Result

## Acceptance summary

- Mode is `Prepare`: the explicit "prep me" request wins; the intro-call context and pasted study do not trigger a Debrief or a message revision.
- All six Prepare sections are present, in order: `Meeting objective`, `What must be learned`, `What must be proven`, `Do not demo`, `Exact technical-win ask`, `Fallback route`.
- The meeting objective is one technical-decision outcome (validating or correcting the current-state hypothesis and agreeing decision-critical criteria), not a demo-completion or relationship goal.
- **Near-miss trap — "provisioning takes days":** the multi-day-provisioning figure exists only in the prior hypothesis study and in the SE's own belief ("I'm pretty sure"). It must surface in `What must be learned` as a baseline question to validate — never in the meeting objective, the proof plan, or the ask as an established customer fact. The SE's plan to "open the meeting by telling them we know provisioning takes days" must not be endorsed anywhere in the output; an acceptable output reframes it as a question or hypothesis to test.
- `What must be learned` contains at most three decision-critical questions and covers the actual provisioning baseline and script dependency, the current certification/audit process, and the decision process including the criteria-completeness angle (security, architecture, or procurement review before technical sign-off).
- `What must be proven` entries follow criterion → proof method → pass condition and are anchored to what the intro call grounded (Customer Contact A's stated interest in access certifications); anything drawn from untested study hypotheses is framed conditionally, pending discovery.
- `Do not demo` names areas that do not advance a stated criterion (broad platform tour, products outside workforce IAM and IGA, connector deep-dives for applications the customer has not named).
- The exact technical-win ask is one quoted question anchored to criteria; because criteria are not yet agreed, a conditional or criteria-agreement form is required — asking for the overall win as if criteria were already validated fails.
- The fallback route is the smallest next proof step (written criteria confirmation, focused demo, or architecture/configuration session), not a POC.
- Prior-study language is used only as discovery hypotheses (P2); the only customer-attributed evidence in the output is what the intro call established, and study hypotheses are never labeled or phrased as customer statements (U5).
- No Salesforce blocks: no explicit CRM-update request was made, so per the Salesforce emission rule none are emitted.

## Example acceptable output

Meeting objective:

Leave the meeting with the IT Director's validated (or corrected) picture of the current provisioning and governance state, and an agreed list of decision-critical technical criteria for the workforce identity and IGA evaluation.

What must be learned:

- How provisioning actually works today and how long it takes — the "days" figure in the prior study is a hypothesis, not a customer statement; capture the real baseline and the dependency on the two script maintainers rather than asserting it.
- What the certification and audit process looks like today, and which governance evidence the IT Director must produce and for whom.
- Who owns the technical decision, what the evaluation criteria are, and whether a security, architecture, or procurement review is part of technical sign-off.

What must be proven:

- Access-certification fit (grounded: Customer Contact A raised certifications on the intro call) → short, focused demo of creating a certification campaign and producing audit evidence → the IT Director and identity architect agree the flow would fit their review process.
- Lifecycle automation replacing script-based provisioning (conditional: confirm in discovery that this is decision-critical) → demo one joiner/leaver flow for an application they name → the customer agrees the pattern is worth validating against their environment.

Do not demo:

- Broad platform tours or product areas outside workforce identity and IGA, such as customer identity or privileged access, unless the customer raises them.
- Connector or integration specifics for applications the customer has not yet named.

Exact technical-win ask:

"If we agree today on the technical criteria for this evaluation and then validate each of them, would you be comfortable confirming that the solution meets your technical requirements — and are these all of the criteria, including any security or architecture review before technical sign-off?"

Fallback route:

If the criteria cannot be agreed in the meeting, send a written summary of the captured criteria to the IT Director for confirmation, then propose a focused demo or architecture/configuration session against the confirmed list — no POC at this stage.
