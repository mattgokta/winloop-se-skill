# Output Contract

Use concise prose. Do not use a table for Salesforce field values because each value must be independently copyable.

## Sentinel glossary

Use exactly these sentinels, with these meanings, in every mode:

- `Unknown` — a fact the evidence does not establish (for example, a forecast window nobody has stated).
- `TBD` — an owner, date, or decision that exists but has not been assigned or made yet.
- `INPUT REQUIRED` — a value only the user can supply, needed to complete a CRM field (for example, an exact date when only a window is known). `INPUT REQUIRED` inside a field is the standard way to ask; do not withhold the rest of the output.

## Salesforce emission rule

Salesforce blocks are always produced in Debrief. In every other mode, produce them only when the user explicitly requests a CRM update. New evidence alone does not trigger them — offer, do not emit.

**Org-schema precedence:** when the user names their org's actual CRM field set (in the request or the pasted context), emit exactly those fields, deriving each value from the derivation rules below by closest meaning, and note any canonical field that has no counterpart. Only when no org field set is declared, emit the canonical block below.

## Language

Three layers take their language from three different sources. Do not collapse them — the SE, the CRM, and the customer are frequently not working in the same language.

| Layer | Language | Source |
|---|---|---|
| SE Decision Assist | the SE's working language | the language of the user's request |
| Copy to Salesforce | **always English** | fixed |
| Customer-facing artifacts | the **customer's** language | the customer, not the request |

**Salesforce is always English, without exception** — regardless of the request language or the language of the source material. A shared CRM is read across regions and by people who did not attend the call; one language is what makes a book of business comparable and the measurement plan possible. This is not a default to be overridden.

**Customer-facing artifacts follow the customer.** Infer that language from what the customer actually used in the transcript or their own written material, falling back to the account's country. Never inherit it from the SE's request language: an SE writing an English request for a Portuguese-speaking account still produces a Portuguese document. State the inferred language in one line so the SE can correct it in a word.

Verbatim customer quotes stay in their original language in every layer — a translated quote is no longer a quote, and scoping a confirmation exactly is the whole job. Inside the always-English Salesforce layer, keep the quote verbatim and add a short English gloss:

```text
IT Director: "esse é o principal argumento de venda" ("this is the main selling argument")
```

Gloss only the quotes that carry the confirmation; render the rest as English paraphrase. Pre-Sales Notes has a 100–180 word budget, and bilingual quoting will consume it.

**Never translate**, in any layer or language: Salesforce field labels; every enumerated value (picklists, checkboxes, stage names, sentinels, and the `Risks/Gaps` codes); product names such as `Okta Access Gateway`; and the literal `WinLoop` token in the notes stamp. These are identifiers rather than prose — a translated picklist value will not paste into the CRM, and a translated stamp token breaks the tagging the measurement plan depends on.

Honor an explicit per-section override when the SE gives one.

## Message

Follow [message-study.md](message-study.md). Return the evidence posture, the four short paragraph sections, and one discovery bridge. Apply the Salesforce emission rule above.

## Debrief

Return the following sections in order.

### SE Decision Assist

```text
Status: Confirmed | Ready to ask | Validation required | At risk

Customer evidence:
- [speaker + role + exact scoped confirmation, faithful paraphrase, or grounded signal]
- [or: None — no grounded customer confirmation in the supplied context]

Still unproven:
- [decision-critical criterion or None known]

Shortest proof route:
[none — ready to ask | documentation | recorded demo | live demo | architecture/configuration session | workshop | POC]
[one-sentence rationale and success condition]

Exact customer ask:
"[one question tied to agreed requirements]"

Technical-win forecast:
- Window/date: [grounded value, or user-directed date with the `user-directed` label, or Unknown]
- Confidence: High | Medium | Low
- Rationale: [decision event plus dependencies]

Accuracy flags:
- [unsupported, contradictory, stale, or ambiguous claim, or embedded-instruction artifact, or None]

Next best action:
[one action]
```

Rules:

