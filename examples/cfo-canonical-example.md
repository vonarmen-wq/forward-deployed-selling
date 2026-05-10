<!--
EXAMPLE — reference implementation for the FDS skill.

Demonstrates: `capabilities/value-proposition-framing.md` (dual-frame
methodology), `references/stakeholder-profiles.md` (User/Buyer/Sponsor/Enabler
taxonomy + Incentive/Constraint Framework), and the threading between them.

Status: TEACHING ARTIFACT against a hypothetical company.

The company "Meridian Software" is fictional and constructed for the example.
Real-world application of this protocol cites real public sources for every
peer claim and every financial datum. The structure of the artifact below is
production-shape; the sourcing is illustrative — placeholder citations show
where real sources would attach in a real artifact.

Status: design-target example. The methodology is doctrine-correct; the
specific numbers reflect the kind of modeling the protocol produces, not
field-measured outcomes. See `KNOWN_ISSUES.md` for the upgrade path.

Do not modify this file. If updates are required, regenerate against the
current protocol and append a new dated example. The Hallucination Protocol
in `SKILL.md` applies — note how every claim carries KNOWN/INFERRED labeling
even in the hypothetical case.
-->

# CFO Value-Proposition Framing — Meridian Software (hypothetical)
## Operating Margin Expansion Under Debt-Covenant Constraint
*Generated: 2026-05-08. Reference implementation for `capabilities/value-proposition-framing.md`.*

---

## Context

**Hypothetical company.** Meridian Software, $400M ARR, mid-market vertical-software platform. Acquired by a private-equity firm in 2023 in a leveraged buyout; current debt structure includes a term-loan facility with covenants tied to operating-cash-flow-to-debt-service ratio. Refinancing window opens late 2027.

**Hypothetical seller.** A vendor selling an AI-augmented operations platform that produces measurable cost-of-revenue compression — the imagined product is generic enough to not pitch any specific vendor; the framing methodology is what this example demonstrates.

**Note on sourcing.** Because Meridian Software is hypothetical, the example below uses placeholder citations of the form `[Meridian 10-K Q3 2026, p.34]` to show where real sources would attach in a real artifact. In production use, every such placeholder is replaced with a real, fetchable, cite-able source. Where the example uses real-feeling data (peer companies, market dynamics), those data points are also illustrative; in production, peer claims cite specific public filings or transcripts.

---

## Stakeholder Profile (compressed to U/B/S/E + Incentive/Constraint)

Full Profile Schema (Identity, Decision Intelligence, Situational Context, Engagement Context, Approach) per `references/stakeholder-profiles.md` is omitted here for compactness. The compressed analysis below shows the inputs the value-proposition framing consumes.

### Function in the Deal — Buyer (with Enabler overlap)

The CFO holds signing authority on operations tooling above the $200K ACV threshold. Finance Operations reports up to the CFO, which means the Enabler function (procurement, finance-ops verification, audit-readiness) overlaps with the Buyer function. This is common in mid-market post-LBO companies — the Buyer and Enabler converge in the CFO's chain of command.

### Incentive

`KNOWN [Meridian proxy statement 2025, executive compensation discussion]`: CFO compensation is structured around three components — base, annual bonus tied to operating margin and earnings consistency, and equity vesting tied to a 2027 liquidity event (sale or refinancing).

`KNOWN [Meridian Q3 2026 earnings call transcript]`: CFO publicly committed to "operating discipline as our 2026 strategic priority" and named "M% margin expansion by year-end" as a target.

The CFO personally wins by:
- Hitting the M% margin expansion target (annual bonus).
- Demonstrating earnings consistency through the refinancing window (equity vesting).
- Producing the operating discipline that the PE owner has named as the value-creation thesis.

### Constraints (four dimensions)

**Monetary.** `KNOWN [Meridian credit agreement summary, 8-K filing]`: Term loan covenants include an operating-cash-flow-to-debt-service ratio of 1.4x minimum. Recent quarter's coverage ratio: 1.52x `[KNOWN: Meridian Q3 2026 10-Q, p.18]` — a 12% buffer that compresses if cash flow weakens. Capex authorization above $5M requires lender notification under the credit agreement; opex authorization is internal but covenant-pressured at quarter-end. Strong opex preference; capex aversion outside planned categories.

**Time.** Decision cadence is quarterly with covenant review at fiscal year end (December). Refinancing window opens Q4 2027; lenders prefer to see four quarters of trailing operating discipline before the refinancing meeting. This means actual operating-discipline impact must be visible by Q4 2026 to influence the refinancing terms — an 18-month horizon that the CFO is operating against.

