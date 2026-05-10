<!--
EXAMPLE — reference implementation for the FDS skill.

Demonstrates: `capabilities/gtm-strategy-protocol.md` (GTM = f(ICP, product/service);
five GTM components; ICP→GTM derivation rules; quality gates).

This example extends `examples/icp-definition.md` forward into a full GTM strategy.
Read that file first; this example assumes the qualified ICP from it.

Status: design-target example. The GTM components are derived correctly from the
ICP; the specific touchpoint economics, channel mix, and qualification thresholds
reflect the doctrine's intended operating profile pre-charter-cohort. See
`KNOWN_ISSUES.md` for the upgrade path.

Do not modify this file. The Hallucination Protocol applies — every numeric claim
carries KNOWN/INFERRED labeling.
-->

# GTM Strategy: Hypothetical Revenue Intelligence Platform
*Generated: 2026-05-08. Reference implementation for `capabilities/gtm-strategy-protocol.md`.*

---

## Inputs (from `examples/icp-definition.md`)

**Product:** A revenue intelligence platform — CRM activity + conversation transcripts + email metadata feeding per-deal velocity scoring, wait-state detection, and forecast accuracy diagnostics. ACV $80K–$240K. SaaS deployment, six-week median implementation.

**Qualified ICP:**
- **Market:** B2B SaaS companies $50M–$500M ARR running outbound or hybrid sales motions, with deal complexity exceeding two stakeholders and median cycle time exceeding 60 days. Addressable subset: ~800–900 companies globally `INFERRED [confidence: medium]`.
- **Persona:** VP Sales Operations or Chief Revenue Officer. Authority confirmed at the named ACV ranges. Incentive: forecast accuracy + pipeline coverage + cycle compression. Primary constraints: budget envelope shared with headcount additions (monetary), quarterly decision cadence (time), career risk on tool-selection failures (risk), Salesforce-native integration preferred (feasibility).
- **Channel:** Primary peer-network referral (Pavilion, RevOps Co-op, Modern Sales Pros, Sales Hacker). Secondary targeted outbound new-logo with thesis-led value provocation. Tertiary content + AEO presence.

The GTM strategy below derives from these inputs. Each GTM component cites the ICP dimension that shaped it.

---

## Component 1: Motion

**Selected motion: hybrid outbound new-logo + inbound qualification, with planned expansion track activating at 18 months post-launch.**

**Derivation from ICP:**
- The 800–900 company addressable subset is large enough to support outbound new-logo as a primary motion (`KNOWN [from ICP example, market dimension]`).
- The persona's primary information consumption pattern (peer-network referral, peer recommendations) suggests inbound qualification will produce strong-quality opportunities once the doctrine has produced the second-order signals (Field Manual essays, peer references, conference presence).
- Expansion track is deferred 18 months because the product has no installed base at launch; expansion-led GTM requires customers to expand against, which the launch state lacks.

**Excluded motions:**
- Pure outbound new-logo without inbound qualification produces lower-quality top-of-funnel given the persona's strong peer-network reliance — the persona discounts cold outreach unless preceded by named-peer referral or warm content presence.
- Renewal motion is not yet operative (no customer base).
- Winback is not yet operative.

---

## Component 2: Channel

**Selected channel mix:**

| Channel | Priority | Use | Touchpoint Economics |
|---------|----------|-----|----------------------|
| Peer-network referral (Pavilion, RevOps Co-op, Modern Sales Pros, Sales Hacker) | Primary | Inbound qualification anchored by peer recommendation | `INFERRED [confidence: medium]` 15–25% response rate on warm peer-introduced outreach; design target |
| Targeted outbound new-logo with thesis-led value provocation | Secondary | Deals where peer-referral hasn't surfaced the account | `INFERRED [confidence: low — pre-charter-cohort design target]` 20–30% response rate; ~30 hours seller time per qualified meeting |
| Content + AEO presence (long-form essays on revenue operating-system design, indexed for search and AI-assistant retrieval) | Tertiary | Portfolio-level Awareness investment, 6–12 month horizon | Portfolio cost; reduces secondary-channel cost-per-meeting over time |
| Industry conferences and analyst relationships (Forrester, Gartner sales-tech analysts) | Quaternary | Long-term credibility and analyst-driven account introductions | Annual investment; compounding return |

