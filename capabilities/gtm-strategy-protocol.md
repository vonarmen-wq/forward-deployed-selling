---
name: gtm-strategy-protocol
version: 0.5
status: draft
last-updated: 2026-05-08
author: Angel Armendariz
---

# GTM Strategy Protocol

Go-to-market strategy is not defined in the abstract. It is a function of two inputs: the qualified ICP and the product or service being sold. Change either input, and the GTM strategy must be re-derived.

This protocol defines the dependency, names the GTM components, specifies the derivation rules, and gates GTM construction behind ICP qualification.

## Purpose

A GTM strategy answers: *given this ICP and this product, what specific motion, channel, message, artifact, and qualification produces revenue at the doctrine's velocity?* Without a defined GTM, the seller defaults to the firm's preferred motion (which may not match the ICP) or to the seller's habits (which may not match either). The result is generic outreach, mis-aligned messaging, and cycle drag.

GTM strategy is downstream of ICP definition. It is upstream of every operational protocol (movement diagnosis, thesis generation, deal velocity, scoring). The agent constructs or verifies a GTM after qualifying the ICP and before running operational work.

## Load Conditions

**Load this file when:**

- Constructing a GTM strategy from a freshly qualified ICP
- Evaluating an existing GTM motion against current ICP, product state, and market conditions
- Scoping an outbound program, expansion play, or new-segment entry
- Diagnosing why a deal motion is failing in ways the ICP-GTM coherence test would surface
- Advising on channel mix or sales artifact priority

**Required prerequisite:** A qualified ICP from `icp-definition-protocol.md`. Do not run this protocol without one.

**Re-load this file when:**

- The qualified ICP changes
- The product or service changes (new SKU, repositioning, pricing change)
- Material competitive shift requires GTM repositioning
- The current GTM has been measured against benchmarks for one quarter and the data warrants re-derivation

## The Dependency

`GTM = f(ICP, product/service)`

Both inputs are required. The function is not commutative — the same ICP across different products produces different GTMs; the same product across different ICPs produces different GTMs. This is why GTM cannot be a static template and why off-the-shelf GTM playbooks fail under doctrine application.

The dependency runs one direction. ICP defines the GTM, not the reverse. Sellers who attempt to "expand the ICP to fit the GTM we already have" are working backwards. Re-qualify the ICP if the existing GTM no longer serves it.

## The Five GTM Components

Every GTM strategy specifies these five components. Each is derived from the ICP + product/service inputs, not assumed.

### 1. Motion

How deals move from awareness to close. Five canonical motions — see also `references/movements.md` for the buyer-side movement taxonomy.

| Motion | Starting state | Default for |
|--------|---------------|-------------|
| Outbound new-logo | Cold context, no prior relationship | Net-new market entry; persona-led growth |
| Inbound qualification | Partial Familiarity from content consumption or peer referral | Established brand presence; high-intent traffic |
| Expansion | Existing customer relationship | Proven product-market fit; multi-product portfolio |
| Renewal | Lapsing customer relationship | Subscription / consumption businesses |
| Winback | Lapsed former customer | Mature businesses with churn surface |

The motion is not a free choice. The ICP and product/service determine which motion is viable. Outbound new-logo requires a market large enough to sustain cold-touch economics; inbound qualification requires a brand presence the seller may not have; expansion requires an existing customer base.

### 2. Channel

Where the seller reaches the persona at scale. The channel was qualified during ICP definition (per `icp-definition-protocol.md`), but the GTM specifies the channel mix — primary channel, secondary channels, and the touchpoint pattern across them.

Channels are not equally efficient across motions. Outbound new-logo via direct sales is different work than outbound new-logo via partnership-led referrals. The GTM specifies the actual channel pattern, not the channel category.

### 3. Messaging Anchor

The single argument the GTM is organized around. Not the product description, not the company tagline — the *one thing* that, if the persona believed it, would make them take the next step.

The messaging anchor follows from the persona's incentive/constraint frame (see `references/stakeholder-profiles.md`). For a CFO whose incentive is operating margin expansion under a cash-flow covenant constraint, the messaging anchor is "operating margin lift that respects the covenant," not "AI-powered transformation." The anchor names the buyer's specific situation in the buyer's specific language.

### 4. Sales Artifacts

The deliverables the GTM produces and uses. Different motions require different artifacts:

