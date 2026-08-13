# WinLoop Hackathon Pitch

## One sentence

WinLoop turns any SE meeting note into the shortest defensible path to an explicit customer technical win.

## The problem

Meeting tools are excellent at answering, "What happened?"

Sales Engineers still have to answer:

- Did the customer actually confirm a technical win — and did the right person confirm it?
- What remains unproven?
- Do we need a document, demo, workshop, or POC?
- What should I ask next?
- What belongs in each Salesforce field?
- What date can I defend?

That manual judgment is repeated after almost every customer interaction.

## The idea

Paste the notes. Run one reusable AI skill. Receive:

1. a customer-value message before the call, even without Gong;
2. technical-win status after the call;
3. customer evidence and missing criteria;
4. the shortest validation route;
5. the exact technical-win question;
6. forecast confidence; and
7. separate Salesforce-ready field values.

No new interface is required. Claude Code is the interface.

## Why it is different

This is not another meeting summarizer. It is a decision compiler.

Before the meeting, its APEX Message mode creates a four-part customer hypothesis. After the meeting, WinLoop replaces those hypotheses with what the customer actually confirmed, corrected, or left untested.

Its core rule is:

> If the customer did not say it, it is not a technical win.

It refuses the common forms of accidental deal fiction:

- turning a vague forecast window into a made-up date;
- turning broad customer interest into a technical win;
- accepting a "yes" from someone without evaluation authority;
- accepting a pressured or hedged "sure, I guess" as confirmation.

## Demo story

Use `tests/case-01-input.md`.

The notes sound highly positive: a detailed demo and two clearly scoped customer fit signals. A normal summary can easily imply success.

WinLoop finds the harder truth:

- the overall technical win was not verbally confirmed;
- four decision-critical areas remain open;
- the forecast is only a low-confidence Q4 2026 window — and the exact-date field gets `INPUT REQUIRED`, not an invented December 31;
- a bounded workshop is the right next validation step;
- a POC is not justified (`POC Required: No`);
- several product statements require correction or verification.

Then it produces four Salesforce-ready blocks, ending with a review-before-paste reminder.

(Keep `tests/case-01-expected.md` open as the known-good fallback for the live run.)

## Why our SE organization would adopt it

- The decision logic is vendor-neutral; the Message mode and CRM fields ship configured for our org and are plain-Markdown customizable.
- It takes minutes to install on any laptop already running Claude Code.
- It requires no coding experience.
- Teams can edit plain Markdown rules.
- It standardizes judgment without removing SE judgment.
- It shortens validation by choosing the smallest proof method that resolves the actual uncertainty.
- `MEASUREMENT.md` defines the pilot that proves (or disproves) the value: technical-win reversals, forecast-date variance, workshop-vs-POC mix versus baseline.

## What is deliberately absent

- dashboard;
- database;
- workflow engine;
- proprietary model;
- mandatory integration;
- automatic CRM write.

The MVP is a folder of Markdown files because the value is the decision logic, not the plumbing.

## Optional next version

Only after the pilot shows value:

- a claude.ai (browser) distribution for SEs without Claude Code — the Claude Code desktop app is already supported today;
- approved internal product references;
- one-click copy buttons for Salesforce fields;
- optional transcript and CRM connectors.

Those are distribution improvements, not the product itself.
