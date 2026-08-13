No ledger for this account yet (unnamed in the notes). Full debrief below.

---

## SE Decision Assist

**Status: Validation required**

**Customer evidence:**
- IT Director (customer-identified technical decision owner), July 29 call: session termination in the legacy claims-processing application is a mandatory selection criterion; will not select any vendor that cannot prove it in their environment. Direct statement.
- IT Director, July 29 call: if the POC demonstrates ≥99% session termination within 60 seconds, that closes the last open criterion and he will give the technical decision at the August 18 meeting. Conditional pre-commitment — not a technical win; conditioned on POC outcome.

**Still unproven:**
- Session termination performance: whether Okta terminates ≥99% of active sessions in the legacy claims app within 60 seconds of a defined risk signal, measured in the customer's test environment under their actual network conditions (proxy chain, segmented east-west throttled network, undocumented session layer). Documentation, live demo, architecture session, and guided workshop have all been attempted and were agreed by all parties — including the IT Director and Identity Architect — to be insufficient to resolve this criterion.

**Shortest proof route:**
Bounded POC — all bounded-POC conditions are satisfied. A material customer-specific uncertainty exists (undocumented token cache, network conditions unreproducible in a lab). Every lower rung has been attempted. The customer has agreed to a bounded proposition with explicit success criteria (≥99% in ≤60 seconds), named owners, a prepared dataset, defined environment, a ten-business-day window, and a scheduled exit-decision event. The result will change the buying decision.

Success condition: Identity Architect confirms ≥99% of approximately 200 synthetic sessions terminated within 60 seconds, measured by the Identity Architect's test harness in the customer's test environment, August 3–14.

**Exact customer ask:**
*For use immediately after POC readout, before or at the August 18 meeting:*
"The POC measured [result] against the ≥99%-in-60-seconds criterion. Does this confirm that Okta meets the session termination requirement we defined, and does that close the last open technical criterion so you can give us the technical recommendation at today's meeting?"

**Technical-win forecast:**
- Window/date: 2026-08-18 (technical decision meeting, already on calendar)
- Confidence: Medium
- Rationale: Decision event is scheduled; IT Director (technical decision owner) pre-committed to giving the technical decision if the POC hits the number. The date is grounded in a scheduled event. Single remaining dependency: POC outcome, August 3–14. No additional technical unknowns have been raised. Confidence is Medium, not High, because the POC is not yet run.

**Accuracy flags:**
- The IT Director's pre-commitment is conditional, not unconditional. Do not log it as a technical win or advance the forecast beyond Medium until the Identity Architect confirms POC pass.
- Competitor presence: the IT Director's language ("will not select any vendor that cannot prove it") implies competitive awareness, but no competitor is named in the notes. If a competitor is running a parallel POC, the exact customer ask must carry selection semantics — "…and that Okta is the solution you would select on technical merit." Verify with AE.
- Platform-expansion idea (SE-originated, no customer ask): the SE notes that the POC engagement could be used to show governance, PAM, and device posture. This is an internal thought, not a customer request. Recommending against pursuing it during the active POC run. The IT Director agreed to a single proposition; introducing out-of-scope demonstrations risks diluting the focus of that proposition and could create a perception that the session termination proof needs supplementing. The moment for expansion conversations is after the IT Director confirms the technical win on August 18. Flag for AE as a post-win motion.

**Next best action:**
Application Owner confirms environment and accounts ready by August 1; SE completes integration and policy configuration by August 3 (POC start). Schedule a brief readout call with the Identity Architect for August 14 to confirm pass/fail measurement before the August 18 decision meeting. No scope additions to the POC.

---

## Copy to Salesforce

---

**Technical Win Forecast Date**
2026-08-18
Grounded in the already-scheduled technical decision meeting. Conditional on POC passing August 3–14. If the POC fails, remove this date and reset to Unknown.

---

**SE Notes**
[2026-07-29 WinLoop debrief] Working call with IT Director (technical decision owner), Identity Architect, and Application Owner to agree POC terms. Single remaining open criterion: whether Okta can terminate ≥99% of sessions in the legacy claims-processing application within 60 seconds of a defined risk signal, under the customer's real network conditions (proxy chain, segmented east-west throttled network, undocumented homegrown session layer). Prior validation — documentation, live demo, architecture session, guided workshop — agreed by all parties to be insufficient for this specific criterion. Agreed bounded POC: SE owns integration and policy configuration; Application Owner stands up environment and ~200 synthetic accounts by 2026-08-01; Identity Architect runs test harness and owns pass/fail measurement; window 2026-08-03 through 2026-08-14. IT Director stated this is the last open criterion and will give technical decision at the already-scheduled 2026-08-18 meeting if POC passes. Status: Validation required. Technical win is not confirmed; conditional on POC pass/fail result.

---

**Next Steps**

Customer:
- Stand up test environment and synthetic accounts (~200 users) — Application Owner — 2026-08-01
- Stand up test harness, own pass/fail measurement — Identity Architect — 2026-08-03 (POC start)
- POC run — Identity Architect — 2026-08-03 through 2026-08-14
- Technical decision meeting — IT Director — 2026-08-18

SE / Vendor:
- Complete integration and policy configuration in customer test environment — SE — 2026-08-03 (POC start)
- Confirm POC readout with Identity Architect — SE — 2026-08-14
- Pose technical-win ask anchored to POC pass/fail result — SE — 2026-08-18

---

**POC Required**
Yes
Reason: Material customer-specific uncertainty (undocumented session layer, unreproducible network conditions) cannot be resolved by documentation, demo, or workshop — all attempted; bounded proposition with explicit success criteria, named owners, prepared dataset, defined environment, calendar window, and scheduled exit-decision event is agreed.

---

*Review each value against your own evidence before pasting — you own this record.*

---

One question: what is the account name? I'll use it to create the ledger file and offer to append this debrief block to it.
