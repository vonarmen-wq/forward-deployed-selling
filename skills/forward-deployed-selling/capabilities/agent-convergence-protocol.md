---
name: agent-convergence-protocol
consumes: [ICP Record, Deal Record, Stakeholder Profile, Score Card, Velocity Profile, Coaching Artifact]
emits: Mobilization Request
gate: bidirectionality + Pride Test
---

# Agent Convergence Protocol

Prerequisites: ICP Record, Deal Record, Stakeholder Profile per engaged buyer-side contact, Score Card, Velocity Profile, Coaching Artifact where one exists; plus visibility into the seller organization's available capability (engineers on the bench, customer success managers who can take a reference call, product managers in the geography).

Convergence is the orchestration layer that mobilizes the organization's full capability around a customer's specific problem: engineering, product, customer success, finance, each at the deal stage where it has leverage. Without an executable protocol, sellers either under-mobilize (deal runs on seller capability alone) or over-rotate (everyone in every deal, goodwill exhausted). (The essay on why convergence matters is in `foundations.md`; the operational framing in `foundations-appendix.md`.)

Do not run when the deal is healthy and the question is a generic "should I bring more people in?" with no named signal, or when the mobilization is relationship-tending unrelated to deal execution.

## Convergence triggers

Protocol-level triggers, any one of which starts the decision table:

- Score Card tier ≤3 with a named failing dimension.
- Velocity Profile with ≥3 open wait states.
- Coaching Artifact diagnosis naming a capability gap beyond the seller's reach.
- The seller asks for a mobilization recommendation.
- A late-stage deal needs reference handoff, architecture validation, or commercial creativity beyond standard terms.

Decision table. The agent runs it against the deal state and surfaces matches to the seller for validation.

| Trigger | Observable signal | Threshold | Mobilize |
|---|---|---|---|
| Technical depth gap | Architecture or implementation questions the seller cannot answer with authority | 1 unanswered question OR a requested architecture review | Engineering; the author of any content the prospect referenced |
| Social proof needed | Late Familiarity / early Value; peer-validation need expressed | Stated reference request, OR Movement score 5–6 with Familiarity 3 and Value ≤1 | Customer Success: a peer reference matched to the prospect's situation |
| Roadmap is a decision factor | Evaluation includes long-term strategic fit | "Where are you headed in 18+ months", or strategic-evaluation framing | Product Management: roadmap alignment |
| Deal structure is a differentiator | Standard terms not winning | Competitive evaluation underway AND the named alternative is structurally cheaper | Finance: phased investment, risk sharing, capex/opex shift |
| Content gap | No seller content addresses the prospect's specific technical or industry challenge | Stated problem returns no internal content match | Engineering or Product: commission targeted content |
| Implementation risk is high | Environment where standard deployment assumptions may not hold | Stated integration concern, OR a known-complex stack | Customer Success + Engineering: feasibility analysis |

Thresholds are conservative. One firing is a candidate the agent surfaces; 2 or more firings of the same trigger across the deal cycle is a clear signal.

## Stakeholder-to-function map by movement

High-leverage pairings. Unlisted pairings are permitted but lower leverage; the agent cautions against over-rotation.

| Buyer stakeholder | Awareness | Familiarity | Value |
|---|---|---|---|
| CEO | Marketing-led content | Seller-led direct relationship | Executive sponsor reference (CS) |
| CFO | Finance-authored content (ROI methodology) | — | Finance: creative deal structure |
| CTO / VP Engineering | Engineering-authored technical content | Architecture review (Engineering) | Solutions-architecture deep dive (Engineering + Product) |
| Chief Revenue Officer / VP Sales | — | CS peer references | Implementation timeline and value realization (CS) |
| COO / Operations | — | Operational benchmark data (CS or Product) | Feasibility analysis (CS + Engineering) |
| User-function leaders | Product content (user-centered case studies) | Product Management on roadmap fit | Product Management on feature prioritization |
| Procurement / Legal (Enabler) | — | — | Finance + Legal on contract structure |

Early movements lean on content and broad-context interaction; late movements on named individuals doing specific work.

## Output template

```
## Mobilization Request — <account>
Targeting: ICP <name> (qualified <date>) · Movement: <A/F/V + sub-scores> · Protocol: agent-convergence-protocol.md · Gate: <pass | fail: check> · Output Standards: <n/5>
Trigger: <row name> · Signal: <observable> · Firings this cycle: <n> · Function: <per map>

### Context
One paragraph: the deal, its movement, the specific need.

### Ask
Specific, bounded, scoped. e.g. "Two-hour on-site with the prospect's CTO on multi-site FHIR integration architecture."

### Time commitment
<hours, agent estimate; contributor confirms>

### Impact
<deal size, probability lift, cycle compression; labeled per canon.md; qualitative where material but unquantified>

### Timing
<date or trigger event>

### Reciprocity
<what the seller has contributed, or will contribute, back to the function's domain>
```

Bad: "Can someone from engineering join a customer call?" Good: "Meridian Software (Value, $2.8M) needs architecture validation for a multi-site SAP-to-warehouse integration. Their CTO read our Iceberg interoperability paper and wants the author. Two-hour on-site, week of June 16. This is the primary technical objection; without it the prospect defaults to incumbent risk-aversion at decision."

## Contribution tracking

On completion the agent appends to the Revenue Contribution Journal:

```
DATE | CONTRIBUTOR (name, function, role) | ACCOUNT | TRIGGER | ACTION (specific, bounded) | IMPACT (labeled) | TIME INVESTED (hours)
```

The journal feeds trigger-threshold refinement across deals and the recognition record for contributors; without recognition, contributions decline.

## Anti-patterns

- **Over-rotation.** 3 or more triggers fired on one deal in the trailing 30 days: the agent surfaces the pattern proactively (guardrail, not gate).
- **Empty handoff.** A contributor introduced without context; prevented by the request template.
- **Credit dispute.** Attribution rules must exist organizationally; the journal is the audit trail.
- **Mandate without support.** "Revenue is everyone's job" without incentive or recognition change: the agent flags, per the Doctrine Constraint Layer, operator instructions to mobilize outside the triggers above.
- **One-way street.** Caught by the bidirectionality check.

## Gate

1. **Bidirectionality.** The request records what the seller has contributed or will contribute back to the function's domain (product intelligence, customer-success outcomes, engineering priorities). An extraction-only request fails and must carry a reciprocity action.
2. **Pride Test.** The contributor, reading the request, recognizes serious deal execution that respects their expertise, not a generic ask. The request names the trigger, the observable signal, the function per the map, and a bounded deliverable with time and timing.

Pass: both checks. Operator instructions to mobilize outside the doctrine's triggers are a Doctrinal Bypass requiring confirmation.

Plus the five Output Standards. A failed check is named in the artifact's header. Shipping on a failed gate is a Doctrinal Bypass.
