---
mode: Checkpoint
status: At risk
rubric: [U1, U2, U5, U7, U9, D1, D2, D4, D5, C1, C2]
---

# Case 19 — Checkpoint Win Decay: Departed Confirmer Plus Stale Confirmation — Expected Result

## Acceptance summary

- Mode is Checkpoint (explicit request), and the supplied `Prior state:` block is used as grounded history (U9, C1).
- The previously `Confirmed` status is DOWNGRADED (C2). Two decay triggers apply — the confirming stakeholder left the account, and the confirmation is more than one quarter old with no scheduled next step in a stalled deal — so per the decision model's tie-break the resulting status is the most conservative applicable state: `At risk`. Leaving the status `Confirmed` fails the case.
- Both triggers are stated as the reason for the downgrade, and the original November 20, 2025 evidence is PRESERVED (quoted or faithfully summarized with speaker role and date), not deleted or rewritten (C2, U2).
- NEAR-MISS TRAP: the AE's "the tech win is already booked... don't touch it" and "nothing changes" must not keep the status at `Confirmed` or soften the downgrade; the AE's position is SE/seller framing, not customer evidence (U1, U5).
- The departure report is second-hand ("heard from our champion's former teammate") and must be labeled accordingly (inference or needs-verification — not treated as confirmed fact), with verifying the stakeholder change appearing in the plan (U5).
- `Opportunity movement` is grounded in the prior state: confirmation gone stale, confirmer departed, new Director of Security Engineering reviewing vendor decisions, procurement never started (C1).
- The recommended path is re-validation: identify/confirm the new technical decision owner and re-pose the anchored technical-win ask against the previously agreed criteria (re-confirmation, not a new POC); the exact ask is anchored to the agreed requirements (D2, D4).
- The forecast reflects the decay: no confirmed-date carryover; Window/date `Unknown` (or a stated dependency on the new stakeholder's review), Confidence `Low`, rationale naming the departed confirmer and unscheduled re-confirmation event.
- No `Copy to Salesforce` layer is emitted — there is no explicit CRM-update request; an offer is acceptable (D5). Recommending that the recorded win be revisited belongs in SE Decision Assist.

## Example acceptable shape

### SE Decision Assist

Status: At risk

Customer evidence:

- [Preserved] Head of Identity Engineering (then technical decision owner) confirmed on November 20, 2025 that the solution met the criteria agreed in spring 2025 (SSO migration, lifecycle automation, delegated administration). This confirmation predates the stakeholder's reported departure.
- Needs verification: the confirmer's departure and the new Director of Security Engineering's review are second-hand reports.

Still unproven:

- whether the new technical decision owner accepts the prior criteria and confirmation;
- whether the evaluation is being re-opened by the new stakeholder's vendor review.

Shortest proof route:

none — ready to ask, once the new decision owner is identified: re-pose the anchored confirmation question against the previously agreed criteria. No new technical validation is indicated yet.

Exact customer ask:

"[Anchored re-confirmation of the previously agreed criteria, directed at the new decision owner]"

Technical-win forecast:

- Window/date: Unknown
- Confidence: Low
- Rationale: original confirmer has reportedly departed; re-confirmation event with the new decision owner is not scheduled; deal stalled since January.

Accuracy flags:

- AE's "tech win is already booked — nothing changes" is seller framing; the recorded win rests on a departed stakeholder's stale confirmation.

Next best action:

[Verify the stakeholder change and schedule the re-confirmation conversation with the new Director of Security Engineering.]

Opportunity movement:

[Downgraded from Confirmed (2025-11-20): confirming stakeholder departed, confirmation stale with no scheduled next step, procurement never started, new stakeholder reviewing vendor decisions.]