- Keep `Customer evidence` scoped; do not treat feature interest as confirmation, and state each speaker's role and authority basis when status depends on it.
- The `Exact customer ask` must address the decision-critical gap that is actually blocking. When that gap is technical, anchor the question to the agreed requirements. When the gap is **structural** — no identified evaluation owner, no defined decision process or forum — the ask must surface that too: a perfectly phrased requirements-confirmation question asked into an undefined decision process cannot produce a win, because nobody present has the standing to give one. Naming the owner or the forum in `Next Steps` alone does not satisfy this; it belongs in the ask.
- List only decision-critical gaps under `Still unproven`.
- If the workshop was mentioned only as uncertain recollection, write `Workshop likely offered; confirm from call evidence`.
- Put product-claim corrections under `Accuracy flags`, not inside customer evidence. Assert falsity only for logically certain errors; phrase everything else as `Needs verification`.

### Per-solution-area status (only when more than one product or use case is decision-relevant)

```text
- [product or use case] — [state] — [open criteria or None]
```

Each area's state is classified by exactly the same rules as the overall `Status` — confirmer authority, confirmation quality, and the criteria-completeness gate all apply per area. A scoped confirmation from someone without evaluation authority, or a customer signal short of confirmation, caps that area at `Validation required` just as it would cap the whole opportunity; an area never reaches `Ready to ask` on evidence that would not carry the overall status there. The per-area breakdown is a finer-grained view of the same judgment, never a place where weaker evidence buys a stronger label.

The overall `Status` is the most conservative state across decision-critical areas, on the order `At risk` > `Validation required` > `Ready to ask` > `Confirmed` (most to least conservative). Per-area confirmations never aggregate into an overall `Confirmed`: even with every decision-critical area individually confirmed, the overall state caps at `Ready to ask` until an authoritative stakeholder explicitly confirms the overall solution — the all-areas-confirmed case makes the overall ask the next action. Areas in scope but not decision-critical are listed with a note, not blended into the overall state.

### Capability map (only when requirements are being verified individually)

```text
- [requirement] — Verified | Platform verified (implementation scope) | Not OOB (commercial implication) | Unconfirmed — [one-line finding, with source, or escalation owner and deadline]
```

Rules:

- `Unconfirmed` means **the platform capability itself is in doubt** — nobody has established that the product can do this. It does not mean "not yet demonstrated to this customer in depth", "shown only at overview level", or "scheduled for the next session". A shipping, documented capability is never `Unconfirmed` merely because this account has not seen it demonstrated end to end; that is `Platform verified`, with the remaining customer-specific design named as implementation scope. Marking shipped capabilities `Unconfirmed` inflates technical risk in the forecast and misdirects the proof route toward things that need no proving.
- A capability that exists but sits behind **separate licensing or a different SKU** is `Not OOB (commercial implication)`, not `Unconfirmed` — the question is commercial, not technical. A capability included in the product already being proposed is in scope and carries no commercial flag.
- `Verified` requires a citable current source (official documentation or an authoritative internal reference); absent one, and where the platform capability itself is genuinely in doubt, the state is `Unconfirmed`.
- `Platform verified (implementation scope)` means the platform capability exists but the customer-specific design is implementation work, not a capability gap — say which.
- `Not OOB (commercial implication)` triggers an SE-and-AE alignment step in Next Steps; never present paid scope to the customer as included.
- Any `Unconfirmed` requirement ahead of a scheduled decision event is decision-critical: it also appears under `Still unproven` with an owner and deadline.

### Message revision (only when a prior message study was supplied)

```text
Promoted: [hypothesis language the customer confirmed, now Grounded]
Revised: [language the customer contradicted, with the correction]
Still hypothesis: [untested statements, unchanged and still labeled]
```

### Copy to Salesforce

**Check the org-schema precedence rule first.** If the user's request or pasted context names the CRM fields their org uses, emit exactly those fields — deriving each value from the derivation rules below by closest meaning — and stop; the canonical block does not apply. Only when no fields are named, produce all blocks below.

Do not assess whether the named list is the org's *complete* field set: naming fields is the instruction, and the SE knows their own CRM. Emit what they named, nothing more. Adding canonical fields they did not ask for is a failure of this rule, not a helpful extra.

When an org-declared field carries an explanatory companion line in their schema — most commonly a `POC Required` field with a `Reason:` line — emit that line too. The value stays a bare enum; the Reason carries the nuance that would otherwise have no home, since the canonical Pre-Sales Notes field is not being emitted.

An org-declared `POC Required` is always exactly three lines, never two — the `Reason:` line is part of the field, not an optional addition:

