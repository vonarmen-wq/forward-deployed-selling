---
description: Derive a go-to-market strategy (motion, channel, messaging anchor, artifacts, qualification criteria) from a qualified ICP.
argument-hint: [icp name]
allowed-tools: [Read, Write, WebSearch, WebFetch]
---

Run the Forward Deployed Selling `gtm` protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md` for definitions, then `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/capabilities/gtm-strategy-protocol.md`.
2. Prerequisites: ICP Record exists and is under one quarter old; otherwise run /fds:icp first.
   Consumes: ICP Record. Check project memory under `fds/<account>/` first; if a consumed record is missing or stale, produce it with its own command before continuing, and say so in one line.
3. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/examples/gtm-strategy.md` before generating, and match its structure.
4. Produce: GTM Record. Lead with the artifact header (targeting, movement, protocol, gate, Output Standards).
5. Run the protocol's gate and the five Output Standards. Name any failed check in the header. Do not ship on a failed gate without surfacing it as a Doctrinal Bypass and getting confirmation.
6. Append one Ledger Entry (canon.md) to `fds/<account>/ledger.md` in project memory.
