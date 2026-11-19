# Forward Deployed Selling

**The sales doctrine your Claude can run.**

Forward Deployed Selling is a Claude plugin for enterprise sales in a market where the buyer has researched you, your competitors and the build-it-yourself option before your first message arrives. Thirteen commands take an account from a qualified target to a sourced thesis, a scored deal and a coaching plan, and a hook stops any figure that arrives without a source.

[Install →](#install) · [Read the doctrine →](https://forwarddeployedselling.com/doctrine) · [What changed in 0.6 →](CHANGELOG.md)

![FDS in action](docs/demo.jpg)

---

## What you get

Each command runs one protocol, checks what it needs first, and ships through a gate.

| Say | Run | Get |
| --- | --- | --- |
| "Here's what we sell" | `/fds:context --business` | A Business Record every other command reads, so you say it once |
| "What do we know about this account?" | `/fds:context <account>` | A five-layer Context Stack from your CRM, mail, calendar, files and the public web, every row sourced |
| "Who should we be selling this to?" | `/fds:icp` | A qualified Ideal Customer Profile: market, persona, channel, disqualifiers |
| "Write something that earns the meeting" | `/fds:thesis <account>` | A sourced thesis and a one-page provocation, every figure labeled, reviewed by an agent that did not write it |
| "Prep me for Thursday" | `/fds:profile <name> at <account>` | Who the person is in the deal (User, Buyer, Sponsor, Enabler), what moves them, what blocks them |
| "Is this deal real?" | `/fds:score <account>` | Movement, readiness and velocity scores, a tier with the Familiarity floor applied, and the next action |
| "It's gone quiet" | `/fds:revise <account> silence` | A re-fetch of the evidence at the computed window, then a revised thesis or the finding that the account is dormant |
| "Help me unstick this" | `/fds:coach <account>` | A five-section diagnosis addressed to you, with no text addressed to the prospect |
| "Should we walk away?" | `/fds:disqualify <account>` | A fit verdict with its source, and the note to send if the answer is no |

Also `/fds:gtm`, `/fds:diagnose`, `/fds:frame`, `/fds:velocity` and `/fds:converge`. The full table with inputs and outputs is in [`SKILL.md`](skills/forward-deployed-selling/SKILL.md).

## How it holds up under pressure

Each commitment below names the mechanism that holds it, because a methodology that depends on the seller remembering it will be forgotten on the last day of the quarter.

- **A research agent fetches the sources.** It returns an evidence table where every `KNOWN` row carries the URL it was read from, and the thesis cites nothing the agent did not return. If an account yields fewer than three sourced facts in a 40-page budget, the protocol stops and says so.
- **A Stop hook reads every artifact before it ships.** A figure without `KNOWN [url]`, `INFERRED [method] [confidence]` or `[design target]` blocks the artifact and returns the line. Buyer-facing pages carry no labels, so the hook checks that each of their figures appears labeled in the evidence above.
- **A reviewer agent grades the artifact it did not write**, against five Output Standards and the Pride Test: if the prospect asked how you knew that, would the answer earn respect or discomfort? The verdict goes in the artifact's header.
- **A prompt hook reads for pressure.** Type "skip the relationship stage, quarter closes Friday" and the agent names the rule, states the cost to this deal, and asks you to confirm before proceeding. The bypass is permitted; it is logged.
- **The response window is a formula.** A five-business-day floor scaled by deal size, industry, the reader's seniority, the channel and the calendar, capped by the next earnings call. Reaching it re-fetches the evidence; the seller sends nothing unless a row changed.
- **A ledger records every artifact** with its prediction, and later its outcome. At twenty records per segment the window multipliers are replaced by observed latency; at thirty, each design target in the doctrine is replaced by a measured benchmark.

## Where context comes from

Connect any CRM, mailbox, calendar, file store or knowledge base and the context agent fills the Deal Record and interaction history from it, read-only and scoped to the one account. Salesforce, HubSpot, mail, calendar and Drive have ready field maps; any other source is mapped once by what its fields mean, and the map is saved for you to correct. With no source connected, the agent lists which layer is empty and what would fill it.

## Install

**Claude Code** (commands, agents and hooks all run):

```
/plugin marketplace add vonarmen-wq/forward-deployed-selling
/plugin install forward-deployed-selling@fds
```

The first line registers this repository as a marketplace named `fds`; the plugin appears in the `/plugin` Discover tab only after that. Then `/fds:context --business` once, and `/fds:icp`. [`skills/forward-deployed-selling/examples/getting-started.md`](skills/forward-deployed-selling/examples/getting-started.md) has a prompt for every command.

**For a team:** add the marketplace and the plugin to the repository's shared `.claude/settings.json` and every teammate gets it on their next launch, with no commands to type:

```json
{
  "extraKnownMarketplaces": {
    "fds": { "source": { "source": "github", "repo": "vonarmen-wq/forward-deployed-selling" } }
  },
  "enabledPlugins": { "forward-deployed-selling@fds": true }
}
```

Project memory is per repository, so a team that installs this way also shares one ledger and one set of ICP, GTM and Business Records.

**Claude.ai and Cowork:** upload the `skills/forward-deployed-selling/` folder under Settings → Capabilities → Skills. The doctrine, protocols, schemas and examples work there; the commands, hooks and agents are Claude Code features.

**Your own agents:** import [`skills/forward-deployed-selling/schemas/`](skills/forward-deployed-selling/schemas/) for typed inputs and outputs, and `agents/doctrine-reviewer.md` as a reusable grader. The protocols are plain markdown.

## What is measured

The plugin's eval suite (eight cases, seven scored at two runs each, November 2026) scores Claude with the plugin at 0.96 on the behaviors it enforces and the same model without it at 0.17; one case, refusing to relabel an estimate as fact, scores 1.0 either way. Performance figures inside the doctrine (response rates, cycle compression, artifact effort) carry `[design target]` until the ledger holds thirty records for that claim; `KNOWN_ISSUES.md` lists each one.

## About

Angel Armendariz is a twenty-year enterprise sales practitioner and Innovation Advisor to Fortune 500 enterprises. Field work inside AWS, Saxony Partners and Endava shaped the doctrine; this plugin makes it executable. He is the author of *Forward Deployed Selling*.

Copyright 2026 Caerus Capital Group, LLC. Apache 2.0. The "Forward Deployed Selling" name and "FDS Certified" mark are held by Caerus Capital Group, LLC; see [license](https://forwarddeployedselling.com/license). Repository layout: [`ARCHITECTURE.md`](ARCHITECTURE.md). Contributing and evals: [`CONTRIBUTING.md`](CONTRIBUTING.md).
