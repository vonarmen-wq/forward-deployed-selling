---
description: Diagnose where an account sits in the buyer's journey (Aware / Familiar / Value) with cited signals and 0-3 sub-scores.
argument-hint: <account>
allowed-tools: [Read, Write, WebSearch, WebFetch, Agent]
---

Run the Forward Deployed Selling `diagnose` protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md` for definitions, then `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/movements.md`.
1a. Context. Read `fds/_business/` for the Business Record (what the seller sells; without one, ask for product, ACV band, persona and channel in one message, or point to `/fds:context --business`). Then, unless a Context Stack under 14 days old exists at `fds/<account>/context-*.md`, launch the `account-context` agent for the account; it reads memory, any connected CRM, mail, calendar and files per `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/connectors/`, and the public web, and returns the five-layer Context Stack with sources. Use its Deal Record if it wrote one.
2. Prerequisites: ICP Record exists.
   Consumes: ICP Record; engagement signals the seller has or the researcher can find. Check project memory first (`fds/<account>/` for account records, `fds/_icp/` and `fds/_gtm/` for segment records, `fds/_business/` for the Business Record); if a consumed record is missing or stale, produce it with its own command before continuing, and say so in one line.
3. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/examples/pipeline-scoring.md (movement sections)` before generating, and match its structure.
4. Produce: Movement Diagnosis. Lead with the artifact header (targeting, movement, protocol, gate, Output Standards).
5. Run the protocol's gate and the five Output Standards. Name any failed check in the header. Do not ship on a failed gate without surfacing it as a Doctrinal Bypass and getting confirmation.
6. Append one Ledger Entry (canon.md) to `fds/_ledger.md` in project memory.
