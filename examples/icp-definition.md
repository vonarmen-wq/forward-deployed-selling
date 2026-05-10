<!--
EXAMPLE — reference implementation for the FDS skill.

Demonstrates: `capabilities/icp-definition-protocol.md` (full ICP triangle:
Market × Persona × Channel; qualification protocol; quality gates).

Status: design-target example. Specific market sizes, hiring patterns, and
channel economics reflect the doctrine's intended qualification depth using
public-pattern reasoning. See `KNOWN_ISSUES.md` for the upgrade path.

Do not modify this file. If updates are required, regenerate against the
current protocol and append a new dated example. The Hallucination Protocol
in `SKILL.md` applies to all numeric claims here.
-->

# ICP Definition: Hypothetical Revenue Intelligence Platform
*Generated: 2026-05-08. Reference implementation for `capabilities/icp-definition-protocol.md`.*

---

## Product or Service Being Sold

A revenue intelligence platform that ingests CRM activity, conversation transcripts, and email metadata to produce per-deal velocity scoring, wait-state detection, and forecast accuracy diagnostics. Annual contract value $80K–$240K depending on seat count and usage tier. SaaS deployment, six-week median implementation timeline.

This is the input the protocol requires before qualification begins. The product is named explicitly, not as "our solution."

---

## Market

**Candidate market:** B2B SaaS companies with $50M–$500M ARR running outbound or hybrid sales motions, where deal complexity exceeds two stakeholders and median cycle time exceeds 60 days.

**Sizing logic:** `INFERRED [confidence: medium]` — the addressable subset is roughly the intersection of:
- Public + private B2B SaaS companies in the $50M–$500M ARR band (estimated ~2,400 globally `INFERRED [methodology: SaaStr / Bessemer cloud index data, confidence: medium]`)
- Companies with sales motions complex enough to benefit from velocity tooling (estimated ~70% of the band `INFERRED [confidence: low — design target without field validation]`)
- Companies whose CRM data quality supports the platform's ingestion requirements (estimated ~50% of the qualified subset `INFERRED [confidence: low]`)

Net addressable subset: approximately 800–900 companies. Source figures are design targets; charter cohort field deployment will replace with measured numbers per `KNOWN_ISSUES.md`.

**Disqualification check passed.** The market is not "every B2B company that wants better forecasting" — it excludes companies below the ARR floor (cycle complexity insufficient), above the ceiling (already running mature revenue intelligence), without outbound motion (different product fit), or with poor CRM data quality (cannot deploy).

**Disqualification check passed.** Buyers in this segment have demonstrated budget authority on revenue tooling — adjacent products (Gong, Clari, Aviso, Outreach) operate at comparable price points in this same band. The market is buyable.

---

## Persona

**Candidate persona:** VP Sales Operations or Chief Revenue Officer at companies in the qualified market.

**Authority verification:** `KNOWN [industry sales-tech buyer research]` — VP Sales Ops typically holds budget authority on revenue tooling under $250K ACV in the qualified segment; CRO holds authority above. Both are valid persona anchors with clear deal-size mapping.

**Incentive structure:** `INFERRED [from public role-pattern analysis, confidence: high]`
- Compensation tied to forecast accuracy, attainment-to-quota ratio, and pipeline coverage ratio
- Recognition tied to deal velocity improvement and wait-state reduction
- Career advancement tied to demonstrating measurable GTM operating-system improvements

**Constraints across four dimensions** (per `references/stakeholder-profiles.md` Incentive/Constraint Framework):
- **Monetary:** Budget operates within the GTM operating budget; revenue tooling competes with headcount additions for the same dollar pool. Capex/opex preference is opex (SaaS).
- **Time:** Decision cadence is quarterly (annual planning + mid-year true-up). Implementation cannot extend past one quarter without losing the budget cycle.
- **Risk:** Career risk on tool selection is real — failed deployments are visible to the CRO and the CFO. Risk-averse persona; references and proof-of-value matter more than feature comparisons.
- **Feasibility:** CRM integration risk is the primary technical concern. Salesforce-native deployments are preferred; non-Salesforce companies treat the integration as elevated risk.

**Decision pattern:** Data-driven, consensus-seeking with the CRO, fast-moving once internal alignment exists.

**Disqualification check passed.** The persona owns the decision; the chosen role family is reachable; both incentive and constraint structure are nameable.