**Derivation from ICP:**
- Channel mix follows the persona's named information consumption pattern.
- Peer-network is primary because peer recommendation is the single highest-conversion touchpoint per the ICP analysis.
- Outbound is secondary because the addressable subset is reachable in principle but lower-conversion than peer-led.
- Content/AEO is tertiary because the persona's role-pattern includes AI-assisted research; AEO-indexed content captures the research moment.

**Excluded channels:**
- Paid digital advertising (LinkedIn, Google) is not in the mix at launch — `INFERRED [confidence: medium]` cost-per-meeting on paid digital exceeds the deal economics for this ACV range.
- Field events outside the named peer-network communities — too dispersed for the addressable subset.

---

## Component 3: Messaging Anchor

**Selected messaging anchor: "Forecast accuracy and cycle compression on the deals you already have."**

**Derivation from ICP and Stakeholder Profile:**
- The persona's incentive structure (`KNOWN [from ICP example]`) ties compensation to forecast accuracy, attainment-to-quota, and pipeline coverage. The messaging anchor maps directly to the named compensation metric.
- The persona's risk constraint (career risk on tool failures) is addressed implicitly — "the deals you already have" framing positions the product as augmenting existing work rather than replacing existing tooling.
- Per `capabilities/value-proposition-framing.md` Frame 2, the anchor lands on the buyer's named priority rather than introducing a new strategy.

**Operational language for the anchor:**
- *Cost of inaction frame:* the named peer set has reduced cycle time by N%; without movement-aware pipeline diagnostics, the gap widens.
- *Value of action frame:* forecast accuracy improvement of M% (modeled against named peer disclosures) translates to attainment confidence the CRO depends on.

**Excluded anchors:**
- "AI-powered sales transformation" — generic; fails the FUD test per `capabilities/value-proposition-framing.md`.
- "Replace your existing forecasting tools" — triggers the persona's risk constraint.
- "Coach your sellers" — wrong anchor; the persona buys for forecast and pipeline, not for individual seller coaching (which is a coaching-product anchor, different category).

---

## Component 4: Sales Artifacts

**Required artifacts at launch:**

1. **Thesis template per public B2B SaaS account.** The agent generates a thesis per `references/thesis-protocol.md` against named target accounts; sellers validate and ship as value provocations.
2. **Stakeholder profile per VP Sales Ops / CRO at target accounts.** Profile per `references/stakeholder-profiles.md` Profile Schema + U/B/S/E + Incentive/Constraint Framework.
3. **Peer-comparison brief.** A standing artifact that names 3–5 cited peer companies' disclosed velocity gains, refreshed quarterly. Used as the Frame 1 anchor in value provocations.
4. **Value provocation, one-page format.** Per `references/thesis-protocol.md` value provocation format. Each provocation specific to the prospect, not recyclable.
5. **Discovery validation framework.** For inbound-qualification motion: structured framework for the first call that converts discovery from excavation to validation per the doctrine.
6. **Reference architecture document.** For deals where the technical buyer (VP Engineering at the prospect) has integration concerns; pre-built integration patterns for Salesforce-native deployments.
7. **Business case template.** Pre-built model that produces account-level ROI from public financial data + reasonable INFERRED industry benchmarks. Used in late Familiarity / early Value transitions.

**Artifacts deferred to post-launch:**
- Renewal-motion artifacts (realized-value summaries, renewal proposals) — not operative until installed base exists.
- Winback-motion artifacts — not operative.
- Customer success expansion playbooks — operative ~9 months post-first-customer.

---

## Component 5: Qualification Criteria

**Account qualifies if all of these are true:**

