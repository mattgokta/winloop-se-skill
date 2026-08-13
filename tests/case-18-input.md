# Case 18 — Hands-On Validation Session, Competitive Evaluation

## User context

- Meeting date: July 29, 2026
- Meeting type: hands-on validation session (second of three planned evaluation sessions)
- Salesforce stores Technical Win Forecast Date, SE Notes, Next Steps, and POC Required in separate fields

## My notes from the session

Ran the provisioning and step-up scenarios with Customer Contact A (IAM Architect — the customer named them evaluation lead at kickoff) and two of their engineers. A said the SCIM provisioning flow into their three tier-1 SaaS apps "meets the provisioning requirement as we scoped it". After the step-up demo, A said the privileged-access step-up policy "does what our policy doc requires". Both scenarios ran clean.

Still open: group writeback to their on-prem AD. Their engineer hit a mapping question against their schema that we couldn't answer live — we owe them a configured walkthrough, and A wants their own admins hands-on for that one.

Competitive: A mentioned the incumbent vendor is running the same validation next week and the team "will compare results" before going to their architecture board. On the way out A said "yours was smoother today". Our AE told me afterwards the incumbent "can't do real-time deprovisioning anyway, so we've basically won" — his words, not mine.

Nothing is scheduled past the incumbent's session; the architecture board date is still floating.

## Request

Run WinLoop in Debrief mode and produce the separate Salesforce fields.
