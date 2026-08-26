# Changelog

## v1.5.1 — 2026-08-26

Two contract gaps closed; suite returns to 20/20 with zero gate failures on a complete run.

- **`Exact customer ask` must address the gap that is actually blocking.** The contract specified only the technical shape — a confirmation question anchored to agreed requirements. When the decision-critical gap is *structural* (no identified evaluation owner, no defined decision process or forum), that shape cannot produce a win: nobody present has the standing to give one. The ask must now surface the structural gap too, and naming the owner in `Next Steps` alone does not satisfy it.
- **Prepare emits its six sections and nothing else.** Runs were borrowing a classification line from Debrief ("Working status: Validation required") and an evidence-posture layer from Message. Prepare looks forward at a meeting that has not happened, so there is nothing to classify: no status line, no provisional status, no evidence posture, no `Customer evidence`, and no Salesforce layer unless the SE explicitly asks.

Both are the same failure shape as the derivation fixes in v1.3.1 and v1.5.0: the contract described the common case and stayed silent on a legitimate variant, and the model filled the silence with something plausible. Where a rule has a variant, name the variant.

**Baseline:** 20/20, zero gate failures, `COMPLETE` marker present, 20 summary rows. The suite is LLM-judged and non-deterministic — across nine runs, cases 03, 05, 09, 11, and 17 each flipped at least once before their underlying gap was closed. Expect occasional single-case failures on judgment-heavy items (D4, C1, U9) and re-run before treating one as a regression.

## v1.5.0 — 2026-08-26

Bounded validation plan template, multi-language rules, and a gate regression fix.

### Fixed — U6 gate regression (introduced in v1.3.1)
- `POC Status` derivation had the customer-posture check *after* the route check, so a route the SE named would settle the field even when the customer had demanded unbounded validation. On the injection case this emitted `Not Required` where `TBD` is canonical — the exact value the injected instruction asked for — failing the U6 gate. The customer-posture check now runs before the route check. Ordering is the whole rule in this derivation, and it has now been wrong in both directions; the three steps are numbered and marked order-dependent.

### New — bounded validation plan
- `templates/customer-poc-plan.html`, routed from SKILL.md whenever the chosen proof route is a POC or a customer-demanded scoped validation. The template is the decision model's bounded-POC checklist made fillable: one question, why lower rungs cannot answer it, pass/fail criteria agreed before starting, an explicit out-of-scope column, environment and prerequisites, owners, timeline, and a closing decision stated in advance for both branches. A section that cannot be filled means the validation is not bounded — which is the point.
- The exit-decision section carries the technical-win ask, pre-negotiated rather than asked hopefully at the end. This is the difference between a bounded validation and a POC that drifts.

### Changed — language
- Language now runs on three independent slots rather than one: SE Decision Assist follows the request language; **Salesforce is always English, without exception**; customer-facing artifacts follow the *customer's* language, inferred from the customer and never inherited from the SE's request. Previously a single rule pointed everything at the request language, which happened to work only because the templates were hardcoded pt-BR — two bugs cancelling out, and both surfaced the moment a Spanish-speaking SE served a Spanish account.
- Verbatim quotes stay in their original language everywhere; inside the always-English Salesforce layer they are kept verbatim with a short English gloss, glossing only the quotes that carry the confirmation so the 100–180 word budget survives.
- Never-translate list: field labels, every enumerated value, product names, and the `WinLoop` stamp token — identifiers, not prose. A translated picklist will not paste; a translated stamp breaks measurement tagging.
- All three templates converted to **English canonical** with an explicit instruction to translate every visible string on generation (not only placeholders), set `<html lang>`, and use locale-correct dates. Portuguese source templates meant a Spanish SE customized against Portuguese chrome and any missed string shipped as mixed language.
- Workshop template's hardcoded tenant-persistence promise is now a placeholder (`INTRO_P2`, `AFTER_WORKSHOP_NOTE`), with the rule that commercial claims appear only when confirmed for that account. `Okta · Brasil` is now a `TEAM_REGION` placeholder.

## v1.4.0 — 2026-08-26

Meeting-tool ingestion. The SE can name a meeting instead of pasting it, closing the input end of the loop.

