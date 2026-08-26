# WinLoop — Hackathon July 2026 · 5-Minute Recording Script
# SE: Matt Gueiros | Version 1.2.1 | Target runtime: 4:45–5:00

---

## Setup before you hit record

- Open Claude Code in your terminal, full screen, font size 16+
- Have this demo input ready to paste (copy it now):

```
Notes — Discovery call, Banco Regional, August 12, 2026
Attendees: Carlos (IT Manager), Ana (Systems Architect), SE, AE

Carlos said the demo was impressive and that Okta "would definitely
solve their problem." Ana asked detailed technical questions about
Access Gateway header injection and said it's exactly what they
need for their legacy systems. Very engaged throughout.
Carlos confirmed 3,000 employees and budget is approved.

On timeline: Carlos said "probably Q4, but nothing is locked yet."
Ana mentioned a mandatory security review must happen before any
vendor decision. Carlos asked if we could do a POC with their
actual environment.
```

- Have the submission page open in a browser tab (second monitor or alt-tab)
- Record audio cleanly — this is narration-heavy, quiet room matters

---

## Script

---

### [0:00–0:25] — The problem

**[Screen: Claude Code terminal, idle, cursor blinking]**

> "After every customer meeting, an SE has to answer five questions alone:
> Does the solution actually meet the technical requirements? Has anyone
> with authority actually confirmed that? What's still unproven? What's
> the right next validation step? And what do I tell Salesforce?
>
> Most of the time, the SE answers these questions from memory, under
> time pressure, right before the next call. WinLoop changes that."

---

### [0:25–0:55] — What WinLoop is

**[Screen: stay on terminal — don't switch to slides]**

> "WinLoop is a Claude Code SE skill. You type slash-winloop, paste your
> meeting notes or a Gong summary, and it runs a technical-win decision
> model on them. It classifies every statement by source — customer
> confirmed, customer signal, SE stated, needs verification. It checks
> whether the person who said 'yes' actually has evaluation authority.
> It chooses the smallest proof step that resolves the remaining
> uncertainty. And it produces Salesforce-ready fields with honest
> forecast language.
>
> The key word is honest. Let me show you what I mean."

---

### [0:55–1:15] — Setup the scenario

**[Screen: terminal, begin typing]**

> "Here's a scenario every SE will recognize. Good meeting. Customer is
> engaged. The IT manager says the solution will 'definitely solve their
> problem.' The demo went well. It feels like a win. Let's see what
> WinLoop makes of it."

**[Type: `/winloop`  then hit Enter — wait for the skill to load]**

> "I'll paste in the notes."

**[Paste the demo input — let it sit on screen for 2 seconds so viewers can read it]**

> "Forty lines of meeting notes. Hitting Enter."

**[Hit Enter]**

---

### [1:15–2:45] — Walk the output

**[Screen: output scrolling — pause scroll at each key moment, use mouse to point or highlight if possible]**

**[Pause at: `Status:`]**

> "Status: Ready to ask. Not Confirmed. The skill sees positive signals
> but no explicit confirmation from an authoritative stakeholder. It
> won't call a win just because the meeting felt good."

**[Scroll to: `Customer evidence:`]**

> "Customer evidence — and this is the key section. Ana's statement about
> header injection is labeled as a scoped customer confirmation — she
> confirmed a specific capability meets a specific requirement. But look
> at Carlos: 'would definitely solve their problem' is classified as a
> customer signal, not a confirmation. It's general, it's not anchored
> to agreed requirements, and — critically — Carlos is an IT Manager.
> His authority as technical decision owner was never established. The
> skill flags that explicitly."

**[Scroll to: `Still unproven:`]**

> "Still unproven: the security review Ana mentioned. WinLoop treats a
> mandatory security review as a decision-critical criterion — not a
> post-win formality. Until that's resolved, the technical win isn't
> complete. Also flagged: criteria completeness. We don't have explicit
> confirmation that these were all the evaluation criteria."

**[Scroll to: `Shortest proof route:`]**

> "Shortest proof route: architecture session — not a POC. Carlos asked
> for a POC with their real environment. WinLoop doesn't just say yes.
> It checks whether a POC is actually warranted. Here the remaining
> uncertainty is the security review, and an architecture session with
> the security team can answer that question. No POC needed yet."

---

### [2:45–3:45] — Salesforce fields + forecast discipline

**[Scroll to: `Copy to Salesforce` block]**

> "Now the Salesforce layer. Four separate fields, each independently
> copyable."

**[Point at Technical Win Date]**

> "Technical Win Date: INPUT REQUIRED. Carlos said 'probably
> Q4.' WinLoop preserves that as a window and asks me for the exact date.
> It will not silently translate 'Q4' into December 31st and drop it in
> the field. The forecast shows Q4 2026, confidence Low — because the
> security review is unscheduled and the decision checkpoint doesn't
> exist yet."

**[Point at Pre-Sales Notes block]**

> "Pre-Sales Notes — 150 words. Decision-focused. No meeting recap, no feature
> list. It records the scoped confirmation, the authority gap, the open
> criterion, and the chosen proof route. This is what goes in the CRM."

**[Point at POC Status]**

> "POC Status: Not Required. With the reason in the notes: the architecture session resolves
> the security review question without a full POC. That's the proof ladder
> doing its job."

---

### [3:45–4:30] — Why it matters + second capability

**[Scroll to: `Exact customer ask:`]**

> "And the exact customer ask — one question, anchored to agreed
> requirements. Not 'did you like the demo.' Not 'are we good
> technically.' A question that can only be answered yes or no by someone
> with evaluation authority.

**[Alt-tab to browser — show hackathon_submission_Matt_Gueiros.html for 10 seconds]**

> "WinLoop ran on two live accounts across the full loop — discovery
> transcript to living opportunity ledger, iterative capability
> verification, SE-facing decision dashboard, customer-facing workshop
> page in Portuguese. Twenty test cases covering all four modes and
> all four statuses. Including adversarial cases — inputs designed to
> trick it into declaring a false win."

---

### [4:30–5:00] — Close

**[Back to terminal — show the skill folder or just stay on output]**

> "WinLoop lives in your Claude Code project as a slash command. It
> carries state between sessions through a per-account opportunity
> ledger. Every run is a loop: new evidence, updated status, updated
> next action.
>
> Version 1.2.1. Hackathon July 2026.
> The SE owns the decision. WinLoop just makes it harder to get it wrong."

**[Let screen sit for 2 seconds, then stop recording]**

---

## Timing guide

| Section | Target | Words |
|---------|--------|-------|
| Problem | 0:00–0:25 | ~55 |
| What it is | 0:25–0:55 | ~75 |
| Setup | 0:55–1:15 | ~50 |
| Output walk | 1:15–2:45 | ~200 |
| Salesforce | 2:45–3:45 | ~130 |
| Why it matters | 3:45–4:30 | ~105 |
| Close | 4:30–5:00 | ~60 |
| **Total** | **5:00** | **~675** |

---

## If you go over time

Cut in this order:
1. Shorten the Salesforce walk — skip POC Status, just show Pre-Sales Notes and Technical Win Date
2. Skip the alt-tab to the submission page — mention it verbally instead
3. Shorten the "why it matters" section to one sentence

## If you go under time

Slow down on the Customer evidence section — it's the most important moment and benefits from a pause.

---

## One-take tips

- Speak at 70% of your normal pace — recordings always feel slower than live
- Pause 1 second after typing Enter before speaking — let the output start rendering
- Don't narrate what's on screen word-for-word — interpret it
- The line "It will not silently translate Q4 into December 31st" is the sharpest line — land it deliberately
