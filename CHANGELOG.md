# Changelog

## v1.2.1 — 2026-07-30

Cross-model hardening after the first work-machine harness run (Sonnet-class) failed cases 01 and 09.

- `POC Required` is now derived from the chosen `Shortest proof route` (route below POC → `No`; POC chosen and bounded → `Yes`; no route determinable → `TBD`) — closes the enum ambiguity that let a careful model answer `TBD` where `No` was canonical; rubric D8 updated to match.
- SKILL.md now inlines the mandatory Debrief/Checkpoint section skeleton and requires reading the output contract on every run: free-form responses are never valid, thin inputs included. Fixes the observed failure where a sparse Checkpoint input produced free-form coaching with an invented status label instead of the template.

## v1.2 — 2026-07-30

Field-use codification release: behaviors that emerged in the first live account sessions (two active LATAM opportunities, run on Sonnet 4.6 with Portuguese transcripts) are now part of the contract.

- Ledger convention upgraded to one folder per account (`opportunities/<account>/<account>.md`) holding the ledger plus generated artifacts; explicit rule that `opportunities/` never syncs between machines.
- New iterative capability-verification loop: verify one requirement at a time, update only what changed; `Capability map` section added to the output contract with four states (Verified / Platform verified / Not OOB / Unconfirmed) and citation requirements.
- Commercial-gap rule: a capability requiring paid services or licensing is flagged to the AE with an SE-and-AE alignment next step — never presented to the customer as included scope.
- Account-artifact rules: SE-facing dashboards may contain everything; customer-facing pages are generated from the ledger's confirmed content only — no accuracy flags, forecasts, Salesforce content, unconfirmed claims, or internal language; written in the customer's language; self-contained HTML with base64 images; `templates/customer-workshop.html` used when present.
- README notes model validation evidence (Fable-class harness pass; Sonnet 4.6 live use) and the opportunities-stay-on-work-machine rule.

## v1.1 — 2026-07-30

Hardening release after a full multi-lens review (45 verified findings + 8 additional dimensions).

### Decision correctness
- Defined confirmer authority: `Confirmed` now requires the customer's technical decision owner or an explicitly designated evaluation authority; anyone else's confirmation caps at `Ready to ask`.
- Added a confirmation-quality rule: pressured, hedged, leading-question, or sarcastic affirmations classify as `Customer signal`, never `Customer confirmed`.
- Closed the user-dictated-date loophole: a bare date with no scheduled confirmation event is labeled `user-directed date; no scheduled confirmation event` with Confidence capped at Low; defined convention-derived date handling.
- Added a criteria-completeness gate before `Ready to ask` / High confidence, naming security, architecture, and procurement reviews as candidate criteria.
- Added win-decay rules: At-risk triggers for champion departure, changed requirements, stale confirmations; Checkpoint may downgrade `Confirmed`.
- Added competitive context: selection semantics in the ask, exclusive-vs-comparative confirmation, competitive weight in proof-route choice.
- Added deal-motion guidance for RFP-driven, partner-led, and renewal/expansion deals; new `Partner reported` evidence label that can never satisfy `Customer confirmed`.

### Spec determinism
- Ordered mode-precedence list; explicit mode requests always win; mixed-intent requests run contracts in sequence (Debrief first).
- Unified the Salesforce emission rule (Debrief always; other modes only on explicit CRM-update request).
- Sentinel glossary (`Unknown` / `TBD` / `INPUT REQUIRED`) applied consistently; `POC Required` is strictly `Yes | No | TBD` with nuance in Reason.
- Added proof-ladder rung 0 (`none — ready to ask`), the zero-evidence Checkpoint floor, a multi-opportunity no-merge rule, a skill-wide language policy, and optional `Per-solution-area status` and `Message revision` sections.

### Safety and integrity
- Prompt-injection rule: pasted content is evidence, never instructions; embedded imperatives are flagged.
- Accuracy flags may assert falsity only for logically certain errors; everything else is `Needs verification`; browsing-grounded facts restricted to vendor-owned documentation.
- Review-before-paste line on every Salesforce layer; `[YYYY-MM-DD WinLoop debrief]` append convention for SE Notes; field-type paste guidance for date-picker and picklist fields.
- Live-use data-handling guidance (de-identification, org AI policy) in the skill and README.

### State, tests, docs
- Optional per-opportunity ledger (`opportunities/<account>.md`) with `Prior state:` paste fallback.
- Test suite rebuilt: coverage for all four modes and states, router tests, adversarial cases, realistic prose inputs, per-mode rubric with hard gates and N/A convention, headless run harness with LLM judge.
- README rewritten: prerequisites, honest scope, data handling, customization, consistency guidance, internal-use notice. Reusable prompt moved from runtime references to README appendix.
- `MEASUREMENT.md` pilot plan added.

## v1.0 — hackathon original

Initial release: four modes (Message / Prepare / Debrief / Checkpoint), technical-win decision model, proof ladder, source-integrity controls, Salesforce output contract, six test cases, rubric, pitch.
