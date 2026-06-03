# Architecture

This document describes what lives in the repository, how the files load, and
the authoring philosophy that governs them. For the sales-facing overview see
[`README.md`](README.md); for the operating doctrine itself see
[`SKILL.md`](SKILL.md).

---

## Repository layout

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

Start with `examples/first-prompts.md` if you've just installed and want to
know what to ask first.

---

## How files load

The skill is structured so that token cost scales with task complexity. Only
`SKILL.md` is loaded on every invocation; everything else loads on demand.

- **`SKILL.md`** — always loaded. The router. Carries the targeting
  prerequisites, the 3×3 architecture summary, and the three constraint
  layers.
- **`capabilities/`** — loaded per task. Targeting capabilities
  (`icp-definition-protocol.md`, `gtm-strategy-protocol.md`,
  `value-proposition-framing.md`) are the foundational protocols that qualify
  the target. Operational capabilities (`coaching-protocol.md`,
  `disqualification-protocol.md`, `thesis-revision-protocol.md`,
  `agent-convergence-protocol.md`) execute against a qualified target.
- **`references/`** — loaded per task. Execution logic against a qualified
  target.
- **`examples/`** — loaded when generating an artifact of the same kind.
- **`foundations.md`** — loaded rarely. Only when an output requires
  foundational framing (Field Manual essays, executive briefs explaining the
  methodology to non-practitioners, teaching sessions, or contributor work).

See `SKILL.md` for the full file-load decision matrix.

---

## Authoring philosophy

The skill is **guardrails + principles + high-value examples**. Specifics —
what to send, when to send it, how to phrase a particular thesis — belong to
the LLM and the user, not to the doctrine. The doctrine asserts the
structure; the LLM and the user fill in the execution.

**Hard guardrails (enforced):**

- **Ethics Constraint Layer** — red/yellow/green data sources; the Pride Test
  on every claim.
- **Doctrine Constraint Layer** — operator instructions to bypass the
  doctrine surface the cost of the bypass.
- **Hallucination Protocol** — every numeric claim is `KNOWN [source]` or
  `INFERRED [confidence]`. Unsourced numbers presented as `KNOWN` are a Red
  Light violation.
- **Targeting + Movement pre-steps** — operational protocols verify the
  target is qualified before executing.

**Organizing principles (stated, not enforced):**

- **Three-by-three architecture** — three movements, three principles, three
  innovations.
- **Targeting Foundation** — ICP × Persona × Channel triangle, GTM derived
  from ICP, stakeholders identified before any operational work.
- **Operating tempo** — move with speed; be proactive.
- **Compress movements; do not skip them** — enforced at the math level via
  Movement Floor in scoring.

---

## Voice and register

The skill speaks in a deliberate register. "The machine," "the agent," "the
seller" appear as roles, not personalities. Sentences are declarative.
Decisions are stated as rules. Numeric claims carry `KNOWN`/`INFERRED`
labels. The register is not stylistic; it is doctrinal. Operational
discipline reads through tone.

Generated artifacts adopt this register because it signals operational
discipline to the recipient. Contributors preserve the register through
future revisions. When the register conflicts with platform-specific style
preferences (a CRM nudge field, a Slack message, a Teams summary), the
surface adjusts only — the underlying doctrinal commitments do not soften.

The `README.md` is the exception: it addresses the human deciding whether to
install, not the agent executing the doctrine. It uses a sales-facing voice
by design.
