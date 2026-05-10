---
name: icp-definition-protocol
version: 0.5
status: draft
last-updated: 2026-05-08
author: Angel Armendariz
---

# ICP Definition Protocol

The Ideal Customer Profile (ICP) is the foundational prerequisite for every operational protocol in this skill. Without a qualified ICP, every downstream protocol — thesis generation, stakeholder profiling, scoring, coaching — runs against an undefined target and produces output the seller cannot use.

This protocol defines the ICP triangle, specifies how the agent qualifies an ICP, and gates every other capability behind that qualification.

## Purpose

ICP definition answers three questions before the seller takes any action:

1. **Market.** Which segment of buyers can actually buy this product or service?
2. **Persona.** Who within that segment owns the decision?
3. **Channel.** How are they reachable at the doctrine's economics?

A weak answer to any of the three corrupts everything downstream. A thesis built against the wrong market is a beautiful artifact aimed at the wrong account. A value provocation framed for the wrong persona lands as noise. Outreach via the wrong channel never arrives.

## Load Conditions

**Load this file before any of the following tasks:**

- Generating an account thesis or value provocation
- Building or updating a stakeholder profile
- Scoring an opportunity or running pipeline diagnostics
- Coaching a seller through a deal motion
- Constructing a GTM strategy (this file's downstream consumer)
- Any task that begins with "outreach to," "qualify," "score," or "engage"

**Re-load this file when:**

- The operator names a market, persona, or channel that does not match a previously-qualified ICP
- A new product or service is introduced
- Material competitive shift changes which segment the product wins in
- ICP qualification results from a prior session are older than one quarter

The agent does not assume a previously-loaded ICP applies to a new task. It re-qualifies.

## The ICP Triangle

Three axes. All three required. Failure on any one axis disqualifies the ICP regardless of strength on the other two.

### Market

The segment of buyers who can buy the product or service in its current form, at its current price, with its current value proposition.

**Qualifying questions:**

1. What problem does the product or service solve?
2. Which buyer segments experience this problem at material magnitude (not "could benefit from" but "would pay to solve")?
3. Within those segments, which subsets have budget authority and decision velocity matched to the product's economics?
4. What's the size of that addressable subset, with named source for the sizing?

**Disqualification signals:**

- The market answer is "everyone with [generic problem]" — too broad to action.
- The market answer requires the buyer to first recognize a problem they don't currently see — that's an Awareness-stage market, not a buyable market. The product belongs further upstream than the seller imagines.
- The market is technically valid but the buyer is structurally unable to commit (regulated, contractually constrained, recently bought a competing solution).

### Persona

The specific role within the qualified market that owns the buying decision. Not "the buying committee" — the specific persona whose authority closes the deal.

**Qualifying questions:**

1. What role title (or family of titles) holds budget authority on this purchase?
2. What is this persona's incentive structure — how are they compensated, recognized, advanced?
3. What constrains this persona — monetary, time, risk, feasibility? (See `references/stakeholder-profiles.md` Incentive/Constraint Framework.)
4. What is this persona's decision pattern — data-driven, relationship-oriented, consensus-seeking, fast-moving, risk-averse?

**Disqualification signals:**

- The persona is named generically ("the head of sales") without authority verification.
- The persona has influence but not authority — buying committees with this persona always defer to a parent role.
- The persona is reachable in principle but is structurally protected by gatekeepers the seller cannot reach through the chosen channel.

### Channel

The reachable path from the seller to the persona, at scale and economics that make the doctrine viable.

**Qualifying questions:**

1. Where does this persona consume professional information (publications, communities, events, peer networks, owned media)?
2. What pattern of touchpoints reliably reaches this persona at the seller's available capacity?
3. What does each touchpoint cost (time, money, attention) and what does it yield (response rate, conversion to next step)?
4. Is the channel saturated by competitors at the persona's attention level?

**Disqualification signals:**

- The channel reaches the persona but at a cost-per-touchpoint that exceeds the deal's unit economics.
- The channel is reachable in theory but requires capacity (content production, event presence, relationship density) the seller does not have.
- The channel is dominated by entrenched competitors and the seller cannot achieve share-of-voice at viable spend.

## Qualification Protocol

The agent runs this sequence to define or verify an ICP for any task:

1. **State the product or service explicitly.** Not "our solution" — specific product or service with named features and named pricing posture.
2. **Name the candidate market with sizing logic and source.** Quantify the addressable subset. Cite the source. Apply the Hallucination Protocol — if the size figure has no defensible source, label `INFERRED [confidence]`.
3. **Name the candidate persona** with role family, authority verification, incentive structure, and decision pattern. The Incentive/Constraint Framework in `references/stakeholder-profiles.md` is required input.
4. **Name the candidate channel** with reach mechanics, cost-per-touchpoint, and competitive saturation analysis.
5. **Test the triangle for coherence.** A coherent triangle has the persona reachable through the named channel within the named market, with all three answers internally consistent. Inconsistent triangles get re-qualified or rejected.
6. **Document the qualified ICP** as a structured record the agent and downstream protocols can read.

## Worked Example

See `examples/icp-definition.md` for a fully-specified ICP triangle applied to a hypothetical product. Read it before qualifying any new ICP — the structure of the qualified output is more useful than the protocol description alone.

## Quality Gates

Before any qualified ICP is used as input to a downstream protocol, the agent runs these tests:

1. **Specificity test.** The ICP must exclude more than it includes. If the named market, persona, and channel collectively describe more than ~10% of the seller's broad addressable universe, the ICP is too broad. Tighten until exclusion is meaningful.
2. **Channel test.** The channel must be reachable at the doctrine's scale economics — touchpoint cost, capacity required, response-rate expectations all sum to a viable acquisition motion. If the math breaks, the ICP fails.
3. **Persona-Authority test.** The persona must hold authority on this specific purchase, not just influence. If the persona's role family routinely defers to a parent role on purchases of this size or category, re-qualify with the parent role as persona.
4. **Coherence test.** Read the three axes together as a single sentence: "We are selling [product] to [persona] in [market] via [channel]." If the sentence reads naturally and is non-trivially specific, the ICP is coherent. If any axis sounds bolted on, re-qualify.
5. **Pride Test.** If the prospect (a real example of the named persona) saw exactly how this ICP was constructed, would they recognize themselves and the framing as accurate, or would they recognize themselves and feel mis-categorized? Mis-categorization is a Pride Test failure.

Score 5/5: ICP is qualified; downstream protocols may proceed. Score 4/5: ICP is acceptable; flag the failing test for refinement. Score 3/5 or below: ICP is not qualified; do not run downstream protocols against it.

## Cross-References

- `gtm-strategy-protocol.md` — downstream consumer. The qualified ICP is the primary input to GTM strategy construction.
- `references/stakeholder-profiles.md` — defines the User/Buyer/Sponsor/Enabler taxonomy and the Incentive/Constraint Framework, both used inside the persona axis qualification.
- `references/thesis-protocol.md` — theses are generated against an ICP, not in the abstract. Thesis generation requires a qualified ICP as a prerequisite.
- `value-proposition-framing.md` — value-proposition framing operates inside the persona's incentive/constraint frame, which is established here.
- `SKILL.md` Targeting Foundation — the architectural section that names ICP definition as a foundation prerequisite to the 3×3 operational doctrine.

## Voice and Register

This file follows the voice convention documented in `SKILL.md`. "The agent," "the seller," "the persona" appear as roles. Decisions are stated as rules. The register signals operational discipline; contributors preserve it through future revisions.
