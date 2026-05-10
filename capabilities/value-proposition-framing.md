---
name: value-proposition-framing
version: 0.5
status: draft
last-updated: 2026-05-08
author: Angel Armendariz
---

# Value Proposition Framing Protocol

The dual-frame methodology that operationalizes Principle 3 (selling is customer-centric) and Principle 4 (value proposition is dual-frame) of the Forward Deployed Selling foundational principles.

A value proposition is not a product description. It is a structured argument, grounded in the buyer's named incentive and constraints, that names two things in equal measure: the cost of inaction and the value of action. Both frames are required. Both must be sourced. Together they produce framing the buyer reads as intelligence rather than pitch.

## Purpose

Generic value propositions fail predictably. They overstate the value of action, understate the cost of inaction, source neither, and read as marketing. The buyer's response is to disengage — not because the product lacks merit, but because the framing failed to demonstrate that the seller understands the buyer's actual situation.

The dual-frame methodology produces value propositions that:

1. Name the buyer's specific incentive in the buyer's own language (compensation structure, named priority, public commitment).
2. Name the buyer's specific constraint in the buyer's own dimensions (monetary, time, risk, feasibility).
3. Frame action as serving the incentive while respecting the constraint.
4. Frame inaction as compounding the constraint while failing the incentive.
5. Cite sources for every peer comparison and every numeric claim.
6. Pass the FUD test before shipping.

## Load Conditions

**Load this file before generating any of the following:**

- A value provocation (the artifact format defined in `references/thesis-protocol.md`)
- An executive brief framing a buying decision
- A business case artifact for a specific stakeholder
- A stakeholder-specific section of a deal proposal or pursuit document
- Any output that proposes the buyer take an action

**Required prerequisites:**

- A qualified ICP from `capabilities/icp-definition-protocol.md`
- A populated stakeholder profile with the U/B/S/E taxonomy and Incentive/Constraint Framework filled in, per `references/stakeholder-profiles.md`

The agent does not run this protocol against an unqualified target or an incomplete stakeholder profile. The framework requires both inputs.

## The Dual-Frame Methodology

Every value proposition contains two frames, in equal weight, sourced equivalently.

### Frame 1 — Cost of Inaction

What worsens if the buyer does not act. Three sub-components, all required:

**Direct consequences in the buyer's own KPIs.** Name the metric the buyer is compensated on or recognized for. Quantify the trajectory of that metric under continued inaction, modeled against the buyer's own publicly disclosed numbers and stated trajectory. Generic "you'll fall behind" framing fails this frame; "your operating margin trajectory, as disclosed in Q2 commentary at 14.2%, faces continued cost-of-revenue pressure that the named peer set has already addressed" passes it.

**Peer comparison with named peers and cited public moves.** The buyer's named market — competitors, peer companies, comparable operators — has already taken or is taking the action the seller is proposing, OR has already paid the cost of not taking it. Each peer claim cites its source the same way every numeric claim does: `KNOWN [public source]` or `INFERRED [methodology] [confidence]`. Vague competitive references ("your competitors are pulling ahead") are FUD-test failures regardless of accuracy.

**Competitive lag with timeline anchor.** Time matters because the buyer's market does not wait. Quantify the lag — how far behind the named peer set the buyer is, in months, in measured KPI delta, in market share. Anchor the timeline to the buyer's own market dynamics, fiscal cycle, or named competitive event. "The window is closing" without an anchored timeline is manufactured urgency.

### Frame 2 — Value of Action

What improves if the buyer does act. Two sub-components, both required:

**Improvement anchored in the buyer's own public statements, filings, or strategic initiatives.** The buyer has already named what they are trying to improve — in earnings calls, in 10-K commentary, in published strategic initiatives, in internal announcements that reached the market. The value of action accelerates a strategy the buyer has already declared, not a strategy the seller is introducing. This anchoring is what separates dual-frame value propositions from generic ROI pitches.

**Quantified value in the buyer's own KPIs.** The improvement is named in the metric the buyer is compensated on or recognized for. Quantification is conservative; aggressive numbers fail the Pride Test. Where field-measured data does not exist, the value claim is `INFERRED` with confidence levels, modeled against named peer outcomes or industry benchmarks with cited methodology.

