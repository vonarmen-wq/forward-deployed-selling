# Known Issues — FDS Skill

Issues, deferrals, and pending decisions surfaced during skill development. Each entry names what it is, where it lives, why it's deferred, and what would resolve it.

This file is the archaeological record of decisions made under uncertainty. New entries land at the top of the relevant section. Resolved entries move to a `## Resolved` section at the bottom (none yet). The file does not get pruned.

Reviewed at the start of every skill version increment.

---

## Performance claims pending field benchmark

Every numeric claim about results the doctrine produces was downgraded to **design target** during v0.5 Session 1 (per `docs/fds-skill-v0.5-plan.md` Part 1, audit item #1; authorized by the user 2026-05-06).

**Why downgraded:** No defensible field-measured data with named N-of-deployments exists for any of these numbers. They reflect the doctrine's intended operating profile.

**Upgrade path:** Charter cohort field deployment against skill v0.7. After at least 30 days of cohort use against real accounts, field benchmarks replace design targets. Replacement format: `[field benchmark, N=<number> deployments, Q<quarter> v0.7]`.

**Inventory of downgraded claims:**

### `references/thesis-protocol.md` — Performance benchmarks block

| Claim | Status |
|-------|--------|
| Response rate: 23% (vs. ~3% for traditional cold outreach) | design target |
| Meeting conversion: 12% | design target |
| Opportunity conversion: 8% | design target |
| Average deal size: 2.4× larger than inbound leads | design target |
| Cost per meeting: ~24 hours of machine time for 12 conversations | design target |

### `references/deal-velocity.md`

| Claim | Status |
|-------|--------|
| 120-day cycle / 30 days actual activity / 90 days dead time | design target |
| High Compression: 70-90% reduction | design target |
| Moderate Compression: 30-50% reduction | design target |
| Low Compression: 10-20% reduction | design target |
| Velocity Multiplier example: 60% revenue capacity gain | design target |
| Internal Velocity Playbook table (8 rows of cycle-time impact estimates) | design target |
| Velocity Metrics: Cycle time target = "Industry benchmark minus 30-50%" | design target (also pending #19 polish: rephrase to "your own historical median") |
| Velocity Metrics: Active-to-elapsed >40% target | design target |
| Velocity Metrics: "most orgs are 25-30%" comparison | design target / unsourced — flag if this stays past v0.7 |
| Velocity Metrics: Velocity Multiplier >1.4x target | design target |

### `SKILL.md`

| Claim | Status |
|-------|--------|
| Demonstration types table: hour ranges (Insight Brief 2-4 through Digital Twin 60-200+) | design target |
| AI compresses each [demonstration type] by ~80% | design target |
| Velocity Multiplier example: ~60% capacity increase | design target (mirror of `deal-velocity.md` claim) |

**Operational thresholds NOT downgraded.** The Velocity Metrics table includes operational SLAs (Phase transition <5 days, Wait state count <3, Internal response <48 hours, Parallel coverage >60%) that are doctrine-defined targets, not performance claims about results. Those remain unmarked.

---

## Audit items in the v0.5 plan but NOT in the user's Session walk order

The plan (Part 1) has 20 audit findings. The user's walk order (provided 2026-05-06) lists items #6, #1, #2, #3, #4, #7, #9, #11 (Session 1) and #13, #14, #15 + polish #18, #19, #20 (Session 2). Five "accept with modification" or "modify framing" items are NOT in the walk order. They need triage.

| Audit item | Plan classification | Disposition |
|------------|---------------------|-------------|
| **#5** Frontmatter description too long | Accept with modification | NOT YET ADDRESSED. Description is still ~600 chars in YAML; plan calls for tightening to ~150 chars and moving long behavioral block into a `## When to Use This Skill` body section. Frontmatter also needs `version: 0.5` and `allowed-tools: [web_search, web_fetch]` fields. **Recommend:** triage for v0.5 Session 2 or v0.6 (reasonable to bundle with router rewrite). |
| **#8** Layer 1 has four names | Accept with modification | NOT YET ADDRESSED. Plan calls for global rename to consistent terminology: Movements / Principles / Innovations. Some files already use "Movements"; others use "Business Development." **Recommend:** v0.5 Session 2 single-pass cleanup. |
| **#10** Convergence vague | Accept with modification (split file) | NOT YET ADDRESSED. Plan calls for splitting current `references/convergence.md` into `capabilities/agent-convergence-protocol.md` (operational rules) plus a Field Manual essay (philosophical content). **Recommend:** v0.5 Session 2 alongside the new capability protocols, since the split parallels the new file authorship work. |
| **#16** 12-month vs 90-day Familiarity | Accept with modification (three-arc rewrite) | NOT YET ADDRESSED. Plan calls for restructuring `references/movements.md` into three explicit arcs: 30-day velocity sprint (inbound-qualified), 90-day default (outbound new-logo), 12-month strategic (top 1% by LTV). **Recommend:** v0.5 Session 2; significant rewrite of one file. |
| **#17** "The machine" register | Modify framing | NOT YET ADDRESSED. Plan calls for a `## Voice and Register` section in `SKILL.md` documenting the relentless-agentic register as deliberate doctrinal choice. **Recommend:** v0.5 Session 2; small additive edit. |
| **#12** References rely on agent self-discipline | Defer to v0.6 | DEFERRED PER PLAN. Better implemented inside the modular architecture in Part 2 where load conditions are formalized. |

**Net effect:** v0.5 Session 1 covered 8 of 20 items. Session 2 needs to cover the other 12 (or formally re-defer some). The user's Session 2 walk order names #13, #14, #15, #18, #19, #20 — six items. The five "accept with modification" + "modify framing" items above are unallocated. The Session 2 proposal should surface this gap and ask for triage.

---

## Label and naming mismatches

### Tier 4 label: "Watch" — RESOLVED in Session 4

- Globalized to "Watch" across `references/scoring.md` and `examples/pipeline-scoring.md` per Angel's stated guidance (the v0.5 plan named "Watch"; the file converged).
- v0.5 plan and skill are now consistent.

### Profile Schema vs Profile Structure heading

- v0.5 Session 1 renamed the `## Profile Structure` heading in `stakeholder-profiles.md` to `## Profile Schema (five categories)` per audit item #7.
- Any field tooling, deck, or external doc referencing "Profile Structure" by name now has a stale reference. No external references identified inside this repo, but v0.6 cross-link audit should verify.

---

## Cross-reference health

### v0.5 Session 1 added these cross-references

- `SKILL.md` Innovation 2 section now points at `references/stakeholder-profiles.md` with explicit Context Stack vs Profile Schema disambiguation.
- `SKILL.md` Hallucination Protocol section threads to the existing KNOWN/INFERRED structure in `references/thesis-protocol.md`.
- `references/thesis-protocol.md` KNOWN/INFERRED format definition now points back at the Hallucination Protocol in SKILL.md.
- `references/thesis-protocol.md` cites `examples/delta-thesis.md` as reference implementation.
- `references/scoring.md` cites `examples/pipeline-scoring.md` as reference implementation.

### v0.5 Session 2 added these cross-references

- `SKILL.md` introduces a `## Targeting Foundation` top-level section that points at `capabilities/icp-definition-protocol.md`, `capabilities/gtm-strategy-protocol.md`, and `references/stakeholder-profiles.md` (now framed as Profile Schema + U/B/S/E + Incentive/Constraint Framework).
- `SKILL.md` Core Decision Logic Step 2 added: "Targeting must be qualified" with reference to the Targeting Foundation section.
- `SKILL.md` "Let Them See the Future" section now cross-references `capabilities/value-proposition-framing.md`.
- `SKILL.md` "Hyper-Personalize" Innovation 2 section now cross-references the U/B/S/E taxonomy + Incentive/Constraint Framework AND `capabilities/value-proposition-framing.md` (Context Stack as input data; dual-frame methodology as output).
- `SKILL.md` Agent Reference Files router restructured into three categories (Targeting capabilities / Operational protocols / Foundational framing) with three new capability rows.
- `references/stakeholder-profiles.md` top-of-file now cross-references `capabilities/value-proposition-framing.md` as downstream consumer.
- `capabilities/icp-definition-protocol.md` cross-references gtm-strategy-protocol, stakeholder-profiles, thesis-protocol, value-proposition-framing, SKILL.md Targeting Foundation.
- `capabilities/gtm-strategy-protocol.md` cross-references icp-definition-protocol (upstream), and movements/deal-velocity/stakeholder-profiles/value-proposition-framing/thesis-protocol/scoring (downstream).
- `capabilities/value-proposition-framing.md` cross-references stakeholder-profiles, icp-definition-protocol, gtm-strategy-protocol, thesis-protocol, SKILL.md Hallucination Protocol + Ethics Layer + Principles + Innovations, examples/cfo-canonical-example.md.
- `capabilities/icp-definition-protocol.md` cites `examples/icp-definition.md` as reference implementation.
- `capabilities/value-proposition-framing.md` cites `examples/cfo-canonical-example.md` as reference implementation.

### v0.5 Session 4 changes

- SKILL.md frontmatter tightened to ~150 chars; long behavioral block moved to new `## When to Use This Skill` body section. Added `version: 0.5` and `allowed-tools: [web_search, web_fetch]` fields. Skill is now officially v0.5.
- New `## Operating Tempo` section added to SKILL.md (after Core Decision Logic): "Move with speed" + "Be proactive" as cross-cutting operating principles. Per Angel's direction, made explicit on the surface what the doctrine has been quietly assuming.
- Output Standards self-enforcement softened from hard 5/5 ship rules to principle-level guidance. The agent runs the tests and surfaces results when meaningful; ship/revise/escalate decisions belong to the LLM and user.
- Ship-or-Revise decision tree dropped from `references/thesis-protocol.md`; replaced with principle-level guidance ("if a gate fails substantively, revise the failing dimension; if multiple fail, the artifact is structurally premature").
- Data Acquisition Protocol stopping rule simplified — dropped 60-min cap and 4-condition prescription, replaced with principle ("stop when each component has a KNOWN anchor and the seller has signal sufficient to write").
- Capability protocol quality gates consolidated to ~3 substantive principles each (coaching, disqualification, thesis-revision, agent-convergence). Procedure-specific gates dropped (Confirm-preserve, Correct-acknowledge, Trigger-Verification, Function-Pairing, Bounded-Ask, Open-Door, Better-Fit). Their substance preserved as guidance text where doctrinal.
- Confirm/Correct/Ignore prescriptions softened in `capabilities/thesis-revision-protocol.md` from prescriptive rules to principle-level guidance.
- Bridge anatomy property 2 softened from "<8 hours" threshold to "bounded — names a specific deliverable the seller has already done or can produce quickly."
- Yellow-Green Ethics boundary made explicit in SKILL.md (Green: explicit professional statements; Yellow: inferences from professional activity; Red: outside professional context).
- `references/deal-velocity.md` Velocity Metrics row reframed from "Industry benchmark minus 30-50%" to "Your own historical median minus 30-50%."
- Velocity-math rounding standardized to two significant figures across SKILL.md and deal-velocity.md.
- Layer-1 naming globalized to "MOVEMENTS" / "PRINCIPLES" / "INNOVATIONS" in SKILL.md Architecture diagram.
- Tier 4 label globalized to "Watch" across `references/scoring.md` and `examples/pipeline-scoring.md`.
- New `examples/first-prompts.md` with vetted starting prompts for new practitioners — covers targeting, account-level work, stakeholder work, pipeline work, coaching, thesis revision, convergence, doctrine learning, and recovery from agent stuck states.

### v0.5 Session 3 added these cross-references

- `SKILL.md` new `## Workflow Enforcement` section threads to every protocol's quality gates and to the Doctrine Constraint Layer.
- `SKILL.md` Agent Reference Files router restructured: Targeting capabilities + Operational capabilities (NEW category) + Operational protocols (renamed from references) + Foundational framing.
- `references/thesis-protocol.md` new sections: Data Acquisition Protocol (with seven-priority source table), Per-market-type Value-at-Stake recipe (B2B Enterprise / Mid-Market / SMB / B2C), Bridge Anatomy (with strong/weak examples), Ship-or-Revise Decision Tree (replacing descriptive quality-gate scoring with workflow logic).
- `references/convergence.md` trimmed with header note pointing at `capabilities/agent-convergence-protocol.md` for operational logic; flagged for migration to Field Manual essay when site launches.
- Four new capabilities/ files cross-reference each other extensively: coaching → disqualification (handoff when deal unrecoverable), coaching → thesis-revision (when revision is part of recovery), coaching → agent-convergence (when deal needs cross-functional capability), disqualification ← coaching (as upstream trigger), thesis-revision ← coaching, agent-convergence ← coaching, scoring, deal-velocity.
- `capabilities/coaching-protocol.md` cites `examples/anthem-coaching.md` as reference implementation.
- `capabilities/gtm-strategy-protocol.md` now cites `examples/gtm-strategy.md` as reference implementation.

### Cross-references not yet wired

- `references/movements.md` does not yet cite any example. Possibly should cite `examples/anthem-coaching.md` for the movement-diagnosis content. Defer to Session 4 cross-link audit.
- `references/deal-velocity.md` does not yet cite any example. No directly aligned artifact exists; consider whether a future field-deployment artifact should ship here.

---

## Pre-existing issues out of v0.5 scope (v0.6 candidates)

### Migration of `references/stakeholder-profiles.md` to `capabilities/`

Surfaced during v0.5 Session 2. The new architecture treats stakeholder-profiles.md as a downstream consumer of the Targeting layer; the U/B/S/E taxonomy and Incentive/Constraint Framework now living in this file fit the `capabilities/` semantic ("a thing the agent does") more naturally than the `references/` semantic ("a protocol the agent consults").

Per the v0.5 plan constraint ("flat references/ layout for existing files stays"), the file remains in `references/` for v0.5. Migration to `capabilities/stakeholder-profiles.md` is queued for v0.6 modular architecture work.

When the migration happens, all cross-references in SKILL.md, capabilities/icp-definition-protocol.md, capabilities/gtm-strategy-protocol.md, capabilities/value-proposition-framing.md, references/thesis-protocol.md, examples/cfo-canonical-example.md, and KNOWN_ISSUES.md need their paths updated.

### `references/movements.md` — 12-month plan defaults

The current `movements.md` leads with a 12-month Familiarity plan with monthly steps, then mentions a 90-day compression as a footnote. The doctrine's velocity narrative says compression is the default; the file teaches the opposite. Audit item **#16** addresses this — three-arc rewrite. Listed above in "audit items not in walk order."

### `references/convergence.md` — operationally vague

The other reference files have decision tables, score thresholds, if-then logic. Convergence has principles and good prose but few executable rules. Audit item **#10** addresses this — split into operational protocol + Field Manual essay. Listed above.

### Skill examples directory does not enforce the README convention

`source/skill/examples/` was created in v0.5 Session 1 with three artifacts. There's no README in the directory describing the example format conventions, expected metadata, or how new examples should be added. Recommend authoring `examples/README.md` in v0.6 alongside the modular architecture migration.

---

## Format conventions for this file

- New entries land at the top of the relevant section.
- Each entry: short title, file path or location, why deferred, what would resolve.
- Resolved entries move to a `## Resolved` section at the bottom (with the resolution recorded).
- This file is reviewed at the start of every skill version increment. New entries discovered between increments accumulate here.
