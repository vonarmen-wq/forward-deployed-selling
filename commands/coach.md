---
description: Coach a seller on a live deal: three-axis diagnosis, five-section artifact, no prospect-facing content.
argument-hint: <account> [what you want to achieve]
allowed-tools: [Read, Write, WebSearch, WebFetch]
---

Run the Forward Deployed Selling `coach` protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md` for definitions, then `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/capabilities/coaching-protocol.md`.
2. Prerequisites: Score Card exists and is under 14 days old; otherwise run /fds:score first. Output contains nothing addressed to the prospect.
   Consumes: Deal Record; Score Card (current); the last 5 interactions or 30 days; the seller's stated goal. Check project memory under `fds/<account>/` first; if a consumed record is missing or stale, produce it with its own command before continuing, and say so in one line.
3. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/examples/coaching-example.md` before generating, and match its structure.
4. Produce: Coaching Artifact (schemas/coaching-artifact.md). Lead with the artifact header (targeting, movement, protocol, gate, Output Standards).
5. Run the protocol's gate and the five Output Standards. Name any failed check in the header. Do not ship on a failed gate without surfacing it as a Doctrinal Bypass and getting confirmation.
6. Append one Ledger Entry (canon.md) to `fds/<account>/ledger.md` in project memory.