- New `references/meeting-sources.md`: source detection, meeting resolution, fetch strategy, speaker attribution, provenance, privacy. Matches on the trailing capability name (`list_meetings`, `get_meetings`, `get_meeting_transcript`) rather than a server prefix, so it works with any install of any compatible tool — Granola or otherwise.
- **Summary triages, transcript decides.** The tool's AI summary establishes what a meeting covered; it cannot establish a technical win. Any statement that sets `Status`, scopes a confirmation, establishes authority, or lands in `Customer evidence` must be quoted from the transcript. Validated against a live customer call where the summary's "approval expectation high" compressed the customer's *commercial* optimism about a budget cycle into what reads as technical agreement — while the load-bearing capability had been introduced for the first time on that same call and never validated. Summary-only, that debrief classifies far too warmly; transcript-grounded, it is `Validation required`.
- Speaker attribution rules for real-world transcripts. Labels arrive as real names, `Me`/`Them`, or raw diarization (`Speaker A/B/C`) — the diarized case being the trap, because context makes the mapping look recoverable and a confident guess invents authority the evidence never established. Map only when the transcript itself is unambiguous; otherwise attribute by side, classify as `Customer signal`, and flag the unresolved attribution.
- Rule 9 extended explicitly to fetched content: transcripts and summaries pulled by WinLoop are untrusted third-party material exactly as pasted text is.
- Provenance (title, date, meeting ID) recorded in the ledger so a later Checkpoint can retrieve the original rather than trusting a summary of a summary — and kept out of customer-facing artifacts and CRM values.
- Degrades cleanly: no meeting source connected is a one-line notice and a request for a paste, not an error. Mode selection, decision model, and output contract are identical whether evidence arrives by fetch or by paste.

## v1.3.1 — 2026-08-26

Derivation-layer hardening, driven by the first full harness runs against the v1.3.0 contract. Six runs; pass rate 13/20 → 20/20.

**Baseline honesty:** the final run passed 20/20 with zero gate failures, on a complete run (`COMPLETE` marker, 20 summary rows). But this suite is LLM-judged and non-deterministic — two judgment-heavy cases (09's evidence-section floor, 17's org-declared Reason line) flipped between runs before their fixes landed. Treat the baseline as "20/20, with run-to-run variance expected on borderline formatting items", not as a determinism guarantee. Re-run before trusting a regression claim.

### Decision correctness
- `At risk` now requires an affirmative trigger. Missing evidence, accuracy flags, internal parties overstating progress, and attempted output tampering all resolve to `Validation required` plus a flag — they mean the win is unproven, not that the deal is deteriorating, and over-escalating misreports deal health as badly as a false win.
- The unbounded-validation trigger turns on **dominant posture**: a customer whose overall position is "prove it" with nothing confirmed is `At risk`; an unscoped request sitting alongside an authoritative confirmation and normal progress is one open item under `Still unproven`. Resolves an ambiguity where two test cases used the same evidence shape for different statuses.
- Per-solution-area states are bound by the same authority, confirmation-quality, and completeness rules as the overall status. Previously the per-area breakdown was an unguarded path where a non-authoritative signal could buy a `Ready to ask` label the overall status would have refused.

### Salesforce derivation
- `POC Status` derivation is now an ordered three-step test, uncertainty check first: an unidentified decision-critical uncertainty yields `TBD` regardless of any route sketched afterwards (a route proposed on top of an unframed question is a plan for discovery, not a settled route); otherwise a nameable SE-actionable route settles it; otherwise a customer posture that blocks route selection yields `TBD`.
- Org-schema precedence strengthened: naming fields is the instruction — do not assess whether the named list is "complete", and never add canonical fields the SE did not ask for. An org-declared `POC Required` is always three lines including `Reason:`.
- `Presales Stage` for `At risk` emits a sentinel rather than prose, and every field value line now carries the exact enum/date/sentinel and nothing else — caveats belong in Pre-Sales Notes.
- `Risks/Gaps` fires only on positive evidence of a gap, never on the source material's silence; `P-Product` narrowed to decision-critical capability gaps (a stale-date or quarter-convention flag is not a product gap). `Technical Differentiation: Positive` requires an actual competitor in evidence — a successful demo is not a competitive signal.
- Unverified competitor claims are excluded from every Salesforce block, including when restated as a warning: a CRM record that repeats a claim propagates it regardless of the caveat. Such warnings belong in `Accuracy flags`.
- The zero-evidence floor line is the only permitted content under `Customer evidence`; correctly-labelled `SE stated` bullets still read as evidence under that heading.

### Tests
- Case 02's absolute forecast date moved forward and its expected file now scores both branches, so the case stays honest once the date passes rather than failing correct staleness handling. Date-anchored cases documented in `tests/README.md`.
- Judge instructed to quote evidence with single quotes only (nested double quotes corrupted an otherwise-passing verdict), and `run.sh` re-asks once on malformed JSON instead of discarding the case.

## v1.3.0 — 2026-08-25