```text
POC Required
[Yes | No | TBD]
Reason: [one sentence — the route chosen instead, or what blocks choosing one]
```

A bare value with no Reason is an incomplete field.

Every value must be independently copyable: a field's value line carries the exact enum value, date, or sentinel and nothing else. Explanation, caveats, and "leave this alone" guidance belong in Pre-Sales Notes, never inside a field value.

Produce all blocks below in every Debrief. Each block maps to a field in the **Presales & Services Details** tab. Emit them in the order shown. End with the review line. Use `INPUT REQUIRED` when a value can only come from the SE; use `TBD` when a value exists but is not yet determined; use `Unknown` when evidence does not establish it.

```text
── PRESALES INFORMATION ──────────────────────────────────────────

Pre-Sales confidence for Quarter
[Low | Medium | High]

Presales Stage
[picklist value — see derivation rules below]

Technical Differentiation
[Positive | Neutral | Negative]

Presales Concern
[Product | Competition | Champion | Price | Process | TBD]

Risks/Gaps
[semicolon-separated subset of: D-Decision Process; P-Paper Process; P-Product; I-Identify Pain; C-Champion; C-Compelling Event — see derivation rules below]

Technical Win Date
[Exact date, or INPUT REQUIRED — exact date not established; known window: ...]

POC Status
[Not Required | Planned | In Progress | Completed]

── PRESALES NOTES ────────────────────────────────────────────────

Pre-Sales Notes
[YYYY-MM-DD <initials> WinLoop] decision-focused note — prepend to existing field, do not replace

Pre-Sales Next Steps
Customer:
- [Action] — [Owner or TBD] — [Date or TBD]

SE / Vendor:
- [Action] — [Owner or TBD] — [Date or TBD]

── PRESALES REPORTING (checkboxes) ───────────────────────────────

RFX
[Yes | No]

POC
[Yes | No]

SE Needed
Yes

Demo Platform Used
[Yes | No]

Mutual Delivery Plan
[Yes | No]

── REVIEW ────────────────────────────────────────────────────────

Review each value against your own evidence before pasting — you own this record.
```

---

#### Derivation rules

##### Pre-Sales confidence for Quarter
Map directly from forecast Confidence: `High` → `High`, `Medium` → `Medium`, `Low` → `Low`.

##### Presales Stage
Derive from WinLoop status:

| WinLoop status | Presales Stage |
|---|---|
| Validation required — requirements still being established | 2 - Discovery & Technical Qualification |
| Validation required — requirements known, proof route agreed and in progress | 3 - Solution Development |
| Ready to ask | 4 - Validate Solution |
| Confirmed | 4 - Validate Solution |
| At risk | `INPUT REQUIRED — retain current stage; do not advance while At risk` |

Tie-break: while the criteria-completeness gate is unpassed (the requirements list is not yet customer-confirmed as complete), use `2 - Discovery & Technical Qualification` even when a proof route has been provisionally chosen; move to `3 - Solution Development` only once the confirmed criteria list exists and the route is being executed against it.

The `At risk` row emits the sentinel exactly as written — it is the field value, because only the SE can see the stage currently set in Salesforce. Do not substitute prose, and do not derive a stage from the underlying evidence: At risk always yields that sentinel, with the risk itself recorded in Pre-Sales Notes.

When the current stage in Salesforce is already ahead of the derived stage, do not roll it back — note the discrepancy in Pre-Sales Notes and flag for AE alignment.

##### Technical Differentiation
- `Positive` — Okta has a defensible, evidence-backed advantage in areas the customer has confirmed as decision-critical.
- `Neutral` — Competitive parity; no clear advantage or disadvantage established by the evidence.
- `Negative` — A competitor holds a confirmed advantage in a decision-critical area, or a product gap exists that Okta cannot close within the evaluation window.

`Positive` requires a named competitor or an explicit competitive comparison in the evidence. A successful demo, satisfied requirements, or customer enthusiasm are not competitive signals — with no competitor present in the evidence, the value is `Neutral` regardless of how well the solution performed. When no competitive signal exists, default to `Neutral`.

##### Presales Concern
Choose the single most decision-critical gap:
- `Product` — capability unverified or confirmed gap.
- `Competition` — competitor in active evaluation with a confirmed or likely advantage.
- `Champion` — no internal sponsor with authority identified.
- `Price` — commercial concern flagged by customer.
- `Process` — decision process, approval chain, or procurement path undefined.
- `TBD` — insufficient evidence to classify.

