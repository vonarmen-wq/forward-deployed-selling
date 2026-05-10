# Thesis Generation Protocol

A thesis is a point of view about a prospect's situation — not a pitch, not a needs assessment, not a discovery question list. It is an informed hypothesis about what the prospect should do and why, supported by evidence the prospect can verify.

Coming with a thesis replaces traditional discovery. The machine does not ask the customer to educate it. It invites the customer to react to its analysis.

> **Reference implementation:** `examples/delta-thesis.md`. Read it before generating any thesis. The example demonstrates every section of this protocol — Signal, Hypothesis, Evidence (with `KNOWN`/`INFERRED` labeling), Value at Stake, Bridge — applied to a public account using only public data. New theses should match its structure.

## When to Generate a Thesis

Generate a thesis when:
- An account enters the pipeline for the first time
- A material signal fires on an existing account (leadership change, earnings miss, competitive threat, regulatory development)
- A seller requests preparation for a meeting
- The machine identifies a dormant opportunity worth activating

## Data Acquisition Protocol

Before writing any thesis component, the agent assembles the underlying signal data from public and accessible sources. The protocol below specifies what to query, what query patterns produce the most signal, and when to stop researching and start writing.

### Source priority and query patterns

The agent runs through source categories in priority order. Higher-priority sources answer the most consequential thesis questions; lower-priority sources triangulate or extend.

| Priority | Source category | Query patterns | What it produces |
|----------|----------------|----------------|------------------|
| 1 | Most recent earnings call transcript (public companies) | Search the most recent earnings transcript for: stated priorities, named challenges, capital allocation language, named competitors, executive turnover commentary | Direct quotes from the buyer's leadership; the most defensible Hypothesis anchors |
| 2 | Most recent 10-K or 10-Q filing | Risk factors section, Management's Discussion and Analysis, segment performance, capital structure | Structural constraints (covenants, debt maturity, capex commitments) that feed the Constraint dimension of stakeholder profiles |
| 3 | Press releases trailing 6 months | New product launches, partnership announcements, executive appointments, M&A activity | Active strategic moves; signals of where the buyer is investing |
| 4 | Job postings (LinkedIn, careers page) trailing 90 days | Role title patterns, function concentration, geographic concentration, reporting structure mentions | Direction of organizational investment; emerging priorities not yet in earnings commentary |
| 5 | Public statements by the persona (LinkedIn posts, conference talks, podcasts, interviews) | Decision pattern, communication style, stated priorities, public commitments | Persona-specific incentive and decision-pattern signals per `references/stakeholder-profiles.md` |
| 6 | Industry analyst coverage (Forrester, Gartner, IDC, vertical-specific analysts) | Market positioning, competitive set, named peer comparables | Peer comparison set with cited sources for the dual-frame value proposition |
| 7 | Competitor public moves trailing 6 months | Earnings transcripts, press releases, named comparable strategies | Peer comparison evidence per `capabilities/value-proposition-framing.md` Frame 1 |

### Search query examples

For an enterprise software company, search patterns that produce the most signal:

- `[company name] earnings call transcript Q[N] [year]`
- `[company name] 10-K risk factors`
- `[company name] press release [trailing 6 months]`
- `[company name] LinkedIn job postings [function] [year]`
- `[CEO/CFO/CTO name] [conference] keynote`
- `[company name] competitive analysis Forrester Wave / Gartner Magic Quadrant [year]`

The agent does not run all seven priority categories on every thesis. The minimum viable set is priorities 1, 2, and 6 — leadership commentary, structural constraints, and competitive positioning. Priorities 3, 4, 5, 7 add depth where the minimum set is insufficient or where the Hypothesis requires additional triangulation.

### When to stop researching and start writing

Stop researching when each thesis component has a KNOWN source and the seller has signal sufficient to write. Theses dominated by INFERRED claims are weaker; lean toward more KNOWN sourcing where it's accessible. A named peer for the cost-of-inaction frame strengthens the artifact materially — without one, the Frame 1 comparison weakens.

