---
description: Convert a thesis into a stakeholder-specific dual-frame value proposition (Cost of Inaction + Value of Action), FUD-tested.
argument-hint: <stakeholder> at <account>
allowed-tools: [Read, Write, WebSearch, WebFetch]
---

Run the Forward Deployed Selling `frame` protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md` for definitions, then `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/capabilities/value-proposition-framing.md`.
2. Prerequisites: Thesis and Stakeholder Profile exist. Familiarity sub-score >= 2 (Movement Floor); if lower, stop and route to Familiarity work.
   Consumes: Thesis (current version); Stakeholder Profile for the named person. Check project memory under `fds/<account>/` first; if a consumed record is missing or stale, produce it with its own command before continuing, and say so in one line.
3. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/examples/cfo-canonical-example.md` before generating, and match its structure.
4. Produce: Value Provocation. Lead with the artifact header (targeting, movement, protocol, gate, Output Standards).
5. Run the protocol's gate and the five Output Standards. Name any failed check in the header. Do not ship on a failed gate without surfacing it as a Doctrinal Bypass and getting confirmation.
6. Append one Ledger Entry (canon.md) to `fds/<account>/ledger.md` in project memory.
