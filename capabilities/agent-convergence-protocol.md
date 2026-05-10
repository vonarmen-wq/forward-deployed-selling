---
name: agent-convergence-protocol
version: 0.5
status: draft
last-updated: 2026-05-08
author: Angel Armendariz
---

# Agent Convergence Protocol

The operational counterpart to `references/convergence.md`. This file carries decision rules, score thresholds, and if-then logic for cross-functional orchestration. The philosophical content — why convergence matters, the cultural implications, the structural barriers — remains in `references/convergence.md` for v0.5 and migrates to a Field Manual essay when the site launches.

Convergence is the doctrine's name for the orchestration layer that mobilizes an organization's full capability around a customer's specific problem. Engineering, product management, customer success, finance — each contributes distinct value at specific deal stages. This protocol tells the agent when to trigger convergence, who to mobilize, and how to track the contributions.

## Purpose

Without an executable convergence protocol, sellers default to one of two failure modes: under-mobilization (running deals on seller capability alone, missing the cross-functional contributions that differentiate at scale) or over-rotation (pulling everyone into every deal, exhausting goodwill and degrading response quality).

This protocol produces:

1. **Specific convergence triggers** — the observable signals that warrant cross-functional mobilization, with thresholds.
2. **A stakeholder-to-function map** — given a deal stage and a buyer-side stakeholder, which seller-side function adds the highest leverage.
3. **Mobilization request templates** — what the agent generates when requesting cross-functional support.
4. **Contribution tracking** — how the doctrine captures who contributed what so post-deal learning compounds.

## Load Conditions

**Load this file when ANY of the following is true:**

- A deal-velocity diagnostic flags an information gap requiring expertise the seller does not have (per `references/deal-velocity.md` Wait State Categories).
- A coaching diagnosis (per `coaching-protocol.md`) concludes the deal needs cross-functional capability that exceeds the seller's reach.
- A scoring composite shows FDRI capability gap on a high-Movement deal (per `references/scoring.md` Risk Pattern: "High Movement, Low FDRI").
- The seller asks for a mobilization recommendation: "should I bring engineering into this deal?"
- A late-stage deal needs reference handoff, architecture validation, or commercial creativity beyond standard terms.

**Do NOT load this file when:**

- The deal is healthy and the seller is asking generic "should I bring more people in?" questions without specific signals — over-rotation risk.
- The mobilization is for relationship-tending unrelated to deal execution — that is not convergence, that is a different category of cross-functional engagement.

**Required prerequisites:**

- A qualified ICP per `capabilities/icp-definition-protocol.md`.
- Stakeholder profiles per `references/stakeholder-profiles.md` for the engaged buyer-side contacts.
- Visibility into the seller's own organization's available capabilities (which engineers are on the bench for customer engagement, which customer success managers can take a reference call, which product managers are in the geography, etc.).

## Convergence Triggers — Decision Table

Six triggers. Each names the observable signal, the threshold, and the recommended mobilization. The agent runs this table against the deal state and surfaces matches to the seller for validation.

| Trigger | Observable Signal | Threshold | Recommended Mobilization |
|---------|-------------------|-----------|--------------------------|
| Technical depth gap | Prospect asks architecture or implementation questions the seller cannot answer with authority | 1 unanswered question OR prospect requests architecture review | Engineering — specifically the engineer whose published content the prospect referenced, where applicable |
| Social proof needed | Prospect is in late Familiarity / early Value movement, has expressed peer-validation need | Stated request for reference, OR scoring shows Trust Protocol need at Movement Score 5–6 | Customer Success — for a peer reference matched to the prospect's specific situation |
| Roadmap is decision factor | Prospect's evaluation includes long-term strategic fit, not just current capability | Mention of "where are you headed in 18+ months," OR strategic-evaluation framing | Product Management — for roadmap alignment discussion |
| Deal structure is differentiator | Commercial terms can create or break competitive advantage; standard terms not winning | Competitive evaluation underway AND named alternative is structurally cheaper | Finance — for creative deal structure (phased investment, risk-sharing, capex/opex shift) |
| Content gap exists | No existing seller content addresses the prospect's specific technical or industry challenge | Prospect's stated problem returns no internal content match | Engineering or Product — to commission targeted technical content |
| Implementation risk is high | Prospect's environment is complex enough that standard deployment assumptions may not hold | Stated concern about integration risk, OR prospect operates a known-complex stack | Customer Success + Engineering jointly — for implementation feasibility analysis |

