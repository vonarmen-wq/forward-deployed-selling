---
description: Analyze a deal's velocity: phase benchmarks, wait states with owners, compression plan, and the when-not-to-accelerate verdict.
argument-hint: <account>
allowed-tools: [Read, Write, WebSearch, WebFetch]
---

Run the Forward Deployed Selling `velocity` protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md` for definitions, then `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/deal-velocity.md`.
2. Prerequisites: Deal Record has at least one dated phase. Thresholds come from canon.md, not the protocol.
   Consumes: Deal Record with dated phases. Check project memory under `fds/<account>/` first; if a consumed record is missing or stale, produce it with its own command before continuing, and say so in one line.
3. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/examples/pipeline-scoring.md (velocity sections)` before generating, and match its structure.
4. Produce: Velocity Profile. Lead with the artifact header (targeting, movement, protocol, gate, Output Standards).
5. Run the protocol's gate and the five Output Standards. Name any failed check in the header. Do not ship on a failed gate without surfacing it as a Doctrinal Bypass and getting confirmation.
6. Append one Ledger Entry (canon.md) to `fds/<account>/ledger.md` in project memory.