**Risk.** Failed implementations are visible to the audit committee. Risk-averse on tooling that touches financial reporting integrity. Reference dependence is high — peer references in similar covenant-constrained positions matter more than feature comparisons. Personally cautious after a public 2024 Meridian implementation failure with a previous-generation tool [`KNOWN: Meridian Q2 2024 earnings call commentary on "implementation challenges"`].

**Feasibility.** `KNOWN [Meridian engineering blog post 2026]`: Meridian operates on a SAP-centric finance stack with a bolted-on data warehouse layer. Integration risk is the primary technical concern; SAP-native integration paths are preferred; non-SAP-native deployments are treated as elevated risk requiring a longer pilot.

---

## Dual-Frame Value Proposition

### Frame 1 — Cost of Inaction

#### Direct consequences in the buyer's own KPIs

`KNOWN [Meridian Q3 2026 10-Q, p.34]`: Operating margin trajectory has decelerated from 18.4% (Q3 2025) to 16.8% (Q3 2026). Cost of revenue grew 9.2% YoY against revenue growth of 6.1% — the spread is the operating discipline gap the CFO has publicly named.

`INFERRED [methodology: peer-aligned modeling against named peer set, confidence: medium]`: At current trajectory, FY2026 operating margin lands at approximately 15.9% — below the public commitment of M% expansion. The covenant coverage ratio compresses to an estimated 1.43x at year-end, inside the 1.4x floor by less than 3 percentage points of buffer. Compounding into 2027 without margin lift produces a Q2 2027 covenant trigger probability that the audit committee would flag.

#### Peer comparison with named peers and cited public moves

Three peer companies in similar covenant-constrained positions have addressed comparable margin trajectories in the trailing four quarters:

- **Peer A** (named comparable mid-market software, also PE-owned): disclosed 220 basis points of operating margin expansion over four quarters following an operating-discipline initiative. `KNOWN [Peer A Q4 2025 earnings transcript, CFO commentary on margin-expansion program]`.
- **Peer B** (named comparable, similar vertical): disclosed 180 basis points of margin expansion in similar timeframe through cost-of-revenue compression. `KNOWN [Peer B Q1 2026 investor presentation, slide 14]`.
- **Peer C** (named comparable, did not act): disclosed covenant amendment negotiations in Q1 2026 after operating margin compressed below covenant threshold. `KNOWN [Peer C 8-K filed February 2026, covenant amendment disclosure]`.

Peer A and Peer B both represent the path Meridian's CFO has named publicly. Peer C represents the path of inaction and its consequence — visible in the 8-K record.

#### Competitive lag with timeline anchor

The peer set (Peer A, Peer B) is operating at a margin profile 220 to 280 basis points above Meridian's current trajectory. The lag has widened over the trailing four quarters as Meridian's cost-of-revenue grew faster than revenue.

The timeline anchor is not invented. It is the buyer's own refinancing window: Q4 2027 lender meetings preceded by four quarters of trailing operating discipline, which means actual margin impact must be visible by Q4 2026. From May 2026, that is a 7-month execution window for measurable lift.

### Frame 2 — Value of Action

#### Improvement anchored in the buyer's own commitments

The CFO's most recent earnings call named "operating discipline as our 2026 strategic priority" and committed to "M% margin expansion by year-end" `[KNOWN: Meridian Q3 2026 earnings call transcript]`. The PE owner's most recent investor letter described Meridian's value-creation thesis as "operating discipline driving margin expansion through the refinancing window" `[KNOWN: PE firm semi-annual investor letter, October 2025, Meridian section]`.

The value proposition accelerates a strategy the CFO and the PE owner have both publicly named. It does not introduce a new strategy.

#### Quantified value in the buyer's own KPIs

Modeling against the named peer set's disclosed gains, applied conservatively to Meridian's specific cost-of-revenue surface:

`INFERRED [methodology: peer-aligned modeling × Meridian-specific cost-of-revenue composition, confidence: medium]`: Operating margin expansion of 150–200 basis points is achievable in 12–18 months with operating-discipline tooling deployment, modeled against Peer A's disclosed 220-bp gain (their cost composition is comparable but slightly lighter than Meridian's, so a discount factor applies).

`INFERRED [confidence: medium]`: Translation to operating cash flow — at Meridian's $400M ARR base, 175 bp of operating margin expansion produces approximately $7M annually in incremental operating cash flow, directly improving the covenant coverage ratio from 1.43x (year-end projection) to approximately 1.52x.