The thresholds are conservative. A trigger that fires once is a candidate; a trigger that fires twice across the deal cycle is a clear signal. The agent surfaces single-firings to the seller; the seller decides whether the signal is meaningful.

## Stakeholder-to-Function Map by Deal Stage

When a specific buyer-side stakeholder is engaged at a specific deal stage, certain seller-side functions add the highest leverage. The map below names the high-leverage pairings; non-listed pairings are not forbidden but are lower-leverage and the agent recommends caution against over-rotation.

| Buyer Stakeholder | Awareness Stage | Familiarity Stage | Value Stage |
|-------------------|-----------------|-------------------|-------------|
| CEO | Marketing-led content | Direct relationship-building (seller-led) | Executive sponsor reference (Customer Success) |
| CFO | Finance-authored content (e.g., ROI methodologies) | — | Finance — creative deal structuring |
| CTO / VP Engineering | Engineering-authored technical content | Architecture review (Engineering) | Solutions architecture deep-dive (Engineering + Product) |
| CRO / VP Sales | — | Customer Success peer references | Implementation timeline + value realization (CS) |
| COO / Operations | — | Operational benchmark data (CS or Product) | Implementation feasibility analysis (CS + Engineering) |
| User-function leaders | Product content (e.g., user-centered case studies) | Product Management discussion of roadmap fit | Product Management on feature prioritization input |
| Procurement / Legal | — | — | Finance + Legal coordination on contract structure |

The map's logic: in early Movement, the leverage is from content and broad-context interactions (Marketing, Engineering content); in late Movement, the leverage is from specific named individuals doing specific work (the engineer who solves the architecture concern; the customer who provides the reference; the CFO-side commercial creativity).

## Mobilization Request Templates

When the agent triggers a convergence recommendation, it generates a structured mobilization request the seller passes (or forwards) to the cross-functional contributor. The request has five components.

### 1. Context

What the deal is, what movement it occupies, what the specific need is. One paragraph; no padding.

### 2. Ask

What the function is being asked to contribute. Specific, bounded, scoped. Examples:

- "Two-hour on-site session with the prospect's CTO to address multi-site FHIR integration architecture concerns."
- "Thirty-minute reference call with [named existing customer] who deployed similarly two years ago."
- "Review of standard MSA against the prospect's [named regulatory framework] compliance requirements; recommend deviations needed."

### 3. Time Commitment

Estimated hours required. The agent's estimate; the function-side contributor confirms or adjusts.

### 4. Impact

How this contribution affects deal outcome. Quantified where possible — deal size, probability lift, cycle compression. Unquantified where the impact is qualitative but material.

### 5. Timing

When the contribution is needed. Specific date or trigger event.

### Example mobilization request

> **Bad mobilization request:** "Can someone from engineering join a customer call?"
>
> **Good mobilization request:** "Meridian Software (Value movement, $2.8M opportunity) needs architecture validation for their multi-site SAP-to-data-warehouse integration. Their CTO read our Apache Iceberg interoperability paper and wants to discuss it with the author. 2-hour on-site session, week of June 16. This addresses the primary technical objection blocking the deal — without it, the prospect defaults to incumbent risk-aversion at decision."

The structured request is itself doctrine — it respects the cross-functional contributor's time, demonstrates the seller has done the diagnostic work to know what to ask for, and produces a record of the contribution for downstream tracking.

## Contribution Tracking — The Revenue Contribution Journal

Per the philosophical content in `references/convergence.md`, the doctrine treats cross-functional contribution as a first-class output worth tracking. The Revenue Contribution Journal is the mechanism.