### Why Both Frames Are Required

A Cost-of-Inaction frame without a Value-of-Action frame is fear without alternative — the buyer recognizes the framing as pressure and disengages. A Value-of-Action frame without a Cost-of-Inaction frame is upside without context — the buyer recognizes the framing as pitch and discounts it.

Together, the two frames establish:
- The buyer's situation has a real cost of doing nothing (Frame 1 anchored in named peers).
- The buyer's strategy has a real path forward (Frame 2 anchored in their own commitments).
- The seller has done the work to understand both (sourced claims, named anchors, framework-driven analysis).

The buyer reads the framing as intelligence. That is the test.

## The Peer Comparison Sourcing Requirement

The Hallucination Protocol (in `SKILL.md`) requires every numeric claim to carry a citation or a confidence label. The same standard applies to every peer comparison.

**Every peer claim cites its source.**

`KNOWN [public source]` — the peer's action is documented in earnings transcripts, press releases, regulatory filings, hiring patterns, conference presentations, or other public disclosures. The source is named.

`INFERRED [methodology] [confidence]` — the peer's action is reasonably inferred from observable signals (job postings, leadership changes, vendor relationships, technology stack disclosures). The methodology is named. The confidence level is assigned.

**Fabricated peer behavior is a Red Light violation.** If the seller wants to make a peer claim and cannot source it, the claim is dropped. Inventing peer behavior to support a value proposition is identical in severity to inventing a customer reference: it destroys trust if discovered, and it will be discovered, because the buyer's market is small enough that the named peers will be checked.

**Anonymized peer claims are weaker but acceptable when justified.** "A comparable operator in your market segment recently disclosed M% margin expansion following similar implementation" is acceptable IF the underlying source exists and IF anonymization is required by NDA, customer privacy commitment, or competitive sensitivity. If anonymization is just convenience, name the peer.

The Pride Test applies. If the buyer asked "how did you know what competitor X did?" the answer must inspire respect. Public earnings transcripts pass. Scraped private communications do not.

## The CFO Canonical Example

A walkthrough of the dual-frame methodology applied to the kernel example: a CFO funding AI initiatives from cash flow under debt-covenant constraint. The complete worked example with sourced public data is in `examples/cfo-canonical-example.md`. The summary below shows the methodology shape; read the full example for the executable form.

**Stakeholder.** CFO at a mid-market post-LBO software company. Function: Buyer (per `references/stakeholder-profiles.md` U/B/S/E taxonomy).

**Incentive.** Operating margin expansion tied to compensation; earnings consistency through an upcoming refinancing window.

**Constraint.** Cash flow restricted by debt covenants. Capex authorization limited; opex preferred but caps tightened.

**Frame 1 — Cost of Inaction:**
- *Direct consequences:* Continuing AI initiative funding from cash flow compounds covenant pressure as the refinancing window approaches. Operating margin trajectory, as disclosed in the buyer's most recent quarterly commentary, remains under pressure from cost-of-revenue without offsetting margin lift.
- *Peer comparison:* Two named peer companies in similar covenant-constrained positions disclosed margin expansion of N% and P% in the most recent reporting period following operating-discipline initiatives [`KNOWN` — earnings transcripts cited]. A third peer that did not act disclosed covenant-amendment negotiations [`KNOWN` — 8-K filing cited].
- *Competitive lag:* The named peer set is operating at a margin profile R percentage points above the buyer; the lag is widening over the trailing four quarters. Refinancing windows close on lender timelines, not on issuer timelines.

**Frame 2 — Value of Action:**
- *Improvement anchored in the buyer's own commitments:* The buyer's most recent earnings call named "operating discipline as a 2026 strategic priority" and committed to "M% margin expansion by year-end." The value proposition accelerates this stated strategy — not a new strategy the seller is introducing.
- *Quantified value:* Operating margin expansion of M% (modeled against the buyer's own publicly disclosed margin trajectory and the named peer set's disclosed gains) translates to operating-cash-flow improvement of $X million annually [`INFERRED` — methodology: peer-aligned modeling, confidence: medium], directly relieving covenant pressure while serving the earnings incentive.

