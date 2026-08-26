---
mode: Message
rubric: [U5, U7, U8, U9, D5, M1, M2, M3]
---

# Case 06 — APEX Message Without Gong — Expected Result

## Acceptance summary

- Mode is `Message`; the output follows the message-study contract: `Evidence posture` plus a one-sentence `Basis`, four titled study sections, and a separate `Discovery bridge`.
- Evidence posture is `Hypothesis`; the basis names what is known (current Microsoft platforms, proposed Okta products) and the material gap (no grounded customer conversation or customer-specific metrics).
- Exactly four titled study sections, each a single paragraph of roughly 35–65 words, with no bullets inside any section.
- **Near-miss trap — AE hearsay:** the input's "the AE thinks they're drowning in help-desk tickets ... probably the pain to lead with" is an internal belief, not customer evidence. The study must not assert that this customer is drowning in help-desk tickets or lead with it as an established pain. Ticket volume may appear only in hypothesis phrasing or as a candidate metric (identity-related help-desk volume) with no invented baseline; presenting it as customer-confirmed pain fails M1.
- The before scenario is framed as a working hypothesis ("The working hypothesis is...", "This may create...", or equivalent).
- No invented customer-specific pains, breaches, audit findings, metrics, baseline or target values, deadlines, or executive mandates.
- Required capabilities are vendor-neutral; suggested metrics are measurable but carry no assigned values.
- Section 4 maps supportable Okta capabilities to the required capabilities without attacking Microsoft, asserting unverified competitor limitations, or using unproven superlatives such as "best", "leading", or "seamless".
- Exactly one discovery bridge question asking the customer to confirm or correct the hypothesis; folding the help-desk-volume validation into it is a plus, not a requirement.
- No Salesforce blocks: the user did not request a CRM update, so per the Salesforce emission rule none are emitted (offering one is acceptable; emitting one is not).
- Output is entirely in English, as requested.

## Example acceptable output

Evidence posture: Hypothesis

Basis: The current Microsoft platforms and the proposed Okta products are known; no grounded customer conversation or customer-specific metrics exist, and the AE's help-desk-ticket impression is an internal belief, not customer evidence.

### 1. Before Scenario & Negative Consequences

The working hypothesis is that running Entra ID and Active Directory alongside manual access reviews creates separate operating models for access and governance. This may increase administrative effort and identity-related help-desk demand, delay joiner, mover, and leaver changes, and make it harder to demonstrate who has access, why they have it, and whether it remains appropriate.

### 2. After Scenario & Positive Business Outcomes

The desired state is a consistent identity operating model that automates access across the user lifecycle and gives decision-makers timely governance evidence. The intended outcomes are faster employee enablement, more reliable removal of access, less manual review effort, clearer accountability, and stronger audit readiness without adding unnecessary friction for users.

### 3. Required Capabilities & Metrics

The solution should provide centralized identity policy, lifecycle automation, secure authentication, access requests, entitlement visibility, certifications, and auditable reporting. Success can be measured through provisioning and deprovisioning time, MFA coverage, access-review completion time, orphaned-account count, policy exceptions, fulfillment time, and identity-related help-desk volume. Current baselines, including actual ticket volume, are unknown and must come from discovery.

### 4. How Okta Does It Better

Okta combines access management, automated onboarding and offboarding, access requests, certifications, entitlement management, and reporting within its identity platform. That maps directly to the required lifecycle and governance capabilities and gives the customer one operating layer to evaluate; exact application coverage, policies, and integration design still need customer validation.

Discovery bridge

"How accurately does this reflect your current identity challenges — including whether access issues are actually driving help-desk volume — and which outcomes or measures would you change?"
