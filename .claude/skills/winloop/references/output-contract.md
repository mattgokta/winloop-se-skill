# Output Contract

Use concise prose. Do not use a table for Salesforce field values because each value must be independently copyable.

## Sentinel glossary

Use exactly these sentinels, with these meanings, in every mode:

- `Unknown` — a fact the evidence does not establish (for example, a forecast window nobody has stated).
- `TBD` — an owner, date, or decision that exists but has not been assigned or made yet.
- `INPUT REQUIRED` — a value only the user can supply, needed to complete a CRM field (for example, an exact date when only a window is known). `INPUT REQUIRED` inside a field is the standard way to ask; do not withhold the rest of the output.

## Salesforce emission rule

Salesforce blocks are always produced in Debrief. In every other mode, produce them only when the user explicitly requests a CRM update. New evidence alone does not trigger them — offer, do not emit.

## Language

Write the output in the language of the user's request. Verbatim customer quotes stay in their original language. Honor an explicit per-section override such as "Salesforce fields in English." If the request and the source material are in different languages and no preference is stated, produce the Salesforce blocks in the language of the user's request and note the choice.

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
- List only decision-critical gaps under `Still unproven`.
- If the workshop was mentioned only as uncertain recollection, write `Workshop likely offered; confirm from call evidence`.
- Put product-claim corrections under `Accuracy flags`, not inside customer evidence. Assert falsity only for logically certain errors; phrase everything else as `Needs verification`.

### Per-solution-area status (only when more than one product or use case is decision-relevant)

```text
- [product or use case] — [state] — [open criteria or None]
```

The overall `Status` is the most conservative state across decision-critical areas. Areas in scope but not decision-critical are listed with a note, not blended into the overall state.

### Capability map (only when requirements are being verified individually)

```text
- [requirement] — Verified | Platform verified (implementation scope) | Not OOB (commercial implication) | Unconfirmed — [one-line finding, with source, or escalation owner and deadline]
```

Rules:

- `Verified` requires a citable current source (official documentation or an authoritative internal reference); otherwise the state is `Unconfirmed`.
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

Always produce four separate blocks, even if a value is unknown, and end the layer with the review line shown below.

```text
Technical Win Forecast Date
[Exact date, or INPUT REQUIRED — exact date not established; known window: ...]

SE Notes
[YYYY-MM-DD WinLoop debrief] [Decision-focused note]

Next Steps
Customer:
- [Action] — [Owner or TBD] — [Date or TBD]

SE / Vendor:
- [Action] — [Owner or TBD] — [Date or TBD]

POC Required
[Yes | No | TBD]
Reason: [one sentence]

Review each value against your own evidence before pasting — you own this record.
```

#### Field-type paste guidance

- **Technical Win Forecast Date** is typically a Salesforce date picker: `INPUT REQUIRED — ...` cannot be entered there. When only a window is known, leave the date field unchanged in Salesforce and place the window plus the `INPUT REQUIRED` note at the top of SE Notes instead. Enter an exact date only when one is defensible under the decision model's date rules.
- **POC Required** may be a picklist in your org: paste only the `Yes | No | TBD` value into the picklist and move the `Reason` sentence into SE Notes or Next Steps.
- **SE Notes** is cumulative deal history in most orgs: prepend the dated `[YYYY-MM-DD WinLoop debrief]` stamp and append to the existing field content rather than replacing it.

#### Technical Win Forecast Date

- Output only a defensible value — or a user-directed date carrying the `user-directed date; no scheduled confirmation event` rationale with Confidence capped at Low (the field belongs to the SE; the label and cap are what make the output honest).
- When a broad window is known but the field requires an exact date, preserve the window and request input.
- A user-directed date with no scheduled confirmation event must carry the `user-directed date; no scheduled confirmation event` rationale in the forecast, with Confidence capped at Low.
- Do not bury forecast uncertainty inside SE Notes.

#### SE Notes

Aim for 100–180 words unless the user supplies a character limit.

When Technical Win Forecast Date is `INPUT REQUIRED`, the emitted SE Notes block itself must begin with the window plus the `INPUT REQUIRED` note — this is the text the SE pastes; the date block above stays as the review copy.

Include:

- meeting type and date when known;
- relevant solution areas or use cases;
- scoped customer confirmations with speaker roles;
- explicit overall technical-win status;
- decision-critical open criteria;
- chosen validation route.

Exclude:

- a feature-by-feature meeting recap;
- unsupported product or competitor claims;
- routine discussion that does not affect the decision;
- internal coaching language.

#### Next Steps

Each step must contain:

- action;
- owner or `TBD`;
- due date or `TBD`;
- intended decision or success condition when useful.

Separate customer actions from SE/vendor actions.

Include a technical-decision checkpoint:

```text
Schedule the technical decision checkpoint and ask for explicit confirmation against the agreed requirements.
```

#### POC Required

The field value is exactly one of `Yes`, `No`, or `TBD` — nothing else. Nuance such as "not at this stage; revisit after the workshop" belongs in the `Reason` line, never in the field value.

Derive the value from the chosen `Shortest proof route` — do not judge it independently:

- `No` when the chosen route is any rung below POC: the known decision-critical uncertainty can be resolved without one. Outstanding inputs or criteria that may still emerge (for example, a pending requirements list) do not make this `TBD` — note them in `Reason` and revisit only if a POC-worthy uncertainty later appears.
- `Yes` only when the chosen route is POC and the bounded-POC conditions in the decision model are satisfied.
- `TBD` only when no proof route can be chosen yet because the decision-critical uncertainty itself is unidentified (no route chosen means nothing below POC has been ruled in).

When `No`, name the recommended alternative in `Reason`.

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

If a Message study exists, use its Before Scenario, Positive Business Outcomes, Required Capabilities, and metrics as discovery hypotheses. Do not present them as customer-confirmed facts.

## Checkpoint

Return the `SE Decision Assist` section from Debrief — applying the same rules, and including the `Per-solution-area status` and `Message revision` sections under the same conditions as Debrief — followed by:

```text
Opportunity movement:
[What changed since the last grounded interaction, or Unknown]
```

With no ledger and no `Prior state:` block, write: `Unknown — no prior state supplied; this run is the first grounded snapshot`, and offer the ledger append.

Zero-evidence floor: when the supplied context contains no grounded customer evidence, write `Customer evidence: None — no grounded customer confirmation in the supplied context`, default `Status` to `Validation required` (or `At risk` when a decision-model risk trigger applies), and set `Window/date: Unknown`, `Confidence: Low`. Never promote the SE's impressions into evidence to fill the template.

When an opportunity ledger file (`opportunities/<account>.md`) or a `Prior state:` block is supplied, base `Opportunity movement` on it, and apply the decision model's win-decay rules — a previously `Confirmed` status may be downgraded with the reason stated.

Apply the Salesforce emission rule above.