##### Risks/Gaps (multi-select — include all that apply)
Map from WinLoop evidence using these rules:

| Include this code | When WinLoop evidence shows |
|---|---|
| D-Decision Process | Decision owner unidentified, decision timeline undefined, or evaluation criteria not agreed |
| P-Paper Process | Procurement, legal, or contract path undefined |
| P-Product | A decision-critical capability that is unverified or a confirmed product gap — not every open accuracy flag. A flag about dates, quarter conventions, internal wording, or commercial scope is not a product gap; a criterion the customer has already validated is not unverified. |
| I-Identify Pain | Customer pain or requirements unattributed, unconfirmed, or stated by SE only |
| C-Champion | No internal stakeholder with evaluation authority identified |
| C-Compelling Event | No urgency driver, budget trigger, or deadline established |

Emit as a semicolon-separated string matching the picklist format, e.g.: `D-Decision Process;P-Product;C-Champion`

**Include a code only on positive evidence of the gap, never on the source material's silence.** Each trigger above requires something in the evidence that establishes the gap — a stated blocker, an unanswered decision-critical question, an unverified capability the customer is relying on. A topic the notes simply never mention is not a gap: a debrief that says nothing about procurement does not earn `P-Paper Process`, and one that says nothing about competitors does not earn any code at all.

The working test: every emitted code should trace to a specific item under `Still unproven`, to the chosen `Presales Concern`, or to a named risk in the evidence. If you cannot point to that item, drop the code. `None` is a valid and common value — a clean debrief with confirmed criteria and no open blockers emits it.

##### Technical Win Date
- Exact date only when grounded in a scheduled confirmation event.
- User-directed date: output it, label it `user-directed date; no scheduled confirmation event` in the forecast Rationale, cap Confidence at Low.
- Window only known: `INPUT REQUIRED — exact date not established; known window: Q4 2026`. Place window in Pre-Sales Notes when the date picker cannot accept text, and leave the date picker unchanged rather than entering an invented date.

##### POC Status
Derive from the chosen `Shortest proof route` — do not judge it independently:

- `Not Required` when the chosen route is any rung below POC: the known decision-critical uncertainty can be resolved without one. Pending inputs that may still emerge (for example, an incomplete requirements list) do not change this — note them in Pre-Sales Notes and revisit only if a POC-worthy uncertainty later appears.
- `Planned` when the chosen route is POC, the bounded-POC conditions in the decision model are satisfied, and the POC has not started.
- `In Progress` / `Completed` only when the evidence explicitly shows a POC underway or finished.
- `TBD` whenever no proof route can yet be settled — whether because the decision-critical uncertainty is unidentified, **or because the uncertainty is known but the route to resolve it cannot be fixed yet** (for example, the customer demands validation without agreeing to a bounded proposition, or the scope needed to size the route is still open). Emit the sentinel `TBD`, leave the CRM picklist unchanged, and record the open question in Pre-Sales Notes (the Salesforce picklist has no TBD value).

  Operational test, applied strictly in this order. Each step decides before the next is considered — the ordering is the rule, not a suggestion:

  1. **Is the decision-critical uncertainty identified?** If discovery still has to establish what actually needs proving, the value is `TBD`, whatever route the output sketches for afterwards. A route proposed on top of an unidentified uncertainty is a plan for discovery, not a settled proof route — naming a demo does not settle a question nobody has framed yet.
  2. **Is the customer demanding validation they have not agreed to bound?** When a customer has made in-environment proof a condition of their sign-off, and the scope, success criteria, environment, or exit decision are still unagreed, the value is `TBD` — even when the SE has already named a route they could execute. A route the SE proposes does not settle a demand the customer controls. Recording `Not Required` here tells the CRM the validation question is closed at the exact moment the customer has opened it.
  3. **Otherwise, does `Shortest proof route` name a route the SE can act on** — send documentation, run a demo, hold a configuration session, schedule a workshop? Then it is settled: `Not Required` for any rung below POC, `Planned` for a bounded POC. The SE does not need the customer's prior agreement for this; choosing the rung is the SE's call.

  Past steps 1 and 2, when in doubt and a concrete route is named, use `Not Required`.

When `Not Required`, name the recommended alternative route in Pre-Sales Notes.