`INFERRED [confidence: medium]`: This margin trajectory, sustained for four quarters, presents the refinancing committee with a "trailing operating discipline" narrative that materially improves refinancing terms (basis-point savings on the refinanced facility, longer tenor, lighter covenant package). The PE owner's value-creation thesis is served.

The framing serves the CFO's compensation incentive (margin expansion), serves the PE owner's value-creation thesis (operating discipline through refinancing), and respects the constraint (cash flow + covenant pressure relieved, not aggravated).

---

## Quality Gate Application

### 1. Sourcing Gate

Every peer claim cites a source. Every numeric claim is `KNOWN [source]` or `INFERRED [methodology] [confidence]`. No claim presents as known fact without provenance. **Pass** (with the caveat that the sources here are illustrative — in a real artifact they would be fetchable real sources for a real company).

### 2. Anchoring Gate

The Value of Action frame is anchored in the CFO's own Q3 2026 commitment and the PE owner's investor letter. Generic "AI ROI" framing is avoided. **Pass.**

### 3. Constraint Gate

The framing operates within the buyer's named constraints — opex preferred (not capex), SAP-native integration preferred, refinancing window respected, audit-committee risk acknowledged. The framing does not require the buyer to violate any named constraint. **Pass.**

### 4. Symmetry Gate

Cost-of-Inaction frame and Value-of-Action frame are equally weighted, equally sourced. Three peer comparisons (Frame 1) balance against two anchored commitments (Frame 2) plus modeled quantification. **Pass.**

### 5. The FUD Test

Walking the six indicators:

1. **Vague competitor mentions?** No — Peer A, Peer B, Peer C are named with specific cited disclosures.
2. **Unsourced peer behavior claims?** No — every peer claim is `KNOWN [specific source]`.
3. **Manufactured urgency?** No — the timeline anchor is the buyer's own refinancing window with the lender-process logic that follows from it, not an invented "act now" pressure.
4. **Generic industry trends substituting for buyer-specific anchors?** No — the framing is anchored in Meridian's own operating margin trajectory and the CFO's own public commitment.
5. **Cost-of-inaction without value-of-action?** No — both frames are present, equally weighted.
6. **Asymmetric sourcing?** No — both frames cite sources.

The CFO would describe this framing as "useful intelligence about my situation" — it tells them things about the peer set and the trajectory math that they may not have triangulated themselves. **Pass.**

### 6. The Pride Test

If the CFO saw exactly how this framing was constructed — the peer selection, the modeling methodology, the anchoring choices — would they recognize it as work that respects them?

The framing uses public sources only. The peer set is named and the disclosures are cited. The modeling methodology is named and conservative. The buyer's own commitments are quoted, not paraphrased. The seller has not crossed into private information, inferred priorities, or surveillance-adjacent practice. **Pass.**

---

## Score: 6/6. Framing is shippable.

In a real deployment against a real Meridian-shape account, this framing would be the analytical core of:
- A one-page value provocation delivered by the imagined seller to the CFO.
- An executive brief in advance of the first meeting.
- The Value at Stake section of a thesis (per `references/thesis-protocol.md`).
- The framing layer of any business-case artifact produced for this account.

---

## What This Example Does Not Show

- **The bridge.** The full value provocation would close with a low-friction next step (e.g., "the underlying operating-discipline model fitted to Meridian's specific cost-of-revenue surface is available; sharing it requires no commitment"). The bridge construction is doctrine-defined in `references/thesis-protocol.md`; it inherits the dual-frame framing produced here.
- **Stakeholder-specific re-framing for non-Buyer functions.** The User (likely a finance-ops director), Sponsor (likely the COO or VP Operations), and Enabler (likely procurement) each receive distinct framing derived from their own incentive/constraint structure. This example shows the Buyer framing only.
- **Real-time refresh against quarterly disclosure.** Each new Meridian quarterly filing updates the trajectory math and the covenant coverage ratio, which updates the framing. The protocol's refresh cadence is in `references/stakeholder-profiles.md`.
- **The seller's specific product fit.** The framing is product-agnostic — it describes the buyer's situation and the doctrine-derived value of action, not a vendor pitch. The seller's specific product introduction happens at the bridge step, not inside the value-proposition frame.

This file demonstrates the dual-frame value-proposition methodology against a hypothetical post-LBO software company. The structural shape is what new framings will read as upstream context. The sourcing pattern is what new framings will execute against real public data.