The agent populates the journal automatically when a mobilization completes:

```
DATE: [completion date]
CONTRIBUTOR: [name, function, role]
ACCOUNT: [deal name]
TRIGGER: [which convergence trigger fired]
ACTION: [what they did — specific and bounded]
IMPACT: [observed or estimated effect on deal — KNOWN/INFERRED labeled]
TIME INVESTED: [hours]
```

The journal is not bureaucracy. It is the input data for two doctrinal functions:

1. **Pattern matching across deals.** Which convergence triggers correlate with which deal outcomes. Which functions produce highest leverage in which deal stages. This data feeds the trigger threshold refinement.
2. **Recognition infrastructure.** Cross-functional contributors who show up in the journal repeatedly for high-impact contributions get visibility in their own performance reviews. The doctrine's commercial logic depends on the journal's signal — without recognition, contributions decline.

## Quality Gates

Three principles the agent applies to every convergence recommendation:

1. **Specificity.** The recommendation names a specific trigger with the underlying observable signal, names the high-leverage function for the buyer-stakeholder and deal stage, and produces a bounded mobilization request (specific deliverable, time commitment, timing). Vague "this deal could use cross-functional support" recommendations fail.
2. **Bidirectionality.** Convergence is bidirectional. The agent checks whether the seller has reciprocated — contributed back to the function's domain (product intelligence, customer success outcomes, engineering priorities). Asymmetric extraction patterns include a reciprocity action in the recommendation.
3. **Pride Test.** If the cross-functional contributor saw the mobilization request, would they recognize the work as serious deal execution that respects their expertise, or as a generic ask?

Over-rotation watch is a guardrail rather than a gate — when three or more convergence triggers have fired on a single deal in the trailing 30 days, the agent surfaces the pattern to the seller proactively. The Doctrine Constraint Layer applies (operator instructions to mobilize convergence outside the doctrine's logic get flagged for confirmation).

## Convergence Anti-Patterns

The agent watches for and flags these failure modes (also documented in `references/convergence.md` philosophical content):

- **The Over-Rotation.** Pulling everyone into every deal. Detected by the Over-Rotation Gate.
- **The Empty Handoff.** Introducing a cross-functional contributor without proper context. Prevented by the structured Mobilization Request template.
- **The Credit Dispute.** Convergence contribution triggers commission disputes. The journal's audit trail is the doctrinal answer; clear attribution rules need to exist organizationally before convergence becomes systematic.
- **The Mandate Without Support.** Leadership declares "revenue is everyone's job" without changing incentives, recognition, or resource allocation. The agent does not invoke convergence in organizations that have not built the recognition infrastructure (Convergence Readiness Assessment in `references/convergence.md` low scores).
- **The One-Way Street.** Detected by the Bidirectionality Gate.

## Cross-References

- `references/convergence.md` — philosophical companion. Why convergence matters, cultural implications, structural barriers. Will migrate to Field Manual essay when site launches.
- `references/deal-velocity.md` — Wait State Categories that produce convergence triggers (information gap, approval queue, etc.).
- `references/scoring.md` — FDRI capability gap on high-Movement deals is a primary convergence trigger.
- `references/stakeholder-profiles.md` — the U/B/S/E taxonomy and Incentive/Constraint Framework that feed the stakeholder-to-function map.
- `coaching-protocol.md` — when coaching diagnosis concludes the deal needs cross-functional capability, hands off to this protocol cleanly.
- `capabilities/icp-definition-protocol.md` — qualified ICP is upstream prerequisite.
- `capabilities/gtm-strategy-protocol.md` — the GTM's named sales artifacts often require convergence to produce.
- `SKILL.md` Doctrine Constraint Layer — operator instructions to mobilize convergence outside the doctrine's logic (e.g., "pull everyone into this deal regardless of triggers") get flagged for confirmation per the Doctrinal Bypass category.
- `SKILL.md` Voice and Register.

## Voice and Register

This file follows the voice convention documented in `SKILL.md`. Operational logic, declarative rules, agent-as-role.