1. **Market fit:** $50M–$500M ARR, B2B SaaS, complex sales motion (>2 stakeholders, >60 days median cycle).
2. **Persona reach:** named VP Sales Operations or CRO with public LinkedIn presence and at least one of: peer-network membership (Pavilion / RevOps Co-op / Modern Sales Pros / Sales Hacker), public commentary on revenue ops topics, conference speaking history.
3. **Constraint fit:** Salesforce-native CRM (per persona's named feasibility constraint) OR explicit Salesforce migration in flight.
4. **Trigger present:** at least one of — recent earnings disclosure of forecast accuracy concern, recent CRO or VP Sales Ops hire, recent expansion of revenue-operations function (job postings), peer-network recommendation surfaced.
5. **Budget cycle:** within 60 days of a quarterly planning window OR mid-cycle with explicit incremental tooling budget.

**Disqualification criteria (any one disqualifies):**

- Non-Salesforce CRM with no migration in flight (feasibility constraint failure per ICP).
- ARR below $50M (cycle complexity insufficient for product fit).
- ARR above $500M (likely already running mature revenue intelligence; competitive displacement, not new-category sale).
- Recent failed implementation of an adjacent tool (~12-month risk-aversion window).
- Persona role family that defers to a parent role on tool selection (per `capabilities/icp-definition-protocol.md` Persona-Authority test).

---

## Quality Gate Results

Per `capabilities/gtm-strategy-protocol.md` Quality Gates:

| Gate | Result | Notes |
|------|--------|-------|
| Coherence test | Pass | Each GTM component derives from a named ICP dimension. The GTM does not default to a generic outbound playbook. |
| Resource test | Pass with caveat | The hybrid motion + channel mix requires SE capacity to support inbound qualification, content production capacity for the tertiary AEO investment, and outbound seller capacity to execute the secondary motion. The GTM assumes the seller's organization has all three; if any is missing, re-scope to a narrower channel mix. |
| Velocity test | Pass | The thesis-led outbound motion runs at the doctrine's velocity (parallel workstreams enabled by pre-built artifacts, target cycle time matched to the persona's quarterly decision cadence). |
| Competitive test | Pass with note | Gong / Clari / Aviso / Outreach all reach this persona via the same channels. Differentiation runs at the messaging anchor and value-provocation specificity layers per the dual-frame methodology in `capabilities/value-proposition-framing.md`. The GTM's Pride Test depends on the value provocations passing the FUD test against entrenched competitive presence. |
| Pride Test | Pass | A real VP Sales Ops in the segment, seeing this GTM run against them, would recognize the seller as competent and the framing as accurate. The GTM operates inside the persona's named constraints and addresses the persona's named incentives. |

**Score: 5/5 with two caveats noted.** GTM is operational subject to the Resource caveat (SE + content + seller capacity all required) and the Competitive caveat (differentiation depends on value-provocation execution, not on the GTM structure).

---

## What This Example Does Not Show

- **The GTM's evolution post-launch.** The strategy above is the launch GTM. The Expansion motion activates at 18 months once an installed base exists. The Renewal motion follows. Each phase shift is its own GTM derivation against the same ICP (the ICP is stable; the motion mix evolves).
- **Geographic specialization.** The example treats the addressable subset as a single segment. In production, a U.S. vs EMEA vs APJ split may produce different GTMs — peer-network communities concentrate by geography, channel saturation differs, persona-pattern subsets vary. Geography-specific GTM derivation follows the same protocol with regional ICP qualifiers.
- **The product's specific feature differentiation.** The messaging anchor names the persona's outcome (forecast accuracy, cycle compression), not the product's features. Feature-level differentiation belongs in the value provocation, not the GTM. The GTM is structural; the value provocation is account-specific.
- **Field-measured response rates and cycle times.** All numerics in the channel economics table are design targets per `KNOWN_ISSUES.md`. Charter cohort field deployment against v0.7 will replace them with measured benchmarks.

This file demonstrates the GTM strategy protocol applied end-to-end, derived from the qualified ICP. The structure is the production shape; new GTMs will read as upstream context for operational protocols (movements, deal velocity, scoring) and downstream consumers (thesis generation, value-proposition framing) to consume.
