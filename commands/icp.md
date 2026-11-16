---
description: Qualify an Ideal Customer Profile (Market x Persona x Channel) for a product. Run first; every other /fds command needs its ICP Record.
argument-hint: <product or service description>
allowed-tools: [Read, Write, WebSearch, WebFetch]
---

Run the Forward Deployed Selling `icp` protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md` for definitions, then `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/capabilities/icp-definition-protocol.md`.
1a. Business Record. Read `fds/_business/`. If a record for this product exists, take product, ACV band, titles that signed, channel evidence and limitations from it and ask only for what is missing. If none exists, offer `/fds:context --business` first; if the seller prefers to answer inline, write the Business Record from their answers before continuing, so the next command does not ask again.
2. Prerequisites: None. This is the foundation step.
   Consumes: a product description from the user. Check project memory under `fds/<account>/` first; if a consumed record is missing or stale, produce it with its own command before continuing, and say so in one line.
3. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/examples/icp-definition.md` before generating, and match its structure.
4. Produce: ICP Record (schemas/icp-record.md). Lead with the artifact header (targeting, movement, protocol, gate, Output Standards).
5. Run the protocol's gate and the five Output Standards. Name any failed check in the header. Do not ship on a failed gate without surfacing it as a Doctrinal Bypass and getting confirmation.
6. Append one Ledger Entry (canon.md) to `fds/<account>/ledger.md` in project memory.
