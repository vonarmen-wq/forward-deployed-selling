---
description: Assemble what is known about an account from memory, your connected systems and the public web into one labeled Context Stack; or, with --business, record what you sell once so every other command stops asking.
argument-hint: <account> | --business <product>
allowed-tools: [Read, Write, WebSearch, WebFetch, Agent]
---

Run the Forward Deployed Selling context step for: $ARGUMENTS

**If the argument starts with `--business`:** build the Business Record.
1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/schemas/business-record.md`.
2. Read `fds/_business/` in project memory. If a record for this product exists, show it and ask only for fields that are `unknown` or older than one quarter.
3. Pull what connectors can supply first (win/loss notes and pricing from Drive per `connectors/files.md`; titles that signed from CRM closed-won opportunities). Then ask the seller for the rest in one message, grouped by section. Do not invent a capability, a price or a reference.
4. Write `fds/_business/<handle>.md` with every field labeled `KNOWN [source]` or `stated by seller`, list `unknown` fields, and say which commands are now unblocked.

**Otherwise:** build the Context Stack for the account.
1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/schemas/context-stack.md` and `connectors/README.md`.
2. Launch the `account-context` agent with the account name, the product handle from the Business Record if one exists, and any file paths the user supplied.
3. Return its Context Stack and summary. If it wrote a Deal Record from CRM, say so; if the Interaction layer is a gap, ask the seller to paste the last five touches so `/fds:score` and `/fds:coach` can run.
4. Append a Ledger Entry (`canon.md`) with artifact-type `context`.

Every other account-level command calls this step itself when no Context Stack under 14 days old exists, so the seller rarely needs to run it by hand. Run it directly to refresh before a meeting or after connecting a new system.
