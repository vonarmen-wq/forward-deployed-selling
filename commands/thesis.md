---
description: Generate a sourced account thesis and one-page value provocation for a named account. Research runs in a forked subagent; every number is labeled; an independent reviewer grades it before it ships.
argument-hint: <account> [stakeholder]
allowed-tools: [Read, Write, WebSearch, WebFetch, Agent]
---

Run the Forward Deployed Selling thesis protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md`, then `references/thesis-protocol.md` and `schemas/thesis.md`.
1a. Context. Read `fds/_business/` for the Business Record (what the seller sells; without one, ask for product, ACV band, persona and channel in one message, or point to `/fds:context --business`). Then, unless a Context Stack under 14 days old exists at `fds/<account>/context-*.md`, launch the `account-context` agent for the account; it reads memory, any connected CRM, mail, calendar and files per `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/connectors/`, and the public web, and returns the five-layer Context Stack with sources. Use its Deal Record if it wrote one.
2. Prerequisites, checked in project memory under `fds/<account>/`:
   - ICP Record exists and is under one quarter old. If not, run `/fds:icp` first and say so.
   - Movement Diagnosis exists and is under 30 days old. If not, run `/fds:diagnose` first.
   - If the Familiarity sub-score is 0 or 1, stop: a thesis is a Familiarity-stage artifact and the diagnosis says the account is in Awareness. Say which Awareness actions apply and end.
3. Research. Launch the `account-researcher` agent with the account, the ICP Record, and the stop rule from thesis-protocol.md. It returns an Evidence Table in which every KNOWN row carries the URL it fetched. Do not add rows the researcher did not return. If it returns fewer than 3 KNOWN rows with URLs, return the account to Awareness, record why in the ledger, and end.
4. Read `examples/thesis-example.md`. Write the Thesis per the schema: five components, one `value_at_stake` number used everywhere, the Bridge, the limitations briefing, the one-page provocation (one insight, no pitch, subject line that passes the Pride Test).
5. Compute the response window W per canon.md from the ICP segment and industry, the stakeholder's seniority class and channel (from the Stakeholder Profile if one exists, else Director/email), the season, and `next_signal_event` from the Deal Record. Show the arithmetic once in the header.
6. Review. Launch the `doctrine-reviewer` agent with the Thesis and the Evidence Table. It returns a score on the five Output Standards and the 5 thesis gates with each failure named. Put its verdict in the header. If any check failed, revise once and re-review; if it still fails, surface the failure to the user as a Doctrinal Bypass decision rather than shipping silently.
7. Write the Thesis to `fds/<account>/thesis-v<n>.md` and append a Ledger Entry with the prediction (response %, meeting %, close %, all [design target] until the ledger has data).
8. Deliver the provocation and the header to the user. The full thesis is in memory; say where.
