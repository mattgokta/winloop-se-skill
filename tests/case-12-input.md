Debrief this call and refresh the message study.

Call notes — July 29, 2026, follow-up discovery plus short demo, 50 minutes. Their side: IT Director, Security Operations Manager, HR Systems Analyst.

Opened by testing our story. IT Director confirmed the dormant-account pain almost word for word: "our last internal audit flagged about 60 dormant accounts that still had access, and that finding is still open." Said cleaning that up is why this project got funded.
Showed automated deprovisioning triggered off the HR system. Security Operations Manager said if accounts get disabled that fast "that audit finding goes away" — big head nods around the table.
I had the help-desk angle wrong though. IT Director: "password resets are not our problem, we rolled out self-service reset last year and volume dropped." The pain he volunteered instead: contractor onboarding takes up to two weeks because account creation is manual across three systems.
Nobody mentioned MFA friction either way — never got to test that part of the story.
Open: they need to see contractor identities handled — their contractors are not in the HR system at all, they live in a vendor-management spreadsheet today.
Open: Security Operations Manager asked what evidence and reporting we can export for their auditors. Said I would follow up.
No decision process discussed yet, and I don't know who signs off technically. Next touchpoint not booked.

Prior message study:

Evidence posture: Hypothesis
Basis: Current platforms known from the account team; no customer conversation yet.

1. Before Scenario & Negative Consequences
The working hypothesis is that departures are deprovisioned manually across disconnected systems, leaving dormant accounts with standing access and audit exposure. Password-reset tickets likely consume a large share of help-desk effort, and MFA adoption may have stalled on user friction, keeping coverage below policy.

2. After Scenario & Positive Business Outcomes
The desired state removes standing access promptly at departure and cuts routine identity tickets, so the team can demonstrate clean access at audit time, redirect help-desk effort to higher-value work, and raise MFA coverage without user pushback.

3. Required Capabilities & Metrics
Moving from before to after requires lifecycle automation from an authoritative source, self-service credential flows, phishing-resistant MFA, and auditable access reporting. Candidate measures include dormant-account count, time to deprovision, reset-ticket volume, and MFA coverage, with values to be established with the customer.

4. How Okta Does It Better
Okta connects HR-driven lifecycle automation, self-service password reset, adaptive MFA, and access reporting in one platform, mapping directly to the required capabilities; specific application coverage, policies, and integration design still need validation with the customer.

Discovery bridge
"How accurately does this describe your current identity operations, and what would you correct?"