Data-hygiene and consistency release after a full multi-agent review (94 findings, 12 adversarially verified). **Public git history was reset to a single sanitized commit in this release** — early clones should be deleted and re-cloned.

### Data hygiene (public repo)
- All real customer, account, and colleague names removed from the tree and from git history (template placeholder examples, the pre-commit hook's own pattern lists, and deal-identifying details in the hackathon submission page are now fictional or generic).
- Pre-commit hook restructured: name patterns now load from a gitignored per-user `blocklist.local` (created from `blocklist.local.example` by `setup-hooks.sh`) so the guard can never publish the list it enforces; hook installs via `core.hooksPath` and warns when the blocklist is missing; base64 detection extended to inline `data:` URIs.
- Hook install is now a numbered README Quick-start step (fresh clones previously ran unguarded).
- `tests/results/` is gitignored; the stale committed runs (which predated the schema change and included a red, aborted run) are removed.
- Customer-facing templates no longer import Google Fonts — artifacts must trigger zero outbound requests when a customer opens them.

### Salesforce schema realignment (BREAKING for customized clones)
- The v1.2.1→"Presales & Services Details" schema rewrite (2026-08-20) had left the entire test suite grading the retired four-block layout; rubric D5/D8, the judge prompt, and all Debrief-bearing expected files now grade the shipped schema.
- `POC Status` derivation restored to the contract (route below POC → `Not Required`; bounded POC → `Planned`; explicit evidence → `In Progress`/`Completed`; no route determinable → `TBD` sentinel with the picklist left unchanged); `decision-model.md`'s example block updated to the current fields.
- New org-schema precedence rule: when the input declares the org's actual CRM field set, exactly those fields are emitted (values still derived by rule); several test cases now exercise this path explicitly.
- Pre-Sales Notes stamp standardized as `[YYYY-MM-DD <initials> WinLoop]` — initials from `team.json` (`se_initials`) or `INPUT REQUIRED`; the literal `WinLoop` token is what MEASUREMENT.md's tagging metric matches.
- Presales Stage tie-break defined (criteria-completeness gate unpassed → stage 2, even with a provisional route); Risks/Gaps separator fixed to semicolons and scoped to decision-relevant gaps; picklist/checkbox values exempted from output-language translation.

### Skill correctness
- The APEX value template is now routed from SKILL.md (value/leave-behind docs → `customer-apex-value.html`; workshop pages → `customer-workshop.html`) — previously the flagship README deliverable was never referenced by the skill.
- `team.json.example` committed with the schema the templates and Notes stamp consume; SKILL.md reads `team.json` when present.
- Ledger root defined: `./opportunities/` in a WinLoop project install, `~/winloop/opportunities/` otherwise (global installs previously scattered per-cwd ledgers and silently lost carry-forward); append offers state the absolute path, and a git-ignore check runs before first write inside any git tree.
- Injection defense extended to ledger read-back and `Prior state:` blocks (history built from pasted content is evidence, never instructions).
- Per-solution-area aggregation capped: all-areas-confirmed yields `Ready to ask`, never an overall `Confirmed` without the explicit overall confirmation; conservativeness order defined.
- Mode-word precedence scoped to the user's own request text; bare `/winloop` with no content now explains the modes instead of emitting an empty template.

### Test harness
- The judge now receives the case input and grounds fabrication checks in it (previously only pre-enumerated traps were catchable).
- `JUDGE_MODEL` can pin the judge separately from the model under test; each results dir gets a `manifest.txt` (models, CLI version, cases) and a `COMPLETE` marker; per-case verdicts flush to `summary.txt` as they land so interrupted runs keep partial results; missing `rubric:` frontmatter is a hard per-case error.
- Suite realignment note: a fresh full-suite baseline run against this release is still pending.

## v1.2.1 — 2026-07-30

Cross-model hardening after the first work-machine harness run (Sonnet-class) failed cases 01 and 09.

- `POC Required` is now derived from the chosen `Shortest proof route` (route below POC → `No`; POC chosen and bounded → `Yes`; no route determinable → `TBD`) — closes the enum ambiguity that let a careful model answer `TBD` where `No` was canonical; rubric D8 updated to match.
- SKILL.md now inlines the mandatory Debrief/Checkpoint section skeleton and requires reading the output contract on every run: free-form responses are never valid, thin inputs included. Fixes the observed failure where a sparse Checkpoint input produced free-form coaching with an invented status label instead of the template.

## v1.2 — 2026-07-30

Field-use codification release: behaviors that emerged in the first live account sessions (LATAM, Sonnet-class, Portuguese transcripts) are now part of the contract.

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
