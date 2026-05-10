# Deal Velocity Protocol

Velocity is not compression. Compression removes waste from an existing process. Velocity redesigns the process so waste never accumulates. Compression is a tactic. Velocity is a posture — a way of operating that compounds across every deal, every quarter, every year.

The machine treats velocity as a structural advantage, not an optimization project.

> **Provenance note for this file.** All cycle-time, capacity, and compression-percentage figures below are **design targets** — they reflect the doctrine's intended operating range, not field-measured data. The charter cohort field deployment against skill v0.7 will replace these with measured benchmarks. See `KNOWN_ISSUES.md` for the upgrade path. Do not present any number from this file to a prospect as an observed result until it is upgraded.

## The Wait State Problem

Map any enterprise deal and you will find the same pattern: actual work occupies a fraction of elapsed time. The rest is wait states — periods when neither side does anything productive while the clock runs.

On a 120-day deal cycle, approximately 30 days involve real activity. The other 90 are dead time: legal reviews in someone's inbox, data access requests without clear owners, internal debates that could resolve in a single session, calendar coordination adding weeks to something that takes hours. *(Design target — pre-charter-cohort estimate.)*

**The machine's primary velocity function is detecting and eliminating wait states.**

### Wait State Categories

| Category | Example | Root Cause | Machine Action |
|----------|---------|------------|---------------|
| Approval queue | Deal review sitting unscheduled | Sequential process design | Escalate, pre-schedule, or eliminate the gate |
| Information gap | Prospect waiting for a technical answer | Wrong resource allocated or unavailable | Route to available expert, provide interim answer from knowledge base |
| Calendar friction | Two-week delay to schedule a one-hour meeting | Over-reliance on synchronous coordination | Propose async alternative, share working materials in advance |
| Internal debate | Scope discussion cycling without resolution | Unclear decision rights | Identify decision owner, frame the decision, force resolution |
| Procurement drift | Security questionnaire unanswered for weeks | No owner, no deadline, no urgency | Pre-populate responses, assign owner, create accountability |
| Champion silence | No response to last three messages | Loss of internal momentum, priority shift, or regression | Diagnose: is this friction or genuine uncertainty? Adjust approach accordingly |

### Detection Signals

The machine monitors for:
- More than 5 business days without substantive activity on an active opportunity
- More than 2 calendar coordination exchanges for a single meeting
- More than 2 contract redline cycles
- Stakeholder questions that should have been pre-answered
- Buyer requests for information already available elsewhere in the deal record
- Any phase lasting more than 150% of its benchmark duration

When a wait state is detected, the machine diagnoses the cause and recommends action within 24 hours. Wait states that persist unchallenged become self-perpetuating: the longer nothing happens, the easier it becomes for nothing to continue happening.

## Parallel Workstream Architecture

The principle: any work that does not depend on the output of prior work starts immediately.

Most deal processes run linearly because the organization is built that way. Finish discovery, then design the solution. Finish the design, then build the business case. Finish the business case, then negotiate. Each phase waits for formal completion of the prior phase, even when significant downstream work could begin in parallel.

### The Parallel Execution Model

```
TRADITIONAL (Sequential):
Discovery ──────► Solution Design ──────► Business Case ──────► Legal/Procurement ──────► Close
                  [wait]                   [wait]                [wait]
Total: ~120 days

FORWARD-DEPLOYED (Parallel):
Discovery ──────────────►
  Solution Design ────────────────►  (starts on predictable 80%)
    Business Case ──────────────►    (starts with benchmarks + public financials)
      Legal Review ────────────►     (starts on standard terms)
        Procurement Prep ──────►     (pre-populated from prior deals)
Total: ~72 days
```

### What Starts When

| Workstream | Can Start After | Does NOT Require |
|-----------|----------------|-----------------|
| Reference architecture draft | Account enters pipeline | Completed discovery |
| Business case (benchmark version) | Public financial data available | Finalized solution design |
| Standard legal terms review | Deal qualified | Commercial proposal |
| Security questionnaire prep | Prospect industry identified | Formal procurement kickoff |
| Stakeholder mapping | First engagement | Champion confirmation |
| Competitive positioning | Competitive signals detected | Full competitive intel |
| Proof-of-value scoping | Solution hypothesis formed | Signed SOW |

### The 80/20 Rule of Parallel Work

Eighty percent of downstream work is predictable from context. Discovery refines the remaining twenty percent — but that refinement happens against a working draft, not a blank canvas.

- Solutions team builds reference architecture from industry, public filings, and comparable implementations while discovery is underway
- Value team constructs business case using industry benchmarks and publicly available financials while solution takes shape
- Legal reviews standard terms and identifies likely negotiation areas while the commercial proposal is drafted

When upstream work finalizes, downstream work updates in hours, not weeks.

## The Compression Matrix

Not everything compresses equally. The machine must know what yields to acceleration and what resists it.

*All percentage ranges in this matrix are design targets. The compression numbers reflect the doctrine's intended operating profile across phases; field-measured data from the charter cohort against skill v0.7 will replace them.*