If a thesis cannot be assembled with at least one KNOWN anchor per component, the account is either too early (return to Awareness-stage activities) or the wrong fit (surface to disqualification consideration per `capabilities/disqualification-protocol.md`). Continued research past the point of diminishing returns is best deferred to thesis revision — let the prospect's reaction surface what was actually missing.

### Documenting the data acquisition

The agent retains the source list as part of the thesis artifact. Every `KNOWN` claim cites its specific source from the priority categories above. The retained source list:

1. Makes thesis revision (`capabilities/thesis-revision-protocol.md`) operational — the agent can compare new data against the original sources rather than re-research from scratch.
2. Supports the Pride Test — if the prospect asks "where did this come from?" the agent can name every source.
3. Feeds the charter cohort field benchmarks — sources that consistently produce shippable theses get prioritized in v0.7+ data acquisition.

## Thesis Structure

Every thesis has five components:

### 1. The Signal
What observable event or pattern triggered this analysis? The signal must be specific and verifiable.

Bad: "The company is experiencing challenges."
Good: "In the Q3 earnings call, the CFO cited 15% unplanned equipment downtime as the primary drag on margin. Three job postings for 'reliability engineers' appeared last week."

### 2. The Hypothesis
What does the signal imply about the prospect's situation, priorities, or unrecognized opportunities? The hypothesis connects observable data to an informed inference.

Bad: "They probably need our product."
Good: "The downtime problem likely stems from the data integration gap created by their 2022 acquisition. Three separate ERP systems generate conflicting maintenance schedules. A unified data layer would compress unplanned downtime from 15% to approximately 5%, releasing an estimated $47M annually."

### 3. The Evidence
What data supports the hypothesis? Sources must be cited and assumptions must be labeled. The machine distinguishes between known facts (public data, verified information) and inferences (estimates, benchmarks, projections).

Format:
```
KNOWN: [source] [fact]
INFERRED: [method] [estimate] [confidence: high/medium/low]
```

> This format is enforced site-wide by the **Hallucination Protocol** in `SKILL.md` (under Ethics Constraint Layer). Every numeric or factual claim shipped in any artifact — not only theses — must use this structure. Unsourced numbers presented as `KNOWN` are a Red Light violation.

Example:
```
KNOWN: [Q3 earnings transcript] 15% unplanned downtime
KNOWN: [SEC filing] Apex acquisition completed Q2 2022
KNOWN: [job postings] 3 reliability engineer roles posted Oct 2024
INFERRED: [industry benchmark] Maintenance cost at $47M ± 10% [confidence: medium]
INFERRED: [comparable implementations] Unified data layer reduces downtime to 5% [confidence: high]
```

### 4. The Value at Stake
Quantify the opportunity in the prospect's own terms — their metrics, their money, their competitive position. Conservative estimates build more credibility than aggressive ones. Always show the math.

The framing of Value at Stake follows the dual-frame methodology in `capabilities/value-proposition-framing.md` (Cost of Inaction + Value of Action, both sourced).

#### Per-market-type recipe

The metrics that quantify "value in the prospect's own terms" vary by market type. The agent uses the recipe matched to the qualified ICP's market dimension per `capabilities/icp-definition-protocol.md`.

**B2B Enterprise (deals $500K+, multi-stakeholder buying committee, multi-quarter cycle).**
- **Anchor metrics:** revenue growth, operating margin, EBITDA, working capital, cycle time, market share.
- **Modeling discipline:** model in the buyer's named compensation metrics where known (CFO compensation typically tied to operating margin and earnings consistency; CRO to revenue growth and gross margin; COO to operational throughput KPIs). Per `references/stakeholder-profiles.md` Incentive/Constraint Framework.
- **Conservatism rule:** present a base case + a downside case. Aggressive single-point estimates fail the Pride Test against a CFO who models for committee.
- **Format:** show the math explicitly. Show the assumptions. Cite the inputs. Per the Hallucination Protocol.