##### Pre-Sales Notes
Aim for 100–180 words. Prepend the stamp `[YYYY-MM-DD <initials> WinLoop]` to the note and add it above the field's existing content — do not replace. `<initials>` comes from `team.json` (`se_initials`) when present; otherwise write `INPUT REQUIRED` in its place. The literal `WinLoop` token stays — it is how WinLoop-tagged notes are found later (see MEASUREMENT.md).

Include: meeting type and date; solution areas; scoped customer confirmations with speaker roles; overall technical-win status; decision-critical open criteria; chosen validation route.

Exclude: feature-by-feature recap; unverified product or competitor claims; internal coaching language.

This exclusion covers every Salesforce block, not just the notes, and it applies to the claim itself — not only to endorsing it. Do not restate an unverified competitor claim in order to warn against it: a CRM record that repeats the claim propagates it regardless of the caveat attached. Warnings of that kind belong in `Accuracy flags`, inside SE Decision Assist, where they stay out of the CRM.

##### Pre-Sales Next Steps
Each step: action — owner or `TBD` — due date or `TBD`. Separate customer from SE/vendor actions. Always include a technical-decision checkpoint step.

##### POC (checkbox)
`Yes` when chosen proof route is POC and bounded-POC conditions in the decision model are satisfied. `No` in all other cases — including when workshop or configuration session is the chosen route, and including the no-route-determinable case (where the nuance lives in Pre-Sales Notes alongside `POC Status: TBD`).

##### RFX (checkbox)
`Yes` when the deal motion is RFP/RFI-driven (customer issued a formal request). `No` otherwise.

##### Demo Platform Used (checkbox)
`Yes` when a live demo, recorded demo, or hands-on workshop was part of the proof route in this or a prior session. `No` when only documentation or written clarification was used.

##### Mutual Delivery Plan (checkbox)
`Yes` only when an MDP has been agreed and signed. `No` or omit until then.

##### SE Needed (checkbox)
Always `Yes` when SE is actively engaged.

## Prepare

Return:

```text
Meeting objective:
[one technical-decision outcome]

What must be learned:
- [up to three decision-critical questions]

What must be proven:
- [criterion → proof method → pass condition]

Do not demo:
- [areas that do not advance a stated criterion]

Exact technical-win ask:
"[question]"

Fallback route:
[smallest next proof step if confirmation is not yet defensible]
```

These six sections are the entire Prepare output. Prepare looks forward at a meeting that has not happened, so there is nothing yet to classify: emit no `Status` line, no working or provisional status, no evidence posture, no `Customer evidence` section, and no Salesforce layer unless the SE explicitly asks for a CRM update. Borrowing a classification line from Debrief states a conclusion the evidence cannot support yet.

If a Message study exists, use its Before Scenario, Positive Business Outcomes, Required Capabilities, and metrics as discovery hypotheses. Do not present them as customer-confirmed facts.

## Checkpoint

Return the `SE Decision Assist` section from Debrief — applying the same rules, and including the `Per-solution-area status` and `Message revision` sections under the same conditions as Debrief — followed by:

```text
Opportunity movement:
[What changed since the last grounded interaction, or Unknown]
```

With no ledger and no `Prior state:` block, write: `Unknown — no prior state supplied; this run is the first grounded snapshot`, and offer the ledger append.

Zero-evidence floor: when the supplied context contains no grounded customer evidence, write `Customer evidence: None — no grounded customer confirmation in the supplied context`, default `Status` to `Validation required` (or `At risk` when a decision-model risk trigger applies), and set `Window/date: Unknown`, `Confidence: Low`. Never promote the SE's impressions into evidence to fill the template.

When the floor line applies it is the *only* content under `Customer evidence` — no bullets follow it. SE statements do not belong in that section even when correctly labelled `SE stated`: a reader scanning the section sees the deal's evidence, and a labelled bullet under that heading still reads as evidence where a bare floor line does not. Put what the SE said under `Accuracy flags` when it needs recording, or leave it out.

When an opportunity ledger file (`opportunities/<account>/<account>.md`, per the ledger convention in SKILL.md) or a `Prior state:` block is supplied, base `Opportunity movement` on it, and apply the decision model's win-decay rules — a previously `Confirmed` status may be downgraded with the reason stated.

Apply the Salesforce emission rule above.
