Synthetic example. Companies, people, figures and sources are invented to illustrate the protocol; they are not data.

# GTM Record — Mid-market B2B SaaS, revenue operations
Targeting: ICP Mid-market B2B SaaS, revenue operations (qualified 2026-11-03) · Movement: n/a · Protocol: gtm-strategy-protocol.md · Gate: 5/5 · Output Standards: 5/5

Generated 2026-11-03. Demonstrates `capabilities/gtm-strategy-protocol.md`: `GTM = f(ICP, product)`, the five components each derived from a named ICP dimension, and the 5/5 gate. Read `examples/icp-definition.md` first; this record consumes it.

---

### Inputs

ICP Record: Mid-market B2B SaaS, revenue operations, qualified 2026-11-03 · Product: Lattice Pipeline, $80K–$240K ACV, SaaS, six-week implementation · Deal band: Mid-market (committee 3–5, minimum FDRI 1.5).

From the ICP:

- Market: addressable subset 840 companies (arithmetic on KNOWN [https://cloudindex.harborvale.example/2026-private-saas-census#arr-bands] and two INFERRED rates).
- Persona: VP Revenue Operations or CRO, Buyer function, compensated on forecast accuracy, attainment and pipeline coverage. Constraints: opex preference, quarterly cadence, visible tool-selection risk, native CRM connectors expected.
- Channel: primary peer-network referral, secondary thesis-led outbound, tertiary long-form essays. Three incumbents reach the same persona.

### Motion

**Outbound new-logo, with inbound qualification as the secondary motion.** Expansion is scheduled to activate at 18 months after first customer.

Derived from three ICP dimensions. Market size: 840 companies sustains cold-touch economics at 30 seller-hours per qualified meeting [design target]. Persona authority: the Buyer signs directly, so a single-persona outbound motion is viable without a multi-stakeholder entry. Channel economics: the persona discounts cold outreach that no peer referral or content presence preceded, so inbound qualification runs alongside outbound from the first week.

Excluded: expansion (no installed base), renewal (none lapsing), winback (none lapsed). Each is a GTM re-derivation against the same ICP once its starting state exists.

### Channel mix

Primary: peer-network referral through The RevOps Guild, Pipeline Collective and Operators' Table. Expected response rate on warm, peer-introduced outreach 20% [design target].

Secondary: thesis-led outbound to named accounts; value provocation per `references/thesis-protocol.md`. Expected response rate 23% [design target]; cost roughly 30 seller-hours per qualified meeting [design target].

Tertiary: two long-form essays a month on revenue operating-system design, indexed for search and AI-assistant retrieval; a portfolio cost that lowers secondary-channel cost per meeting over a 6–12 month horizon.

Touchpoint pattern: referral or essay first, provocation second, never a cold meeting ask. Awareness through the tertiary channel; Familiarity through the primary and secondary; demo, business case, pilot and meeting ask only after the account diagnoses at Familiarity 3 (`references/movements.md`). A stakeholder-specific value proposition (artifact 3 below) is permitted from Familiarity 2.

Excluded: paid digital advertising, INFERRED [cost-per-meeting modeling on segment CPMs] [medium] exceeds Mid-market unit economics at this ACV; field events outside the three named communities, too dispersed for an 840-company subset.

### Messaging anchor

"Forecast accuracy and cycle compression on the deals you already have."

Incentive side: forecast accuracy, attainment-to-quota and pipeline coverage, the three metrics in the persona's compensation (INFERRED [comp-pattern sample, n=22] [high], from the ICP). Constraint side: visible tool-selection risk; "the deals you already have" positions the product as an addition to the existing stack.

Operational frames, per `capabilities/value-proposition-framing.md`:

- Cost of inaction: named peers in the segment have disclosed cycle-time reductions; without wait-state detection the gap widens. Peers are named and cited in each account's provocation, never in the GTM.
- Value of action: forecast-accuracy improvement modeled against named peer disclosures, in the metric the persona is paid on.

Excluded anchors: "AI-powered sales transformation" (fails the FUD test, generic trend); "replace your forecasting tools" (triggers the risk constraint); "coach your sellers" (a different buyer, a different category).

### Sales artifacts

1. Thesis per named account — protocol: `references/thesis-protocol.md`
2. Value provocation, one page, per account — protocol: `references/thesis-protocol.md`
3. Dual-frame value proposition for the Buyer, permitted from Familiarity 2 — protocol: `capabilities/value-proposition-framing.md`
4. Peer comparison brief: 3–5 cited peer disclosures of velocity and forecast gains, refreshed quarterly — protocol: `capabilities/value-proposition-framing.md` (sourcing rules)
5. Stakeholder profile per VP Revenue Operations or CRO at target accounts — protocol: `references/stakeholder-profiles.md`
6. Discovery-validation framework for the inbound motion: the first call confirms a thesis rather than excavating one — protocol: `references/thesis-protocol.md`
7. Reference architecture for native CRM connector deployment, for the technical Enabler — protocol: `references/deal-velocity.md` (parallel workstream)
8. Business case template from public financials and labeled benchmarks, used at Familiarity 3 and above, as are the pilot proposal and the demo — protocol: `references/scoring.md` (Movement Floor applies)

Deferred: renewal, winback and expansion artifacts until their motions activate.

### Qualification criteria

An account enters this pipeline when all five hold:

1. ARR $50M–$500M, B2B SaaS, median opportunity with more than two stakeholders and more than 60 days' cycle. Labeled from a fetched source per account.
2. A named VP Revenue Operations or CRO with a public presence and at least one of: membership in a named community, public commentary on revenue operations, conference speaking.
3. CRM on one of the two platforms with certified connectors, or a migration to one disclosed and in flight.
4. At least one trigger inside 90 days: earnings or board commentary on forecast accuracy, a new CRO or VP Revenue Operations, revenue-operations job postings, or a peer referral.
5. Inside 60 days of a quarterly planning window, or mid-cycle with disclosed incremental tooling budget.

Any one of these disqualifies: unsupported CRM with no migration; ARR outside the band; an adjacent-tool implementation failure inside the last 12 months; a persona that defers tool selection to a parent role at this ACV.

Minimum FDRI: 1.5 (Mid-market, canon).

### Gate results

1. **Coherence.** Pass. Motion follows from market size and persona authority; channel from the persona's information pattern; anchor from the incentive/constraint frame; artifacts from the motion; qualification from the ICP axes. No component exists independently of the record.
2. **Resource.** Pass. The mix needs a solutions engineer for inbound qualification, two essays a month of content capacity, and outbound seller capacity for the secondary channel; all three are deployed today (KNOWN [https://wiki.latticerevenue.example/gtm/capacity-plan-q4-2026]). If content capacity drops below two essays a month the tertiary channel is paused until capacity returns.
3. **Velocity.** Pass. Theses ship inside a week; internal artifact approval runs inside 48 hours; account windows are computed per canon; silence at the window triggers a re-fetch of the evidence table, and the seller sends nothing unless a row changed.
4. **Competitive.** Pass. Three incumbents reach the persona on the same channels; the motion survives because the provocation is account-specific and the anchor sits on the persona's compensation metric.
5. **Pride Test.** Pass. A VP Revenue Operations who saw this record would see a seller who read their comp plan, their CRM constraint and their planning calendar before writing a word to them.

Output Standards: Specificity, Evidence, Friction (next step is account selection and thesis generation), Velocity, Pride. 5/5.

---

## What this record does not cover

- Post-launch evolution: expansion at 18 months, renewal after that; each is a re-derivation against the same ICP.
- Geographic splits: communities, saturation and persona patterns differ by region; a regional GTM carries regional ICP qualifiers.
- Product feature differentiation: belongs in the value provocation.

Re-derive when the ICP Record changes, the product changes, a competitive shift requires repositioning, or the ledger holds one quarter of records for this segment.
