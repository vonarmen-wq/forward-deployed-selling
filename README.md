# Forward Deployed Selling — Claude Skill

The operating doctrine for AI-era enterprise sales, packaged as a Claude Skill.

Once installed, Claude inherits the full doctrine: the Targeting Foundation (ICP definition, GTM strategy, stakeholder identification with the User/Buyer/Sponsor/Enabler taxonomy and Incentive/Constraint Framework), the three-by-three operational architecture (movements, principles, AI-native innovations), and the constraint layers (Ethics, Doctrine, Hallucination Protocol). Any agent built on Claude — and on other platforms supporting the open Agent Skills spec — can apply the doctrine the same way.

The skill is free, versioned, and updated on a published cadence. Canonical home: **[forwarddeployedselling.com](https://forwarddeployedselling.com)**.

---

## Install

**Claude.ai** — Settings → Capabilities → Skills → Add → upload this folder (or the zip from [forwarddeployedselling.com/forward-deployed-selling-v0.5.zip](https://forwarddeployedselling.com/forward-deployed-selling-v0.5.zip)). Claude loads the skill into the active session and into all subsequent sessions automatically.

**Claude Code** — place this folder in your skills directory (typically `~/.claude/skills/forward-deployed-selling/`).

**Claude API** — upload via the Skills API. The skill conforms to Anthropic's open Agent Skills specification and works cross-platform (Codex CLI, ChatGPT) without modification.

For step-by-step instructions and a verification prompt, see [forwarddeployedselling.com/skill/install](https://forwarddeployedselling.com/skill/install).

---

## What's in here

```
SKILL.md                          The router. Always loaded. Decides which protocols
                                  load for which task; carries the targeting
                                  prerequisites, the 3×3 architecture summary,
                                  and the three constraint layers.

foundations.md                    Doctrinal framing. Why the principles matter,
                                  why velocity is structural, the four Revenue
                                  Physics forces. Loaded only when an output
                                  requires foundational framing.

capabilities/                     Loaded per task.
  icp-definition-protocol.md        ICP triangle (Market × Persona × Channel)
  gtm-strategy-protocol.md          GTM as f(ICP, product/service)
  value-proposition-framing.md      Dual-frame methodology + FUD test
  coaching-protocol.md              Live-deal coaching with three-axis diagnosis
  disqualification-protocol.md      Honesty Mandate operationalized
  thesis-revision-protocol.md       Validation → refinement → re-delivery loop
  agent-convergence-protocol.md     Cross-functional orchestration

references/                       Loaded per task.
  thesis-protocol.md                Thesis generation (5 components, sourced)
  stakeholder-profiles.md           Profile Schema + U/B/S/E + Incentive/Constraint
  movements.md                      Awareness → Familiarity → Value
  deal-velocity.md                  Wait-state detection, parallel workstreams
  scoring.md                        Composite Opportunity Score with Movement Floor
  convergence.md                    Doctrinal framing for cross-functional revenue

examples/                         Reference implementations. Read before generating
                                  artifacts of the same kind.
  delta-thesis.md                    Full thesis on Delta Air Lines (public data)
  cfo-canonical-example.md           Dual-frame value proposition
  anthem-coaching.md                 Stalled-deal coaching diagnostic
  pipeline-scoring.md                Multi-account composite scoring
  icp-definition.md                  ICP triangle worked example
  gtm-strategy.md                    GTM strategy derived from the ICP
  first-prompts.md                   Vetted starter prompts for new practitioners

KNOWN_ISSUES.md                   Inventory of design-target performance claims
                                  pending field benchmark, deferred audit items,
                                  v0.6 candidate work, and contributor notes.
```

Start with `examples/first-prompts.md` if you've just installed and want to know what to ask first.

---

## Authoring philosophy

The skill is **guardrails + principles + high-value examples**. Specifics — what to send, when to send it, how to phrase a particular thesis — belong to the LLM and the user, not to the doctrine. The doctrine asserts the structure; the LLM and the user fill in the execution.

Hard guardrails (enforced):
- **Ethics Constraint Layer** — red/yellow/green data sources; the Pride Test on every claim.
- **Doctrine Constraint Layer** — operator instructions to bypass the doctrine surface the cost of the bypass.
- **Hallucination Protocol** — every numeric claim is `KNOWN [source]` or `INFERRED [confidence]`. Unsourced numbers presented as `KNOWN` are a Red Light violation.
- **Targeting + Movement pre-steps** — operational protocols verify the target is qualified before executing.

Organizing principles (stated, not enforced):
- **Three-by-three architecture** — three movements, three principles, three innovations.
- **Targeting Foundation** — ICP × Persona × Channel triangle, GTM derived from ICP, stakeholders identified before any operational work.
- **Operating tempo** — move with speed; be proactive.
- **Compress movements; do not skip them** — enforced at the math level via Movement Floor in scoring.

---

## Status and provenance

This is the v0.5 release. It carries `version: 0.5` in the SKILL.md frontmatter.

**Performance claims throughout the skill are tagged `[design target]`.** Charter cohort field deployment against v0.7 will replace design targets with field-measured benchmarks. See `KNOWN_ISSUES.md` for the upgrade path.

The doctrine has been built in production across deal sizes from five hundred thousand to five hundred million dollars, refined against losses that older methodologies (MEDDIC, BANT, Challenger) could not explain. The author — Angel Armendariz — is a twenty-year enterprise sales practitioner. Field experience inside AWS, Saxony Partners, and Caerus Alpha shaped the doctrine; the skill operationalizes it.

---

## License + attribution

Apache 2.0. See [`LICENSE`](LICENSE) and [`NOTICE`](NOTICE).

The skill files may be installed, copied, modified, and redistributed under Apache 2.0. The "Forward Deployed Selling" name and "FDS Certified" mark are protected; commercial use of the methodology name (consulting offerings, software products, certification programs) requires separate licensing — see [forwarddeployedselling.com/license](https://forwarddeployedselling.com/license).

IP holder: **Caerus Capital Group, LLC**.

---

## Versioning + contribution

The skill ships on a published cadence. Version notes live at [forwarddeployedselling.com/skill/changelog](https://forwarddeployedselling.com/skill/changelog).

Pre-v1.0 (currently v0.5), Angel is sole maintainer. All changes flow through him. Issues and discussions are welcome on this repo; pull requests are reviewed but not the primary contribution mechanism at this stage.

Post-v1.0, a limited contributor model opens — Master Practitioners may contribute market and motion adapters, licensees may contribute stack adapters, certified practitioners may contribute domain overlays. Core doctrine remains under Angel's control.

---

## Where to go next

- Read the doctrine: [forwarddeployedselling.com/doctrine](https://forwarddeployedselling.com/doctrine)
- Install the skill: [forwarddeployedselling.com/skill/install](https://forwarddeployedselling.com/skill/install)
- See worked examples: the `examples/` folder, or [forwarddeployedselling.com/field-manual](https://forwarddeployedselling.com/field-manual)
- Apply for charter draft access to the book: [forwarddeployedselling.com/book/draft-access](https://forwarddeployedselling.com/book/draft-access)
- License inquiries: [forwarddeployedselling.com/license](https://forwarddeployedselling.com/license)
