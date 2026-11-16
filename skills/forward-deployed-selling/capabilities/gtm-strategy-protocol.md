---
name: gtm-strategy-protocol
consumes: [Business Record, ICP Record]
emits: GTM Record
gate: 5/5
---

# GTM Strategy Protocol

Prerequisites: Business Record (the product and its pricing posture) and ICP Record (gate 5/5).

`GTM = f(ICP, product/service)`. Both inputs are required and the dependency runs one direction: the ICP defines the GTM, never the reverse. The agent derives or verifies a GTM after ICP qualification and before any operational protocol (movement diagnosis, thesis, deal velocity, scoring). It re-derives when the ICP Record changes, the product changes (new SKU, repositioning, pricing), a competitive shift requires repositioning, or one quarter of benchmark data warrants it.

## The five GTM components

Each is derived from the ICP and the product, not assumed.

### 1. Motion

| Motion | Starting state | Default for |
|--------|---------------|-------------|
| Outbound new-logo | Cold context, no prior relationship | Net-new market entry; persona-led growth |
| Inbound qualification | Partial Familiarity from content or referral | Established brand presence; high-intent traffic |
| Expansion | Existing customer relationship | Proven fit; multi-product portfolio |
| Renewal | Lapsing customer relationship | Subscription / consumption businesses |
| Winback | Lapsed former customer | Mature businesses with churn surface |

The ICP determines which motion is viable. Outbound new-logo requires a market large enough to sustain cold-touch economics; inbound requires a brand presence; expansion requires a customer base. Buyer-side movements are in `references/movements.md`.

### 2. Channel

The ICP qualified the channel. The GTM specifies the mix: primary channel, secondary channels, and the touchpoint pattern across them. Name the actual pattern (direct sales, partner-led referral), not the category.

### 3. Messaging anchor

The one argument that, if the persona believed it, would make them take the next step. It follows from the persona's incentive/constraint frame (`references/stakeholder-profiles.md`). For a CFO incentivized on operating margin under a cash-flow covenant, the anchor is "margin lift that respects the covenant", not "AI-powered transformation". The anchor names the buyer's situation in the buyer's language.

### 4. Sales artifacts

Named per motion, not by category:

- Outbound new-logo: Thesis with its value provocation (`references/thesis-protocol.md`), Value Proposition (`value-proposition-framing.md`)
- Inbound qualification: discovery-validation framework, fit assessment, business case template
- Expansion: usage analysis, expansion thesis, account-level ROI documentation
- Renewal: realized-value summary, risk register, renewal proposal
- Winback: situation-shift analysis, winback offer, re-engagement framework

### 5. Qualification criteria

The ICP applied to a single account: the bar an opportunity must meet to enter this pipeline. Without explicit criteria every responder becomes an opportunity and the pipeline fills with non-ICP deals. Scoring (`references/scoring.md`) applies these criteria at opportunity level; minimum FDRI per deal band is in canon.md.

## ICP → GTM derivation rules

| ICP dimension | Motion | Channel | Messaging | Artifacts | Qualification |
|---|---|---|---|---|---|
| Market size | Large markets afford outbound; small markets demand expansion or partnership | Saturation analysis follows market size | Breadth follows market homogeneity | Reusability follows market homogeneity | Specificity follows market depth |
| Persona authority | High authority affords direct outreach; low authority requires multi-stakeholder motions | Must reach the persona's information pattern | Anchor matches incentive/constraint frame | Must serve the persona's decision pattern | Must verify authority, not interest |
| Channel economics | Cost per touchpoint constrains motion choice | Defined here directly | Carries the channel's information density | Adapted to channel medium | Qualification cost below touchpoint cost |

The rules are the common patterns, not an exhaustive set. Edge cases require explicit ICP–GTM coherence analysis.

Worked examples: `examples/icp-definition.md` (upstream ICP) and `examples/gtm-strategy.md`.

## Output template

```
## GTM Record — <segment>
Targeting: ICP <name> (qualified <date>) · Movement: n/a · Protocol: gtm-strategy-protocol.md · Gate: <n/5> · Output Standards: <n/5>

### Inputs
ICP Record: <name, date> · Product: <name, pricing posture> · Deal band: <...>

### Motion
<one of five> — derived from: <ICP dimension(s)>

### Channel mix
Primary: <...> · Secondary: <...> · Touchpoint pattern: <...>

### Messaging anchor
"<one sentence in the buyer's language>" — incentive: <...> · constraint: <...>

### Sales artifacts
1. <artifact> — protocol: <file>
2. ...

### Qualification criteria
1. <criterion, testable at account level>
...
Minimum FDRI: <per band>

### Gate results
1–5 with pass/fail and the failing check named.
```

## Gate

1. **Coherence.** Each GTM component follows from the ICP Record rather than from the seller's preferred motion. Read the two together; a component that exists independently of the ICP fails.
2. **Resource.** The seller's organization can sustain the GTM at its required cadence with deployable capability, not aspirational capability (SE capacity, content production, customer-success integration as the motion requires).
3. **Velocity.** The GTM meets the velocity thresholds in canon.md. A GTM that produces theses in days but waits weeks on internal approvals fails.
4. **Competitive.** The motion survives the named competitive context the ICP surfaced; a green-field motion against entrenched incumbents at the same persona fails.
5. **Pride Test.** A member of the persona, shown how the GTM was built, recognizes a competent operator engaging their actual situation rather than a generic target of an off-the-shelf playbook.

Pass count: 5/5. Below 5/5, re-derive against the ICP; the gap is not in execution.

Plus the five Output Standards. A failed check is named in the artifact's header. Shipping on a failed gate is a Doctrinal Bypass.