### High Compression (70-90% reduction) [design target]

These are execution phases where AI capability directly substitutes for human research time:

- **Information gathering:** AI synthesizes in minutes what humans research in days. Earnings calls, job postings, competitive analysis, patent filings, industry benchmarks — the raw material that once required weeks now takes hours.
- **Document assembly:** Proposals, questionnaires, standard responses follow patterns that AI handles efficiently. Pre-built components assemble into deal-specific deliverables.
- **Scenario modeling:** Financial projections, competitive comparisons, implementation timelines — pattern matching at scale.
- **Account research and thesis generation:** Building the preliminary understanding that replaces traditional discovery.

### Moderate Compression (30-50% reduction) [design target]

These require human judgment layered on AI preparation:

- **Solution design:** AI generates initial configurations from patterns across similar implementations. Architects refine the design — but they start from a working draft, not a blank page.
- **Negotiation preparation:** Scenario analysis and predictive modeling compress prep time. The negotiation itself moves at the counterparty's pace.
- **Stakeholder alignment:** AI maps the buying committee and recommends engagement strategies. The human work of building consensus still requires meetings and conversations.
- **Proposal refinement:** Structure and standard content compress. Custom positioning and strategic framing require human craft.

### Low Compression (10-20% reduction) [design target]

These are human-paced activities that resist acceleration:

- **Trust building:** Develops at relationship speed. Cannot be rushed without creating suspicion.
- **Organizational alignment:** Committee decisions require the process of collective deliberation.
- **Legal review:** Institutional processes with their own cadence and approval chains.
- **Change management:** Adoption follows its own rhythm regardless of external pressure.

### Compression-Resistant (0% reduction)

These are not optimizable. The machine respects them:

- **Buyer readiness:** Arrives when it arrives. You cannot close before a buyer is ready to buy.
- **Budget cycles:** Happen annually, not on your timeline.
- **Implementation reality:** Takes the time it takes. Promising otherwise destroys credibility.
- **Organizational grief:** When a deal requires retiring a legacy system or changing established workflows, people need time to process the change.

## The Velocity Multiplier

The financial case for velocity is structural, not incremental.

*The example below is a **design-target illustration**, not a field-measured outcome. The 62% capacity gain is what the formula produces when cycle compression delivers as intended; charter cohort data against v0.7 will produce field-measured comparators.*

```
Annual Revenue Capacity = deal_size × win_rate × cycles_per_year

Example (design target):
  Deal size: $1M | Win rate: 30% | Cycle: 120 days
  Cycles/year: 3.0 | Capacity: $900K/seller

Compress cycle to 75 days:
  Cycles/year: ~4.9 | Capacity: $1.5M/seller

  → ~62% increase in revenue capacity     [design target]
  → Zero additional headcount
  → Zero improvement in win rate required
  → Zero increase in deal size required
```

This math is why velocity is a strategy, not a tactic. A tactic improves a metric. A strategy changes the economics of the business.

### Second-Order Effects

Velocity compounds through multiple channels:

1. **Pipeline expansion:** Compressed cycles mean each seller can pursue more opportunities, expanding coverage
2. **Forecast accuracy:** More cycles per period means more data points, improving prediction
3. **Cost of revenue:** Faster cycles reduce the fully loaded cost per dollar of revenue
4. **Working capital:** Faster purchase orders mean faster cash collection, which funds further investment
5. **Talent attraction:** Organizations known for velocity attract sellers who value execution
6. **Market intelligence:** More deal cycles generate more market data, improving thesis quality across all accounts

### When Velocity Self-Finances

The most powerful velocity programs reach a point where speed generates the capital to fund more speed. Faster deals → faster cash collection → retired revolving debt → freed capital → investment in pre-built assets and labs → even faster deals. The machine monitors for this inflection point and surfaces it to leadership.

## When NOT to Accelerate

The machine distinguishes between wait states caused by bureaucratic friction (eliminate) and wait states caused by genuine uncertainty (respect).

### Do Not Compress

- **When the buyer distrusts speed.** Some buyers have been burned by vendors who rushed to close and failed to deliver. Deliberate pacing signals seriousness. Read the room. Match their pace when pace builds confidence.
- **When trust has not been established.** Speed without trust feels like pressure. If the account is still in Familiarity movement, do not apply Value-stage velocity.
- **When stakeholders are not aligned.** Closing with one champion fails at implementation when others resist. Invest time in alignment before accelerating to close.
- **When the deal economics don't work.** Speed to a bad deal is still a bad deal. The machine validates deal quality before optimizing deal speed.
- **When the CFO hasn't been brought along.** A proposal arriving before a decision-maker understands the problem it solves creates resistance, not momentum.

### The Competence Test

Speed serves the customer only when the customer experiences it as competence, not pressure. The machine applies this test before recommending any acceleration:

> If we move this fast, will the customer feel impressed by our preparation — or rushed by our agenda?