- Outbound new-logo: thesis, value provocation, peer comparison, dual-frame value-proposition (per `value-proposition-framing.md`)
- Inbound qualification: discovery-validation framework, fit assessment, business case template
- Expansion: usage analysis, expansion thesis, account-level ROI documentation
- Renewal: realized-value summary, risk register, renewal proposal
- Winback: situation-shift analysis, winback offer, re-engagement framework

The GTM names the specific artifacts required, not the artifact category. Each artifact's protocol lives in the relevant capabilities/ or references/ file.

### 5. Qualification Criteria

The bar an opportunity must meet to be considered an opportunity in this GTM. Qualification criteria are derived from the ICP — they are the ICP applied to a specific account.

Without explicit qualification criteria, every account that responds becomes an opportunity, and the pipeline fills with deals that do not match the ICP. The qualification criteria operationalize the ICP at deal level.

## ICP → GTM Derivation Rules

How each ICP dimension shapes each GTM component:

| ICP Dimension | Shapes Motion | Shapes Channel | Shapes Messaging | Shapes Artifacts | Shapes Qualification |
|---------------|---------------|----------------|------------------|------------------|---------------------|
| Market size | Large markets afford outbound; small markets demand expansion or partnership | Channel saturation analysis follows market size | Messaging breadth follows market homogeneity | Artifact reusability follows market homogeneity | Qualification specificity follows market depth |
| Persona authority | High-authority personas afford direct outreach; low-authority personas require multi-stakeholder motions | Channel must reach the persona's information consumption pattern | Messaging anchor matches persona's incentive/constraint frame | Artifacts must serve the persona's decision pattern | Qualification must verify authority, not just interest |
| Channel economics | Channel cost-per-touchpoint constrains motion choice | Defined here directly | Messaging carries the channel's information density (newsletter messaging differs from direct-sales messaging) | Artifacts adapted to channel medium | Qualification cost must be lower than touchpoint cost |

These rules are not exhaustive. They are the most common derivation patterns. Edge cases require explicit ICP-GTM coherence analysis.

## Worked Example

See `examples/icp-definition.md` for the upstream ICP. Extension to a full GTM strategy will appear as a future example artifact in `examples/gtm-strategy.md` (forthcoming). For now, the protocol provides the construction; a fully worked example follows in v0.5 Session 3 alongside the operational protocols that consume the GTM output.

## Quality Gates

Before any GTM strategy is operationalized, the agent runs these tests:

1. **Coherence test.** Does the GTM serve the ICP, or does it default to the seller's preferred motion regardless of ICP fit? Read the GTM and the ICP together — does each component of the GTM follow from the ICP, or does the GTM exist independently?
2. **Resource test.** Can the seller's organization sustain this GTM at the cadence and capacity it requires? Outbound new-logo at scale requires SE capacity, content production, and sales engineering capacity. Expansion-led GTM requires customer success integration. The GTM must match the org's deployable capability, not its aspirational capability.
3. **Velocity test.** Does this GTM run at the speed the doctrine requires? See `references/deal-velocity.md`. A GTM that produces theses in days but waits weeks for internal approvals fails the velocity test even if the cycle math otherwise works.
4. **Competitive test.** Does this GTM survive the named competitive context? A motion that succeeds in a green-field market may collapse against entrenched incumbents at the same persona. The ICP qualification surfaces this; the GTM verifies that the chosen motion responds to it.
5. **Pride Test.** If a member of the qualified persona saw exactly how this GTM was constructed against them, would they recognize the seller as a competent operator engaging them on their actual situation, or would they recognize themselves as a generic target of an off-the-shelf playbook?

Score 5/5: GTM is operational. Score 4/5: GTM is operational with the failing test flagged for refinement. Score 3/5 or below: re-derive against the ICP; the gap is not in execution.

## Cross-References

- `icp-definition-protocol.md` — required upstream prerequisite. The qualified ICP is the primary input to GTM construction.
- `references/movements.md` — operational protocols for the chosen motion, once the GTM is defined.
- `references/deal-velocity.md` — velocity assumptions about the chosen motion are tested in the velocity quality gate.
- `references/stakeholder-profiles.md` — the persona axis of the ICP, including the Incentive/Constraint Framework, shapes the messaging anchor.
- `value-proposition-framing.md` — produces the dual-frame artifacts the GTM specifies.
- `references/thesis-protocol.md` — generates the thesis artifact for outbound new-logo and similar motions.
- `references/scoring.md` — applies the qualification criteria specified in this GTM at the opportunity level.
- `SKILL.md` Targeting Foundation — the architectural section.

## Voice and Register

This file follows the voice convention documented in `SKILL.md`. Operational logic, declarative rules, agent-as-role.
