Prep me for next Tuesday's call. 60 minutes with the IT Director, who owns the identity program, and their identity architect. The agenda from the AE says technical discovery plus a short demo.

This is our second touch. The first was an intro call where the AE and I mostly listened; governance came up, and Customer Contact A (the IT Director) said access certifications are something they want to get serious about this year.

What we know: federation and SSO run on PingFederate today, and provisioning is a pile of homegrown scripts that only two people still understand. They're interested in IGA. We're positioning Okta workforce identity plus IGA.

I'm pretty sure provisioning takes them days with those scripts — I want to open the meeting by telling them we know provisioning takes days today and build the demo around cutting that down.

## Prior message study (drafted before the intro call)

Evidence posture: Hypothesis

Basis: Current platforms are known from the AE handoff; no technical discovery has happened, so pains and metrics are assumptions.

1. Before Scenario & Negative Consequences

The working hypothesis is that PingFederate handles federation while homegrown scripts move accounts between systems, so provisioning for new hires likely takes days and depends on a few key people. Access certifications are probably manual, making audit evidence slow to assemble and leaver deprovisioning hard to guarantee.

2. After Scenario & Positive Business Outcomes

The desired state automates the joiner, mover, and leaver lifecycle and produces governance evidence continuously. Intended outcomes are faster onboarding, dependable access removal, reduced reliance on script maintainers, and audit responses that take hours instead of weeks.

3. Required Capabilities & Metrics

The solution should provide lifecycle automation, application provisioning connectors, access certifications, and auditable reporting. Candidate metrics include provisioning and deprovisioning time, certification completion time, orphaned-account count, and audit-preparation effort — baselines to be captured in discovery.

4. How Okta Does It Better

Okta pairs lifecycle automation, access certifications, and entitlement reporting in one platform, which maps to replacing script-based provisioning and manual reviews with one operating layer; connector coverage for their application estate and the federation migration path still need customer validation.

Discovery bridge

"How closely does this match your current provisioning and governance reality?"
