---
description: Decide whether to pull engineering, product, customer success or finance into a deal, and produce the mobilization request.
argument-hint: <account>
allowed-tools: [Read, Write, WebSearch, WebFetch, Agent]
---

Run the Forward Deployed Selling `converge` protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md` for definitions, then `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/capabilities/agent-convergence-protocol.md`.
1a. Context. Read `fds/_business/` for the Business Record (what the seller sells; without one, ask for product, ACV band, persona and channel in one message, or point to `/fds:context --business`). Then, unless a Context Stack under 14 days old exists at `fds/<account>/context-*.md`, launch the `account-context` agent for the account; it reads memory, any connected CRM, mail, calendar and files per `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/connectors/`, and the public web, and returns the five-layer Context Stack with sources. Use its Deal Record if it wrote one.
2. Prerequisites: One of the convergence triggers has fired (named). Bidirectionality and the Pride Test are checked before anything is surfaced.
   Consumes: Score Card; Velocity Profile; org capability inventory if the seller has one. Check project memory under `fds/<account>/` first; if a consumed record is missing or stale, produce it with its own command before continuing, and say so in one line.
3. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/examples/coaching-example.md (handoff section)` before generating, and match its structure.
4. Produce: Mobilization Request + journal entry. Lead with the artifact header (targeting, movement, protocol, gate, Output Standards).
5. Run the protocol's gate and the five Output Standards. Name any failed check in the header. Do not ship on a failed gate without surfacing it as a Doctrinal Bypass and getting confirmation.
6. Append one Ledger Entry (canon.md) to `fds/<account>/ledger.md` in project memory.
