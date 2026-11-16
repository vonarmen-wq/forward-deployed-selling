# Changelog

## 0.6.0 — 2026-11-03

The doctrine is unchanged. The packaging is rebuilt so an agent can execute it and a harness can enforce it.

### Added
- `references/canon.md`: the single definition of every label, band, threshold, formula and gate. Every other file points to it.
- `schemas/`: typed records (ICP Record, Stakeholder Profile, Deal Record, Thesis, Score Card, Coaching Artifact). Protocols declare `consumes` / `emits` in frontmatter.
- `commands/`: twelve `/fds:*` commands, one per protocol, each checking prerequisites before running.
- `agents/`: `account-researcher` (fetch-only, returns Evidence Tables with URLs), `scorer` (pure computation), `doctrine-reviewer` (grades artifacts it did not write).
- `hooks/`: a Stop hook that blocks artifacts with unlabeled numerals; a UserPromptSubmit hook that injects the Doctrine Constraint Layer on bypass or violation language.
- `evals/`: seven cases covering routing, the research stop rule, the Movement Floor, the missing-data rule, coaching content rules and both Constraint Layer tiers; first pass scores 0.96 with the plugin vs 0.17 without (`evals/README.md`).
- Response window: computed per account (5-business-day floor × segment, industry, seniority, channel, season; capped at the next signal event), with a three-outcome silence rule and a ledger-driven learning rule.
- Movement Floor keyed on the Familiarity sub-score.
- Missing-data rule for FDRI and Velocity means (null excluded, not zeroed).
- Ledger Entry per shipped artifact, in project memory, with a prediction field.
- `/fds:context` with the `account-context` agent: assembles the five-layer Context Stack from project memory, connected systems, files and the public web, each row labeled by source; `--business` writes the Business Record once so `/fds:icp` stops interviewing the seller.
- `connectors/`: field maps for Salesforce, HubSpot, mail, calendar and file stores into the Deal Record and Context Stack. Read-only, account-scoped, Interaction layer never from the web.
- `schemas/business-record.md`, `schemas/context-stack.md`.
- `CHANGELOG.md`.

### Changed
- `SKILL.md` cut from 4,433 words to under 1,400; it routes and states the constraint layers, nothing else.
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