If the answer is "rushed," slow down. Rebuild context. Let the human process unfold.

## Internal Velocity: Your Own Organization

Often the biggest delays are not with the customer. They are with your own organization.

### Common Internal Blockers

- Legal teams re-reviewing standard terms on every deal
- Pricing approvals requiring executive sign-off for any deviation
- Technical resources that cannot be scheduled for weeks
- Proposal templates that have not been updated in years
- Security questionnaire responses that do not exist in searchable format

### Internal Velocity Playbook

The machine recommends and tracks implementation of these organizational assets:

*All Velocity Impact ranges in this table are **design targets**. They estimate the cycle-time effect of each asset based on the doctrine's intended operating profile; field-measured data from the charter cohort against v0.7 will replace them.*

| Asset | Purpose | Velocity Impact (design target) |
|-------|---------|----------------|
| Pre-approved contract language library | Eliminate redundant legal review | -2 to -4 weeks per deal |
| Decision trees for non-standard terms | Empower front-line decision making | -1 to -2 weeks per deal |
| Pricing frameworks with pre-approved bands | Remove approval bottlenecks | -3 to -5 days per deal |
| Reference architectures by industry | Compress solution design | -2 to -3 weeks per deal |
| "Fast start" packages for standard deals | Eliminate custom scoping | -1 to -2 weeks per deal |
| Searchable security questionnaire database | Pre-populate procurement responses | -1 to -2 weeks per deal |
| Standing approval for defined deal types | Remove executive bottleneck | -1 week per deal |
| War room protocols for competitive situations | Coordinate rapid response | Situational, often decisive |

### Organizational Readiness Signals

The machine assesses whether the selling organization can sustain velocity:

- **Green:** Pre-built assets exist, approvals are streamlined, resources are cross-trained, escalation paths have SLAs
- **Yellow:** Some assets exist but gaps remain, approval processes have known bottlenecks, resource availability is inconsistent
- **Red:** Every deal starts from scratch, approvals require multiple executive levels, key resources are single points of failure

When organizational readiness is Red or Yellow, the machine flags this as the primary velocity constraint — not the customer's pace.

## Velocity Metrics

The machine tracks these metrics to diagnose velocity health:

*Targets in the table below mix two categories. Operational thresholds (Phase transition time, Wait state count, Internal response time, Parallel workstream coverage) are doctrine-defined SLAs. Performance benchmarks (Cycle time, Active-to-elapsed ratio comparisons, Velocity Multiplier) are **design targets** awaiting field measurement against v0.7. The "most orgs are 25-30%" comparison is a pre-charter-cohort estimate without a cited source; charter-cohort field data will replace it.*

| Metric | What It Measures | Target |
|--------|-----------------|--------|
| Cycle time (median) | End-to-end deal duration | Your own historical median minus 30-50% [design target] |
| Active-to-elapsed ratio | Days of real work vs. total days | >40% [design target] (most orgs are 25-30% [unsourced estimate]) |
| Phase transition time | Days between phase completions | <5 business days [SLA] |
| Wait state count | Number of identified dead-time periods per deal | <3 per deal [SLA] |
| Internal response time | Time from seller request to internal resource delivery | <48 hours [SLA] |
| Parallel workstream coverage | % of downstream work started before upstream completion | >60% [SLA] |
| Velocity Multiplier | Annualized capacity vs. current capacity | >1.4x [design target] |

## Deal Acceleration Playbook

When the machine identifies an opportunity to accelerate, it selects from these interventions:

### For Stalled Discovery
- Generate a thesis from public data and present it for validation
- Replace excavation with validation: "Here's what we know. What are we missing?"
- Compress from weeks to days by doing the research before the meeting

### For Stalled Solution Design
- Deploy reference architecture from comparable implementations
- Present working draft and ask the prospect to identify gaps
- Shift from "design from scratch" to "refine from pattern"

### For Stalled Business Case
- Build preliminary ROI using industry benchmarks and public financials
- Share conservative estimates and invite the prospect to refine with their data
- Offer the underlying model as a value artifact

### For Stalled Procurement
- Pre-populate security questionnaires before they are requested
- Flag standard legal issues in advance and suggest language that has worked before
- Model integration scenarios before the procurement team asks

### For Stalled Executive Alignment
- Create stakeholder-specific briefs that address each decision-maker's concerns
- Surface the cost of delay in the prospect's own terms
- Propose a time-bounded proof of value that creates natural decision momentum

## The Learning Loop

Every deal generates velocity intelligence that improves the next:

- Which phases consistently create wait states → systemic fix, not deal-level fix
- Which internal processes are the real bottleneck → organizational advocacy
- Which parallel workstreams produce the highest quality drafts → refine the 80/20 split
- Which compression attempts backfired → update the "when NOT to accelerate" criteria
- Which velocity interventions had the highest impact → prioritize for future deals

The machine captures these learnings and feeds them back across all accounts. Velocity intelligence that is not captured is velocity intelligence lost.
