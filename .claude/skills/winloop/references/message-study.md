# APEX Command of the Message Study

Use this reference for APEX, Command of the Message, message-study, before/after, and value-messaging requests.

## Purpose

Create an audible-ready customer message that connects the customer's current state to desired business outcomes, measurable required capabilities, and defensible Okta differentiation.

The four sections are a customer conversation hypothesis until the customer validates them.

## Minimum input

Use what the user supplies:

- customer or scenario;
- current platform, process, or before state;
- proposed Okta product or products;
- audience or stakeholder, when known;
- known pain, initiative, outcome, or constraint, when known;
- desired language.

Do not block when only the first three inputs exist. Produce a structural hypothesis and identify the evidence posture.

When an audience is supplied, tune altitude accordingly: business outcomes and risk for executives, operational friction and capabilities for practitioners. When the input names a live initiative, deadline, or compliance driver, reflect the urgency — the "why now" — in the before/after logic; never invent one.

## Evidence posture

Choose one:

- **Grounded:** Direct customer transcript, faithful meeting notes, or explicit customer confirmation supports the material message.
- **Mixed:** Some customer evidence exists, while other parts rely on public context or inference.
- **Hypothesis:** No grounded customer evidence exists; the story uses user context, public primary sources, and clearly bounded assumptions.

When there is no Gong, transcript, or grounded call note:

- do not write that the customer experiences a pain unless another grounded source establishes it;
- describe common or plausible current-state consequences as a working hypothesis;
- do not invent customer metrics, baselines, priorities, deadlines, or executive mandates;
- suggest measurable metrics without assigning values;
- prefer customer-controlled public sources for strategic context;
- prefer current official Okta documentation for product claims.

## Four-part structure

Output exactly four titled sections. Under each title, write one short paragraph with no bullets. Aim for 35–65 words per paragraph unless the user requests another limit.

### 1. Before Scenario & Negative Consequences

Describe the current workflow or architecture, the operational friction it may create, and the business consequence. Start with the customer, not Okta.

Use causal logic:

```text
current state -> operational friction -> negative business consequence
```

When evidence posture is Hypothesis, use phrasing such as `The working hypothesis is...`, `Organizations operating this way often...`, or `This may create...`.

### 2. After Scenario & Positive Business Outcomes

Describe the desired future operating state and its positive business outcomes. Do not merely reverse the negative paragraph or list product features.

Use causal logic:

```text
changed workflow -> operational improvement -> positive business outcome
```

### 3. Required Capabilities & Metrics

State the few capabilities necessary to move from before to after and the metrics the customer could use to measure success. Capabilities must be vendor-neutral. Metrics must be measurable but must not contain invented target values.

Examples of useful identity metrics include time to provision or deprovision, authentication success, MFA coverage, access-review completion time, orphaned-account count, help-desk volume, privileged-session coverage, policy exceptions, and time to remediate identity risk. Choose only those relevant to the scenario.

### 4. How Okta Does It Better

Map Okta's defensible strengths to the required capabilities and desired outcomes. Differentiate by explaining the fit, not by attacking a competitor.

Rules:

- use only current, supportable product claims;
- tie every differentiator to a required capability;
- a proof point (a referenceable customer example or published result) may support a differentiator when it is public and current — cite it inline; never fabricate one;
- compare with a named incumbent only when both sides can be supported by authoritative evidence;
- cite useful public sources inline when research supports a material claim;
- avoid generic words such as `best`, `leading`, `seamless`, or `superior` without proof;
- do not claim a customer outcome that has not been validated.

## Output contract

```text
Evidence posture: Grounded | Mixed | Hypothesis
Basis: [one sentence naming the available evidence and material gaps]

1. Before Scenario & Negative Consequences
[one short paragraph; no bullets]

2. After Scenario & Positive Business Outcomes
[one short paragraph; no bullets]

3. Required Capabilities & Metrics
[one short paragraph; no bullets]

4. How Okta Does It Better
[one short paragraph; no bullets]

Discovery bridge
"[one short question that asks the customer to confirm or correct the hypothesis]"
```

The four study areas must not contain bullets. The `Discovery bridge` is separate and exists to convert the hypothesis into customer evidence.

After a completed interaction, the study is revised through the `Message revision` section of the Debrief contract: confirmed language is promoted to Grounded, contradicted language is revised, and untested statements stay labeled as hypotheses.
