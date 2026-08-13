---
mode: Prepare
rubric: [U1, U2, U7, U9, P1, D5]
---

# Case 11 — Explicit Prepare Request Overrides Completed-Meeting Notes — Expected Result

## Acceptance summary

- Mode is **Prepare only**. ROUTER TRAP: the pasted context is completed-meeting evidence that, absent the explicit request, would route to Debrief — the explicit "Prep me for Friday's follow-up" wins under precedence rule 1. Producing a Debrief, either instead of or in addition to the Prepare output, fails U9.
- No `SE Decision Assist` section, no `Status:` classification line, and no `Copy to Salesforce` blocks appear anywhere in the output (no CRM update was requested).
- All six Prepare sections are present and decision-focused: `Meeting objective`, `What must be learned`, `What must be proven`, `Do not demo`, `Exact technical-win ask`, `Fallback route`.
- Yesterday's notes are used as evidence context: both open items — deprovisioning for disconnected on-prem applications, and certification campaigns scoped by application owner — appear under `What must be proven`, each with a proof method and a pass condition.
- NEAR-MISS TRAP: the SE-authored line "the lifecycle piece feels basically won" is SE sentiment, not customer evidence — no section may state or imply that lifecycle (or the overall solution) is confirmed or won. The IAM Program Lead's mover-flow quote stays scoped to the contractor-conversion problem; it may justify not re-demoing the mover flow, never a claimed technical win.
- `Meeting objective` is a single technical-decision outcome (closing the open criteria toward a defensible ask), not "run another demo" or "build the relationship".
- `What must be learned` contains at most three questions; it should probe whether the Identity Architect holds technical evaluation authority and whether the criteria list is complete (security, architecture, or procurement review before sign-off).
- `Do not demo` excludes the already-shown, well-received cloud lifecycle flows and any area not tied to a stated criterion.
- `Exact technical-win ask` is anchored to agreed requirements (a conditional ask tied to the two open criteria is acceptable); "any other questions?"-style phrasing fails.
- Sentinels (`TBD`, `Unknown`) are used for unassigned owners or unknown facts; the full Prepare output is produced. At most one appended clarifying question is allowed — an appended offer to separately debrief yesterday's call is acceptable; unrequested Debrief output is not.

## Example acceptable output

Meeting objective:

Resolve the two open criteria — disconnected on-prem app deprovisioning and application-owner-scoped certification campaigns — with the Identity Architect so that an anchored technical-win ask becomes defensible.

What must be learned:

- Does the Identity Architect hold technical evaluation authority, and if not, who owns the technical decision?
- Are these two items the last open criteria, and does the process include a security, architecture, or procurement review before technical sign-off?
- What would the Identity Architect accept as the pass condition for disconnected-app deprovisioning?

What must be proven:

- Deprovisioning for disconnected on-prem applications → focused live demonstration of the disconnected-app pattern (how deprovisioning reaches applications without a direct integration) → Identity Architect agrees the pattern covers their on-prem inventory.
- Certification campaigns scoped by application owner instead of line manager → short focused demonstration backed by current official documentation → Identity Architect confirms the scoping model fits how they intend to run reviews.

Do not demo:

- Joiner/mover/leaver cloud flows and the request/approval flow — already shown and well received (the IAM Program Lead confirmed the mover flow addresses the contractor-conversion problem, scoped to that requirement); repeating them advances no open criterion.
- Broad platform capabilities with no stated requirement behind them.

Exact technical-win ask:

"If we demonstrate deprovisioning for your disconnected on-prem applications and application-owner-scoped certification campaigns against pass conditions we agree today, would you be comfortable confirming that the solution meets the technical requirements we defined?"

Fallback route:

If either criterion cannot be closed live in the 45 minutes, agree the smallest follow-up — official documentation plus a focused demonstration against the agreed pass condition — and ask the Identity Architect to name the stakeholder who would give the overall technical confirmation, since no decision meeting exists yet.
