# Changelog

## 0.7.0 — 2026-11-24

Research now works on companies that do not file with the SEC, which is most of the mid-market.

### Added
- `agents/account-researcher.md`: a public/private decision before any search; a nine-tier source ladder for private accounts (the company's own surface and careers page, Form D and other regulatory residue, investor and acquirer disclosures, marketplace and review exhaust, stack footprint, site snapshots over time, headcount aggregates, peer benchmarks, trade press); a table of the ten allowed inference methods with starting confidence; the triangulation rule.
- `references/canon.md` → Private accounts: the `account_type` flag, the private stop rule, the triangulation rule, and the rule that a low-confidence row never carries the Signal, Hypothesis, value at stake or a buyer-facing figure.
- `references/thesis-protocol.md` → Private accounts: query patterns and what the thesis may build on.
- `schemas/thesis.md`, `schemas/context-stack.md`: `account_type`; evidence rows carry `agrees_with`.
- `hooks/check-labels.sh`: blocks an `INFERRED [...] [low]` row under a Signal, Hypothesis or Value-at-stake heading.
- `examples/private-account-example.md`: a synthetic private account worked end to end, from Form D and careers page to thesis, with the triangulation shown.
- `evals/private-account-reaches-stop`, `evals/private-low-row-not-a-signal`.
- `connectors/pitchbook.md`, `connectors/crunchbase.md`: optional paid sources as one more `KNOWN` source type.

### Unchanged
- The doctrine, the labels, the gates and the public-account ladder.

## 0.6.1 — 2026-11-20

### Fixed
- Plugin renamed from `forward-deployed-selling` to `fds`. Claude Code namespaces commands by the plugin name, so under 0.6.0 the commands were installed as `/forward-deployed-selling:thesis` while every document said `/fds:thesis`. The install line is now `/plugin install fds@fds`; the marketplace name is unchanged. Anyone on 0.6.0: `/plugin uninstall forward-deployed-selling@fds`, then install again.

## 0.6.0 — 2026-11-03

The doctrine's content carries over from 0.5; this release rebuilds the packaging so an agent can execute it and a harness can enforce it.

### Added
- `references/canon.md`: the single definition of every label, band, threshold, formula and gate. Every other file points to it.
- `schemas/`: typed records (ICP Record, Stakeholder Profile, Deal Record, Thesis, Score Card, Coaching Artifact). Protocols declare `consumes` / `emits` in frontmatter.
- `commands/`: thirteen `/fds:*` commands, one per protocol plus `/fds:context`, each checking prerequisites before running.
- `agents/`: `account-context` (memory, connectors, files and web → Context Stack), `account-researcher` (fetch-only, returns Evidence Tables with URLs), `scorer` (pure computation), `doctrine-reviewer` (grades artifacts it did not write).
- `hooks/`: a Stop hook that blocks artifacts with unlabeled numerals; a UserPromptSubmit hook that injects the Doctrine Constraint Layer on bypass or violation language.
- `evals/`: eight cases covering routing, the research stop rule, the Movement Floor, the missing-data rule, coaching content rules, both Constraint Layer tiers and the context gap rule; first pass scores 0.96 with the plugin vs 0.17 without (`evals/README.md`).
- Response window: computed per account (5-business-day floor × segment, industry, seniority, channel, season; capped at the next signal event), with a three-outcome silence rule and a ledger-driven learning rule.
- Movement Floor keyed on the Familiarity sub-score, and one action-class rule: Familiarity 0–1 permits Awareness actions, 2 permits a thesis or value proposition, 3 permits a demonstration, business case, pilot or meeting ask.
- Missing-data rule for FDRI and Velocity means: a dimension with no data is excluded from the mean, and fewer than four scored dimensions marks the score `INFERRED [k of 6 dimensions scored] [low]`.
- Ledger Entry per shipped artifact, in project memory, with a prediction field.
- `/fds:context` with the `account-context` agent: assembles the five-layer Context Stack from project memory, connected systems, files and the public web, each row labeled by source; `--business` writes the Business Record once so `/fds:icp` stops interviewing the seller.
- `connectors/`: field maps for Salesforce, HubSpot, mail, calendar and file stores into the Deal Record and Context Stack, plus `generic.md`, a discovery procedure that maps any other CRM, knowledge base, warehouse or MCP server by field meaning and saves the map. Read-only, account-scoped, Interaction layer never from the web.
- `schemas/business-record.md`, `schemas/context-stack.md`.
- `CHANGELOG.md`.

### Changed
- `SKILL.md` cut from 4,433 words to about 1,700; it routes, states the constraint layers and the Output Standards, and points to the files that hold the rules.
- Every protocol cut 40–60% by removing Load Conditions, Cross-References, Voice footers and deferred-work sections; essay content moved to `foundations.md` and `foundations-appendix.md`.
- Numeric gates on every protocol. Output Standards are five cross-cutting gates; "surface and confirm" lives only in the Doctrine Constraint Layer.
- One evidence-label format: `KNOWN [url]` / `INFERRED [method] [confidence]`.
- One deal-size band table. One velocity threshold table. Velocity multiplier example stated as 60%.
- Stakeholder taxonomy is U/B/S/E only; "champion" reads as Sponsor; CRO means Chief Revenue Officer.
- Examples rebuilt on synthetic companies with realistic sourcing; every number labeled; scoring arithmetic recomputes; the Movement Floor binds on at least one account.
- `examples/first-prompts.md` → `examples/getting-started.md`, natural-language prompts mapped to commands, no file paths.
- Plugin layout (`skills/`, `commands/`, `agents/`, `hooks/`, `evals/`); `version` lives in `plugin.json` only.
- `allowed-tools` uses Claude Code tool names (`WebSearch`, `WebFetch`).

### Removed
- `references/convergence.md` (essay folded into `foundations.md`).
- Delta Air Lines and Anthem examples (real companies with unsourced `KNOWN` rows).
- Product Hunt gallery images; "Session N", "forthcoming", "charter cohort", "Field Manual" and "v0.7" roadmap residue from the doctrine files.

### Still design targets
See `KNOWN_ISSUES.md`. The ledger introduced in this release is what will replace them.

## 0.5.0 — 2026-06

Initial public release.