**Disqualification check passed.** No structural gatekeeper protects this persona from the channel mix specified below.

---

## Channel

**Candidate channel mix:**

1. **Primary: peer-network referral** — VP Sales Ops and CRO communities (Pavilion, RevOps Co-op, Modern Sales Pros, Sales Hacker community) where peer recommendations carry decisive weight.
2. **Secondary: targeted outbound new-logo** — direct sales engagement with named accounts, anchored on a value provocation produced via `references/thesis-protocol.md`. The provocation references the prospect's specific recent moves (funding round, leadership transition, motion shift).
3. **Tertiary: content + AEO presence** — long-form essays on revenue operating-system design, indexed for search and AI-assistant retrieval, building Awareness over a 6–12 month horizon.

**Reach mechanics:**
- Primary channel reaches roughly 60–70% of the qualified persona universe `INFERRED [confidence: medium]`. Touchpoint cost is high (relationship investment) but conversion is the highest of the three channels.
- Secondary channel reaches the full universe in principle but at lower conversion. Touchpoint cost is the seller's time; cost-per-meeting depends on thesis quality and value-provocation specificity.
- Tertiary channel is portfolio-level investment, not account-level. It reduces cost on the primary and secondary by warming targets.

**Touchpoint economics:** `INFERRED [design target — pre-charter-cohort estimate]`
- Primary channel: 15–25% response rate on warm peer-introduced outreach.
- Secondary channel: 20–30% response rate on value-provocation-led cold outreach (per `references/thesis-protocol.md` design targets).
- Aggregate cost-per-meeting target: ~30 hours of seller time per qualified meeting.

**Competitive saturation:** The channel is not green-field. Gong, Clari, Aviso, and Outreach all reach this persona via the same primary and secondary channels. Differentiation runs at the messaging anchor and value-provocation specificity layers, not the channel layer. Share-of-voice via tertiary channel is achievable at editorial-quality content cadence.

**Disqualification check passed.** Channel reaches the persona at the doctrine's economics. Competitive saturation requires content/messaging differentiation but does not disqualify the channel.

---

## Triangle Coherence Test

Read as a single sentence:

> "We sell a revenue intelligence platform to VP Sales Operations and CROs at $50M–$500M ARR B2B SaaS companies running complex outbound motions, primarily through peer-network referral, secondarily through value-provocation-led outbound, with content/AEO presence as portfolio-level Awareness investment."

The sentence reads naturally. It is non-trivially specific. Each axis follows from the others — the persona is who in the market owns the decision; the channel is how that persona is reachable; the market is where this persona-channel combination produces buyable opportunities.

**Coherence test passed.**

---

## Quality Gate Results

| Test | Result | Notes |
|------|--------|-------|
| Specificity test | Pass | Excludes more than it includes; addressable subset is ~800–900 of millions of B2B companies. |
| Channel test | Pass | Touchpoint economics fit the deal size and unit economics of the platform. |
| Persona-Authority test | Pass | VP Sales Ops + CRO hold authority at the named ACV ranges. |
| Coherence test | Pass | Three axes form a coherent operating sentence. |
| Pride Test | Pass | A real VP Sales Ops in the segment would recognize themselves and the framing as accurate; no mis-categorization. |

**Score: 5/5. ICP qualified. Downstream protocols may proceed against this ICP.**

---

## Outputs Available to Downstream Protocols

The qualified ICP is now available as input to:

- `gtm-strategy-protocol.md` — to derive the GTM strategy that operates against this ICP
- `references/stakeholder-profiles.md` — to build per-account profiles within this persona definition
- `references/thesis-protocol.md` — to generate theses against accounts that match this market definition
- `references/scoring.md` — qualification criteria at deal level derive from this ICP
- `value-proposition-framing.md` — dual-frame value propositions are constructed against the persona's incentive/constraint frame defined here

---

## What This Example Does Not Show

- The downstream GTM strategy that follows from this ICP (forthcoming in `examples/gtm-strategy.md`).
- The application of this ICP to a specific account (Snowflake, Datadog, ServiceNow) producing a thesis. That belongs in a thesis example, not an ICP example.
- The mid-quarter re-qualification triggered by a competitive shift or product change. That belongs in a future revision-cycle example.

This file demonstrates the ICP qualification protocol, end to end, against a hypothetical product. The structure is what new theses, profiles, and scores will read as upstream context.
