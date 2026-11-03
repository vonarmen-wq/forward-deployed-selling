---
description: Decide whether to disqualify a deal on fit (not execution) grounds and draft the honest prospect-addressed note.
argument-hint: <account>
allowed-tools: [Read, Write, WebSearch, WebFetch]
---

Run the Forward Deployed Selling `disqualify` protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md` for definitions, then `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/capabilities/disqualification-protocol.md`.
2. Prerequisites: A fit-failure trigger has fired (named in the memo). Execution failures route to /fds:coach instead.
   Consumes: Deal Record; Score Card; Coaching Artifact if one exists. Check project memory under `fds/<account>/` first; if a consumed record is missing or stale, produce it with its own command before continuing, and say so in one line.
3. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/examples/coaching-example.md (handoff section)` before generating, and match its structure.
4. Produce: Disqualification Memo. Lead with the artifact header (targeting, movement, protocol, gate, Output Standards).
5. Run the protocol's gate and the five Output Standards. Name any failed check in the header. Do not ship on a failed gate without surfacing it as a Doctrinal Bypass and getting confirmation.
6. Append one Ledger Entry (canon.md) to `fds/<account>/ledger.md` in project memory.