**FUD test result:** The framing names sourced peers, anchors value to the buyer's own commitments, quantifies in the buyer's own KPIs, and avoids manufactured urgency (the refinancing window is the buyer's named timeline, not invented). Pass.

## Quality Gates

Before any framing ships, the agent runs these tests:

### 1. Sourcing Gate

Every peer claim cites its source. Every numeric claim is `KNOWN [source]` or `INFERRED [methodology] [confidence]`. No claim presents as known fact without provenance. Failure is a Red Light violation per the Hallucination Protocol; revise before continuing.

### 2. Anchoring Gate

Every value-of-action claim ties to the buyer's named public position — earnings commentary, 10-K disclosure, published strategic initiative, public commitment. Generic upside without anchoring fails this gate. Revise to find the buyer's own anchor or drop the claim.

### 3. Constraint Gate

The framing respects the buyer's named constraints (monetary, time, risk, feasibility). A value proposition that requires the buyer to violate their own constraints — exceed budget, ignore covenants, accept implementation risk they have publicly avoided — fails this gate. Re-frame to operate within the constraint, or surface the constraint as a discussion point in the bridge.

### 4. Symmetry Gate

Cost-of-Inaction frame and Value-of-Action frame are equally weighted, equally sourced. Asymmetric framing — heavy fear, light upside; or heavy upside, no cost — fails this gate.

### 5. The FUD Test

Before any framing ships, the agent simulates the buyer's reaction and asks: *would this buyer describe what they just read as "useful intelligence about my situation" or as "FUD designed to pressure me"?*

**Indicators of FUD (any one of these fails the test):**

1. Vague competitor mentions ("your competitors are pulling ahead") without named peers and cited public moves.
2. Unsourced peer behavior claims (any claim about what another company did or is doing without `KNOWN [source]` citation).
3. Manufactured urgency — timeline pressure that is not anchored in the buyer's named market dynamics, fiscal cycle, or named competitive event.
4. Generic industry trends substituting for buyer-specific anchors (citing "the AI revolution" rather than the buyer's own AI strategy).
5. Cost-of-inaction framing without value-of-action framing — fear without alternative.
6. Asymmetric sourcing — Cost of Inaction frame is sourced; Value of Action frame is implied.

**The test is qualitative but not subjective.** The six indicators are observable. If any fires, the agent revises before shipping, even if the underlying numbers are accurate. Numbers passing the Hallucination Protocol can still produce framing that fails the FUD test — sourcing is necessary, not sufficient, for honest framing.

### 6. The Pride Test

If the buyer saw exactly how this framing was constructed — every source, every inference, every modeling decision — would they recognize it as work that respects them, or as work that pressures them? Pride Test failure produces revision before ship.

**Score 6/6: framing is shippable.** Score 5/6: acceptable with the failing gate flagged for refinement. Score 4/6 or below: do not ship; the framing is not yet doctrine-shaped.

## Cross-References

- `references/stakeholder-profiles.md` — required upstream input. The U/B/S/E taxonomy and Incentive/Constraint Framework are the inputs this protocol consumes.
- `capabilities/icp-definition-protocol.md` — required upstream prerequisite (qualified ICP).
- `capabilities/gtm-strategy-protocol.md` — defines which artifacts this framing produces (value provocation, executive brief, business case).
- `references/thesis-protocol.md` — the thesis structure (Signal / Hypothesis / Evidence / Value at Stake / Bridge) consumes value-proposition framing in its Value at Stake component.
- `SKILL.md` Hallucination Protocol — peer comparison sourcing requirement is enforced by the same rules as numeric-claim sourcing.
- `SKILL.md` Ethics Constraint Layer — Pride Test applies as final filter.
- `SKILL.md` "Let Them See the Future" Principle — this protocol operationalizes that principle.
- `SKILL.md` "Hyper-Personalize" Innovation — this protocol is what consumes the Context Stack output to produce framing.
- `examples/cfo-canonical-example.md` — full worked example with sourced public data.

## Voice and Register

This file follows the voice convention documented in `SKILL.md`. Operational logic, declarative rules, agent-as-role.
