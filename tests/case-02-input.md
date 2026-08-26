Debrief this and give me the separate Salesforce fields. Notes below cover the July 21 demo and the July 28 workshop.

# Working notes — coexistence demo + lifecycle/admin workshop

## Background

- Mid-market retailer migrating off a legacy IdP. Opportunity covers SSO, lifecycle, and delegated administration.
- June scoping call: agreed three decision criteria with the customer — (1) SSO coexistence with the legacy IdP during the migration window, (2) lifecycle automation driven by their two HR sources (corporate HCM plus the retail workforce system), (3) a delegated admin model for the regional helpdesks.
- On that call the customer named the IT Director as the technical decision owner for this evaluation.

## July 21 demo

Ran long, mostly routing rules. Walked the coexistence pattern — legacy IdP keeps auth for the unmigrated app set while we take the migrated apps — and demoed the fallback path live, twice, because the IT Director wanted to see the failure case again. After the second pass he said the coexistence approach "covers what we need for the migration window." Customer Contact A (identity engineer on the IT Director's team) had a pile of questions about routing policy ordering, all implementation-level, nothing blocking.

## July 28 workshop

Hands-on. Customer Contact A drove the lifecycle labs personally with test feeds from both HR sources — joiner/mover/leaver ran clean off both feeds, including the rehire edge case they brought with them. IT Director's read at the end of that lab: "that meets the lifecycle requirement we defined." Second half was delegated admin — we built the regional helpdesk roles live and scoped the permission sets to their org structure. IT Director again: "that's exactly the admin model we asked for." Customer Contact A at wrap-up: "this is looking really good."

Honestly we clearly have the technical win here — everything they threw at us worked. We ran out of time and nobody asked the overall question, but the IT Director booked a decision review for August 12, 2026: he wants to walk the three criteria with his team and give us a formal answer there.