**B2B Mid-Market (deals $50K–$500K, smaller committees, shorter cycle).**
- **Anchor metrics:** revenue per customer, conversion rate, churn, time-to-value, support cost.
- **Modeling discipline:** model against publicly available industry benchmarks where company financials are not detailed. Mid-market companies often have less granular public reporting than enterprise; INFERRED with industry-benchmark methodology is acceptable when KNOWN at the company level is unavailable.
- **Conservatism rule:** discount aggressive industry benchmarks by 20% when applying to the specific buyer; mid-market companies often perform below cohort averages on adoption metrics.
- **Format:** simpler model than Enterprise. Single primary metric with one or two secondary metrics. Don't over-build.

**B2B SMB (deals under $50K, single decision-maker or small team, short cycle).**
- **Anchor metrics:** time saved per week, errors avoided, hours reclaimed, payback period in months.
- **Modeling discipline:** quantify in operator-relevant terms (hours, days, dollars at the operator's wage rate), not corporate-level KPIs. SMB owner-operators care about their own time and their own cash flow; they do not care about EBITDA expansion.
- **Conservatism rule:** stay concrete. SMB buyers distrust enterprise-style modeling and respond to "you save N hours per week" framing.
- **Format:** simple. Single metric. Single math step. The thesis itself is shorter — SMB buyers do not invest in long analysis.

**B2C (consumer purchases).**
- **Anchor metrics:** lifetime value (LTV), customer acquisition cost (CAC), conversion rate, attention captured, brand affinity.
- **Modeling discipline:** B2C value-at-stake is rarely individual; it aggregates across cohorts. The relevant unit is segment-level economics, not single-buyer economics.
- **Conservatism rule:** B2C theses are unusual in the doctrine's primary sales context. When generated, they are typically aimed at marketing or growth-team buyers within a B2C company, not individual consumers. Frame in the marketing buyer's metrics.
- **Format:** segment-aggregated. Single segment per thesis; cross-segment generalization fails the Specificity test.

The recipe is not exhaustive. Edge cases (B2B2C platforms, marketplace-shaped businesses, regulated industries) require explicit ICP qualification per `capabilities/icp-definition-protocol.md` and may need adapted modeling. When the standard recipes don't fit, the agent surfaces the modeling decision rather than forcing a recipe match.

### 5. The Bridge
What is the natural next step if the prospect finds this analysis credible? The bridge should be low-friction and high-value. Never ask for a meeting. Offer something useful.

#### Bridge anatomy

A strong Bridge has four properties. Bridges that miss any are weak.

1. **References a specific public document the prospect could verify.** The Bridge offers something traceable, not generic. The prospect can validate the offer's authenticity by examining the named source.
2. **Bounded — names a specific deliverable the seller has already done or can produce quickly.** Bounded asks signal seriousness; open-ended offers signal that the seller hasn't actually done the work.
3. **Useful even if the prospect never responds.** The Bridge respects the prospect's time by offering value the prospect can extract without engaging the seller. The seller's offer is real; the prospect's response is optional.
4. **Frictionless to accept.** No commitment, no meeting ask, no information demand. The prospect's response — if any — is a single sentence email or a one-click acceptance.

#### Strong vs weak Bridges

**Weak (vague, asks for time):**
> "Would you have 15 minutes to discuss this further?"

**Weak (unfocused offer, no anchor):**
> "Happy to share more thinking if useful."

**Weak (open-ended commitment, asks for prospect's data):**
> "If you can share three months of your data, we can build a deeper analysis for you."

**Strong (specific public anchor, time-bounded deliverable, no ask):**
> "The underlying model and the peer comparable disclosures cited above are available as a working spreadsheet (~3 hours of work to produce, already drafted). Reply to this email with 'send model' and I'll send it. No call required."

**Strong (specific anchor, frictionless acceptance):**
> "The Cortex consumption-attribution framework referenced above — built against your Q1 FY2026 disclosures — is available as a one-page diagnostic. Reply with 'yes' and I'll forward it. Useful as input to your sales-leadership review whether or not we ever speak."

**Strong (offer is useful regardless of response):**
> "I'll be at [named industry conference] in [month]. The session at [time] addresses the operating-discipline benchmark cited above; my calendar is open if a 20-minute hallway conversation would be useful, but the session itself is the offer."

The pattern across strong Bridges: a named public document anchors the offer; the deliverable is bounded and pre-built; the prospect's path forward is a single low-friction action; the offer has standalone value if the prospect engages with it asynchronously.

Bad: "Would you have 15 minutes to discuss?"
Good: "The underlying model is available if it would be useful for your planning. No commitment required."

## Value Provocation Format

A value provocation is the delivery vehicle for a thesis. It is a brief, unsolicited analysis sent to a prospect that demonstrates understanding and offers value.

**Constraints:**
- One page maximum. Sixty seconds to consume.
- One specific insight, not a comprehensive analysis.
- Specific to this prospect — not recyclable to anyone else.
- Offers value without demanding commitment.
- Contains no product pitch, no demo request, no meeting ask.

**Structure:**
1. **Hook** (1-2 sentences): Reference the signal in the prospect's own words or from their own context.
2. **Insight** (2-3 sentences): Present the hypothesis with quantified value at stake.
3. **Evidence summary** (2-3 sentences): How you arrived at this conclusion. Be transparent about methodology.
4. **Bridge** (1 sentence): Make the next step frictionless.

**Performance benchmarks** *(provenance: **design targets**, not field-measured. See `KNOWN_ISSUES.md` entry "Performance claims pending field benchmark." All five numbers below await replacement with measured data from the charter cohort field deployment against skill v0.7. Do not present these to prospects as observed results until they are upgraded to "field benchmark from N deployments.")*

- Response rate: 23% (vs. ~3% for traditional cold outreach) [design target]
- Meeting conversion: 12% [design target]
- Opportunity conversion: 8% [design target]
- Average deal size: 2.4× larger than inbound leads [design target]
- Cost per meeting: ~24 hours of machine time for 12 conversations [design target]

## Thesis Refresh Cadence

- **New account entering pipeline:** Generate immediately.
- **Active opportunity:** Refresh before every customer-facing meeting.
- **Dormant account:** Refresh when a material signal fires.
- **Strategic account:** Refresh monthly regardless of signal activity.

## Quality Gates

Before delivering any thesis to a human seller or prospect, the agent runs five gates. The Workflow Enforcement section in `SKILL.md` requires the gate result to be surfaced; this section names the specific gates for theses.

1. **Verifiability gate.** Can the prospect verify the key claims independently? If not, flag the unverifiable elements.
2. **Labeling gate.** Are assumptions labeled and confidence levels assigned per `KNOWN`/`INFERRED`? If not, add them. Per the Hallucination Protocol in `SKILL.md`, unsourced numbers presented as `KNOWN` are a Red Light violation.
3. **Conservatism gate.** Is the value quantification conservative? If aggressive, reduce by 20% and note the adjustment.
4. **Information-content gate.** Would the prospect learn something from this they didn't already know? If not, the thesis has insufficient information content. Revise.
5. **Pride Test.** If the prospect knew exactly how you built this, would they respect the work? If not, revise methodology or sources.

## When gates fail

The gates above are principles the agent applies. When a gate fails substantively, revise the failing dimension before shipping. When multiple gates fail, the artifact is structurally premature — research further or surface to the seller for ICP re-qualification or disqualification consideration.

The Hallucination Protocol's Labeling requirement is non-negotiable: theses without proper KNOWN/INFERRED labeling do not ship. Other gate failures are operator-judgment calls — the agent surfaces what failed and works with the seller on the revision path. The agent does not refuse to deliver when the operator chooses to ship a known-weak artifact; it surfaces the weakness so the choice is explicit.
