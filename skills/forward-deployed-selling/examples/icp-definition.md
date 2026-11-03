Synthetic example. Companies, people, figures and sources are invented to illustrate the protocol; they are not data.

# ICP Record — Mid-market B2B SaaS, revenue operations
Targeting: ICP Mid-market B2B SaaS, revenue operations (qualified 2026-11-03) · Movement: n/a · Protocol: icp-definition-protocol.md · Gate: 5/5 · Output Standards: 5/5

Generated 2026-11-03. Demonstrates `capabilities/icp-definition-protocol.md`: the three axes, the qualification sequence, the coherence sentence and the 5/5 gate. The seller is a synthetic vendor, Lattice Revenue Systems; the competitors, communities and sources are invented. Read it before qualifying an ICP; `examples/gtm-strategy.md` derives the GTM from this record.

---

### Product

Lattice Revenue Systems sells Lattice Pipeline, a revenue-intelligence platform that ingests CRM activity, call transcripts and email metadata to produce per-deal velocity scoring, wait-state detection and forecast-accuracy diagnostics. Annual contract value $80K–$240K by seat count and usage tier. SaaS deployment; six-week median implementation; certified connectors for the two dominant CRM platforms in the segment.

Stated as the product with its price posture, not as "our solution." This is the input the protocol requires before any axis is qualified.

### Market

Segment: B2B SaaS companies with $50M–$500M annual recurring revenue running outbound or hybrid sales motions, where the median opportunity involves more than two stakeholders and the median cycle exceeds 60 days.

Sizing logic, each step labeled:

| Step | Figure | Label |
| --- | --- | --- |
| B2B SaaS companies, $50M–$500M ARR, global | 2,400 | KNOWN [https://cloudindex.harborvale.example/2026-private-saas-census#arr-bands] |
| Share running outbound or hybrid motions with multi-stakeholder deals | 70% | INFERRED [sample of 120 public job-posting patterns] [medium] |
| Share whose CRM data quality supports ingestion | 50% | INFERRED [implementation history, n=14 prior deployments] [low] |
| Addressable subset | 2,400 × 0.70 × 0.50 = 840 | arithmetic |

Addressable subset: 840 companies. Deal band: **Mid-market** ($50K–$500K ACV), typical committee 3–5, minimum FDRI 1.5 (canon).

Disqualification signals checked: the segment is not "every company that wants better forecasting." It excludes companies below the ARR floor (cycle complexity too low for the product to show value), above the ceiling (mature revenue-intelligence stacks already installed), without an outbound motion (different product fit), and with CRM data the platform cannot ingest. Budget authority is demonstrated: the three incumbents in the segment transact at comparable price points (KNOWN [https://cloudindex.harborvale.example/2026-sales-tech-pricing-survey]).

### Persona

Role family: VP Revenue Operations at the lower half of the ARR band; Chief Revenue Officer at the upper half. Function: **Buyer** (owns the revenue-tooling budget line and signs).

Authority verification: INFERRED [org-structure analysis, 40 public org charts and proxy statements in the segment] [medium]. VP Revenue Operations holds signing authority on revenue tooling below $250K ACV in 31 of 40 sampled companies; above $250K, or in companies under $120M ARR without a RevOps VP, the CRO signs. Both roles map to the product's ACV range without deferring to a parent role.

Incentive: INFERRED [compensation-plan patterns, 22 public comp disclosures and recruiter postings] [high]. Compensation tied to forecast accuracy, attainment-to-quota and pipeline-coverage ratio; recognition tied to cycle-time reduction; advancement tied to a demonstrable revenue operating system.

Constraint, four dimensions (`references/stakeholder-profiles.md`):

- Monetary: revenue tooling competes with sales headcount for the same budget pool; opex preferred (SaaS).
- Time: quarterly decision cadence with annual planning and a mid-year true-up; an implementation that crosses a quarter boundary loses the budget cycle.
- Risk: tool-selection failures are visible to the CRO and the CFO; the persona wants references and proof of value before feature comparison.
- Feasibility: CRM integration is the primary technical objection; native connectors to the persona's CRM are expected, anything else is elevated risk.

Decision pattern: data-driven, consensus-seeking with the CRO, fast once internal alignment exists.

Disqualification signals checked: the persona owns the decision at the named ACV; the role family is reachable; no structural gatekeeper sits between the persona and the channels below.

### Channel

Primary: peer-network referral through three revenue-operations communities (The RevOps Guild, Pipeline Collective, Operators' Table). Cost per touchpoint: high in relationship time, low in cash. Expected response rate on warm peer-introduced outreach: 20% [design target].

Secondary: targeted outbound to named accounts anchored on a value provocation per `references/thesis-protocol.md`. Expected response rate 23% [design target, per thesis-protocol]; cost roughly 30 seller-hours per qualified meeting [design target].

Tertiary: long-form essays on revenue operating-system design, indexed for search and AI-assistant retrieval; portfolio-level Awareness investment on a 6–12 month horizon.

Saturation: three incumbents (Cairnstone, Fathom Revenue, Oriel Analytics) reach this persona through the same primary and secondary channels (KNOWN [https://cloudindex.harborvale.example/2026-sales-tech-pricing-survey#vendors]). Differentiation runs on the messaging anchor and value-provocation specificity, not on channel choice. Share of voice through the tertiary channel is reachable at an editorial cadence of two essays a month.

Disqualification signals checked: touchpoint cost fits the Mid-market band; the seller has the content and seller capacity the mix requires; incumbents saturate but do not dominate the persona's attention.

### Coherence sentence

"We are selling Lattice Pipeline, an $80K–$240K revenue-intelligence platform, to VP Revenue Operations and CROs at $50M–$500M ARR B2B SaaS companies running multi-stakeholder outbound motions, via peer-network referral first and thesis-led outbound second."

The sentence reads as one motion. The persona is who in the market signs; the channel is where that persona listens; the market is where the persona-channel pair produces buyable opportunities.

### Gate results

1. **Specificity.** Pass. 840 addressable companies out of a universe of roughly 30,000 B2B SaaS companies (KNOWN [https://cloudindex.harborvale.example/2026-private-saas-census#universe]), under 3% of the universe against the 10% [design target] ceiling.
2. **Channel.** Pass. Touchpoint cost and expected response rates sum to a viable motion at Mid-market unit economics; capacity exists.
3. **Persona-Authority.** Pass. Authority verified by role and ACV; the CRO fallback covers the deferral case.
4. **Coherence.** Pass. Nothing in the sentence is bolted on.
5. **Pride Test.** Pass. A VP Revenue Operations shown the 40-company org-chart sample and the comp-pattern sample would recognize the framing as accurate.

Output Standards: Specificity, Evidence, Friction (the GTM derivation is the next step), Velocity, Pride. 5/5.

---

## What this record feeds

- `examples/gtm-strategy.md`: the GTM derived from this ICP.
- `references/stakeholder-profiles.md`: per-account profiles inside this persona definition.
- `references/thesis-protocol.md`: theses against accounts matching this market.
- `references/scoring.md`: qualification criteria at deal level; minimum FDRI 1.5 from the band.
- `capabilities/value-proposition-framing.md`: dual-frame propositions built on the incentive/constraint frame above.

Re-qualify when the product changes, when a competitive shift changes where the product wins, or on 2027-02-03, one quarter from the qualification date.
