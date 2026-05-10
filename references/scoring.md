# Opportunity Scoring and Pipeline Intelligence Protocol

The machine scores opportunities to prioritize action, allocate resources, and generate accurate forecasts. Scoring replaces gut-feel pipeline management with evidence-based decision logic grounded in the Forward Deployed Selling framework.

> **Reference implementation:** `examples/pipeline-scoring.md`. Read it before scoring any opportunity. The example demonstrates the full Composite Opportunity Score across Movement, FDRI, and Velocity dimensions, with Movement Floor applied where pre-pipeline status overrides the composite tier.

## Scoring Philosophy

Traditional pipeline scoring asks: "How likely is this deal to close?" This is the wrong question. It produces binary thinking — likely or unlikely — and incentivizes sellers to inflate confidence.

The machine asks three better questions:

1. **Where is this account in its journey?** (Movement diagnosis)
2. **Is the selling organization executing at the level this deal requires?** (Deployment readiness)
3. **What is the velocity profile of this deal?** (Speed and trajectory)

These three dimensions — Movement, Readiness, Velocity — produce a composite score that predicts outcomes more accurately than probability alone and, critically, recommends specific actions to improve the score.

## Dimension 1: Movement Score

Where the account sits in the buyer's journey. Scored from the buyer's perspective, not the seller's.

### Awareness Score (0-3)

| Score | Description | Evidence Required |
|-------|-------------|-------------------|
| 0 | No awareness | No content consumption, no brand recognition, no engagement signals |
| 1 | Passive awareness | Some content consumption, recognizes company name, would not accept cold outreach |
| 2 | Active awareness | Multiple content engagements, follows company channels, attends events |
| 3 | Awareness complete | Actively exploring problem space, engaging with company content, connection requests accepted |

### Familiarity Score (0-3)

| Score | Description | Evidence Required |
|-------|-------------|-------------------|
| 0 | No familiarity | No direct engagement, seller is a stranger |
| 1 | Early familiarity | Accepted connection, opened one or two messages, minimal engagement |
| 2 | Building familiarity | Responds to value provocations, engages with personalized content, some trust signals |
| 3 | Familiarity complete | Takes calls willingly, shares information unprompted, describes seller as helpful, introduces colleagues |

### Value Readiness Score (0-3)

| Score | Description | Evidence Required |
|-------|-------------|-------------------|
| 0 | No active need | No budget signals, no pain signals, no competitive evaluation |
| 1 | Latent need | Problem exists but is not prioritized; no budget allocated |
| 2 | Active need | Problem acknowledged, budget exists or being created, evaluation underway |
| 3 | Urgent need | Clear timeline, executive sponsorship, budget approved, decision-makers engaged |

### Movement Composite Score

Sum of the three sub-scores (0-9). The composite determines the account's overall position:

| Range | Interpretation | Machine Action |
|-------|---------------|---------------|
| 0-2 | Pre-pipeline | Awareness activities only. Do not outreach directly. |
| 3-4 | Early pipeline | Familiarity building. Value provocations. No sales pressure. |
| 5-6 | Mid-pipeline | Transitioning to Value. Begin demonstration-oriented engagement. |
| 7-8 | Active opportunity | Full Value movement. Demonstrate, don't describe. |
| 9 | Decision-ready | Remove remaining friction. Make saying yes obvious. |

**Critical rule:** If Value Readiness scores 2-3 but Familiarity scores 0-1, the account is at risk. High need without trust produces competitive evaluations where you start at a disadvantage. The machine recommends accelerated Familiarity building before committing to a Value-stage pursuit.

## Dimension 2: Forward Deployment Readiness Index (FDRI)

Measures whether the selling organization is executing at the level this deal requires. Scored from the seller's capability, not the buyer's behavior.

### The Six FDRI Dimensions

Each dimension is scored 0-3. Most organizations start between 0.8 and 1.4 average. Mature forward-deployed organizations operate at 2.5-3.0.

#### 1. Intelligence Infrastructure (Know More)

| Score | Description |
|-------|-------------|
| 0 | No research beyond basic Google. CRM has name, title, company. |
| 1 | Basic research: LinkedIn, company website, recent news. Surface-level understanding. |
| 2 | Deep research: earnings calls, job postings, competitive analysis, industry benchmarks. Working thesis developed. |
| 3 | Comprehensive intelligence: full stakeholder profiles, Context Stack populated across all five layers, thesis validated or refined through engagement. |

#### 2. Value Demonstration Capability (Show, Don't Tell)

| Score | Description |
|-------|-------------|
| 0 | Capability decks and generic demos only. |
| 1 | Industry-specific case studies and references available. Some benchmark data. |
| 2 | Customized demonstrations using proxy data. POV templates deployable in days. Reference architectures for this industry. |
| 3 | Proof-of-value built with prospect's actual data or close proxies. Working prototype or digital twin available. Prospect has experienced value before contract. |

#### 3. AI Augmentation (Hyper-Personalize)

| Score | Description |
|-------|-------------|
| 0 | No AI tools in use. All research and content creation manual. |
| 1 | AI tools available but used sporadically. Not integrated into daily workflow. |
| 2 | AI embedded in workflow: research synthesis, content personalization, communication drafting. Sellers use AI tools as standard practice. |
| 3 | AI deeply integrated: automated signal monitoring, real-time stakeholder intelligence updates, machine-generated thesis and value provocations refined by sellers. Continuous learning loop active. |

#### 4. Skills and Training (Come with a Thesis)

| Score | Description |
|-------|-------------|
| 0 | Traditional selling skills only. No thesis capability. Discovery is excavation. |
| 1 | Awareness of forward-deployed approach. Some sellers experimenting. No systematic capability. |
| 2 | Team trained on thesis generation, value provocation, movement diagnosis. Regular coaching. Practice environments exist. |
| 3 | Team fluent in forward-deployed execution. Thesis generation is reflex, not project. Peer coaching culture. Sellers teach each other. |

#### 5. Culture and Incentives

| Score | Description |
|-------|-------------|
| 0 | Activity-based metrics: calls, meetings, demos. Compensation rewards volume, not value. |
| 1 | Some outcome-based metrics introduced. Mixed signals — leadership says forward deployment, managers measure activities. |
| 2 | Incentives aligned to forward-deployed behaviors. Deal quality weighted alongside deal quantity. Cross-functional contribution recognized. |
| 3 | Culture fully aligned. Sellers compete on preparation quality and value creation. Early wins celebrated. Skeptics converted through results. Forward deployment is "how we work," not a program. |

#### 6. Measurement and Learning

| Score | Description |
|-------|-------------|
| 0 | Win/loss reviews are rare or perfunctory. No systematic learning capture. |
| 1 | Occasional post-mortems. Some patterns identified but not systematized. |
| 2 | Regular deal reviews with structured learning capture. Insights shared across team. Best practices documented and distributed. |
| 3 | Continuous learning infrastructure. Every deal generates intelligence that improves the next. Machine captures learnings automatically and feeds them back across all accounts. Performance compounds visibly quarter over quarter. |

### FDRI Composite Score

Average of six dimensions (0.0-3.0).

| Range | Interpretation | Machine Action |
|-------|---------------|---------------|
| 0.0-1.0 | Traditional selling | Flag capability gap. This organization is not ready for forward-deployed pursuits. Recommend foundation building. |
| 1.0-1.5 | Early transition | Identify lowest-scoring dimensions. Targeted capability building on the constraint. |
| 1.5-2.0 | Developing | Capable of forward-deployed execution on selected deals. Reserve for highest-value opportunities. |
| 2.0-2.5 | Proficient | Consistent forward-deployed execution. Focus on scaling and refinement. |
| 2.5-3.0 | Mature | Full capability. Compounding advantages. Focus on network effects and emergence. |

### FDRI and Deal Sizing

The machine matches FDRI to deal complexity:

| Deal Complexity | Minimum FDRI | Rationale |
|----------------|-------------|-----------|
| Standard (<$500K) | 1.0 | Basic forward-deployed execution sufficient |
| Mid-market ($500K-$2M) | 1.5 | Requires reliable thesis and demonstration capability |
| Enterprise ($2M-$10M) | 2.0 | Multi-stakeholder orchestration, convergence, deep personalization |
| Strategic (>$10M) | 2.5 | Full capability required. Under-deployment at this level creates existential deal risk. |

When FDRI is below the minimum for a deal's complexity, the machine recommends either increasing capability investment or re-scoping the pursuit.

## Dimension 3: Velocity Score

Measures the speed and trajectory of a deal relative to benchmarks.

### Velocity Indicators

| Metric | Scoring Criteria |
|--------|-----------------|
| Cycle time vs. benchmark | On pace (3), 1-2 weeks behind (2), 3+ weeks behind (1), stalled (0) |
| Active-to-elapsed ratio | >50% (3), 30-50% (2), 20-30% (1), <20% (0) |
| Wait states (current) | 0 active (3), 1 active (2), 2 active (1), 3+ active (0) |
| Phase progression | Advancing on schedule (3), one phase delayed (2), multiple phases delayed (1), regression (0) |
| Stakeholder engagement trend | Expanding (3), stable (2), narrowing (1), champion gone dark (0) |
| Parallel workstream coverage | >60% downstream work started (3), 40-60% (2), 20-40% (1), <20% sequential (0) |

### Velocity Composite Score

Average of indicators (0.0-3.0).

| Range | Interpretation | Machine Action |
|-------|---------------|---------------|
| 0.0-1.0 | Stalled | Diagnose root cause. Is this a wait state (eliminate) or genuine uncertainty (respect)? |
| 1.0-1.5 | Slow | Identify the primary drag. Apply specific acceleration intervention. |
| 1.5-2.0 | Normal | Monitor for emerging wait states. Maintain parallel workstreams. |
| 2.0-2.5 | Fast | Healthy velocity. Ensure speed is experienced as competence, not pressure. |
| 2.5-3.0 | Exceptional | Verify buyer alignment. Speed this extreme may indicate a champion driving urgency — validate that organizational alignment exists. |

## The Composite Opportunity Score

The three dimensions combine into a single opportunity score that drives prioritization and resource allocation.

```
Opportunity Score = (Movement Score / 9) × 0.40
                  + (FDRI / 3.0) × 0.30
                  + (Velocity Score / 3.0) × 0.30
```

Weights reflect that the buyer's position (Movement) matters most, but seller capability (FDRI) and momentum (Velocity) are critical enablers.

### Score Ranges

| Composite | Priority Level | Resource Allocation |
|-----------|---------------|-------------------|
| 0.80-1.00 | Tier 1 — Commit | Full resources. Cross-functional convergence. Executive engagement. |
| 0.60-0.79 | Tier 2 — Invest | Strong support. Targeted capability investment where gaps exist. |
| 0.40-0.59 | Tier 3 — Develop | Moderate support. Focus on the weakest dimension to raise score. |
| 0.20-0.39 | Tier 4 — Watch | Light touch. Build Familiarity. Watch for Value signals. |
| 0.00-0.19 | Tier 5 — Nurture | Awareness activities only. Do not invest pursuit resources. |

### Movement Floor

**Hard rule: if Movement Score < 3 (account has not reached Familiarity), the maximum tier is Tier 4 (Watch) regardless of FDRI/Velocity composite. Pre-pipeline accounts cannot be invested against.**

The unconstrained composite formula has a counter-intuitive edge case: an organization with high seller readiness (FDRI) and high velocity capacity (Velocity Score) can produce a Tier 2 composite score against an account that is literally pre-pipeline (Movement Score 0–2, no Familiarity yet). The math says "ready to invest." The doctrine says the opposite — pre-Familiarity accounts will resist Value-stage actions regardless of seller capability.

The Movement Floor enforces the doctrine's compress-don't-skip rule at the math level. It overrides the composite tier when the buyer's emotional progression has not begun. Pre-pipeline accounts route to Awareness and Familiarity activities until Movement Score reaches 3; only then does the composite tier become applicable.

| Movement Score | Maximum Tier | Rationale |
|----------------|--------------|-----------|
| 0–2 (pre-Familiarity) | Tier 4 (Watch) | Awareness + Familiarity activities only. Do not invest pursuit resources. |
| 3–4 (early Familiarity) | Tier 3 (Develop) | Targeted Familiarity-building. Limit Value-stage commitment. |
| 5+ (Familiarity established or Value emerging) | No floor | Composite tier applies as calculated. |

This floor is a constraint, not a downgrade. An account with Movement Score 9 (Decision-ready) is not capped; the floor only activates when the account is too early in the journey for the composite to be meaningful.

## Deal Health Diagnostics

Beyond scoring, the machine runs diagnostic patterns to identify specific risks and opportunities.

### Risk Patterns

| Pattern | Signal | Diagnosis | Recommended Action |
|---------|--------|-----------|-------------------|
| High Movement, Low FDRI | Buyer ready, seller not | Capability gap threatens a winnable deal | Surge resources, request convergence support, escalate readiness gaps |
| High FDRI, Low Movement | Seller ready, buyer not | Over-investing in an account that isn't ready | Scale back pursuit resources, shift to Familiarity activities |
| High Movement, Low Velocity | Deal should be progressing but isn't | Wait states, organizational inertia, or hidden objection | Map wait states, diagnose blockers, consider whether a champion problem exists |
| Declining Velocity with stable Movement | Previously progressing deal has stalled | Champion gone dark, priority shift, budget freeze, competitive disruption | Immediate outreach to champion, expand to other stakeholders, prepare for regression |
| High Velocity, Low Familiarity | Moving fast without trust foundation | Risk of collapse at late stage when scrutiny increases | Slow down. Invest in relationship. Speed without trust is fragile. |

### Regression Detection

The machine monitors for signals that an account is moving backward:

- Champion stops responding after sustained engagement
- Decision-maker change resets relationship equity
- Budget freeze or strategic pivot
- Competitive loss at a reference account
- Organizational restructuring affecting the buying committee

When regression is detected, the machine re-scores immediately and adjusts recommended actions. Do not continue Value actions when the account has regressed to Familiarity or Awareness.

## Pipeline Prioritization Logic

The machine uses opportunity scores to allocate finite seller time and organizational resources.

### Prioritization Rules

1. **Tier 1 deals get first claim on all resources.** No resource request from a Tier 1 deal is denied without VP-level justification.
2. **Tier 2 deals with clear score-improvement paths get investment.** The machine identifies the specific action that would move the deal to Tier 1 and recommends it.
3. **Tier 3 deals receive time-bounded investment.** If the score does not improve within 30 days, reclassify or reduce investment.
4. **Tier 4 and Tier 5 deals receive automated nurture.** Seller time is preserved for higher-priority opportunities.

### Portfolio Balance

The machine monitors the overall pipeline portfolio for health:

| Metric | Healthy Range | Warning Signal |
|--------|--------------|---------------|
| Tier 1 deals as % of pipeline | 15-25% | <10% (not enough committable pipeline) or >35% (may be over-rating deals) |
| Tier 5 deals as % of pipeline | <20% | >30% (pipeline is bloated with unqualified opportunities) |
| Average Movement Score | 4.5-6.5 | <4.0 (pipeline is too early-stage) or >7.0 (insufficient pipeline building) |
| Average Velocity Score | 1.5-2.5 | <1.5 (systemic velocity problem) or >2.5 (verify scoring accuracy) |
| FDRI distribution | Clustered 1.5-2.5 | Wide spread suggests inconsistent organizational capability |

## Forecast Integration

Opportunity scores feed into forecast intelligence:

### Score-Based Forecast Categories

| Composite Score | Forecast Category | Expected Close Rate |
|----------------|-------------------|-------------------|
| 0.80-1.00 | Commit | 70-85% |
| 0.60-0.79 | Best Case | 40-60% |
| 0.40-0.59 | Pipeline | 15-30% |
| 0.20-0.39 | Upside | 5-15% |
| 0.00-0.19 | Long-term | <5% |

### Forecast Accuracy Feedback Loop

The machine tracks the actual close rate for each score range and recalibrates expected close rates quarterly. This self-correcting mechanism prevents score inflation — if deals scored at 0.80+ consistently close at 50% instead of 70-85%, the scoring criteria are too lenient and must be tightened.

## Scoring Refresh Cadence

| Trigger | Action |
|---------|--------|
| New deal enters pipeline | Full three-dimension scoring |
| Material signal fires (leadership change, earnings, competitive event) | Re-score Movement and Velocity |
| Weekly pipeline review | Velocity refresh on all Tier 1-2 deals |
| Monthly portfolio review | Full re-score on all active opportunities |
| Pre-forecast | Full re-score plus diagnostic review on all commit/best-case deals |
| Regression signal detected | Immediate full re-score |

## Quality Gates for Scoring

Before any score is used in a forecast or prioritization decision:

1. **Evidence test:** Is every score backed by observable evidence, or are any scores based on seller optimism? Flag scores assigned without cited evidence.
2. **Freshness test:** Is the evidence current? Scores based on data older than 30 days should be flagged for refresh.
3. **Consistency test:** Do the three dimensions tell a coherent story? High Movement with zero Velocity is incoherent and requires investigation.
4. **Calibration test:** Does this deal's score feel right compared to similar deals that have closed or been lost? Pattern-matching against historical outcomes catches systematic bias.
5. **Honesty test:** Would the seller assign the same scores if the deal were not in their pipeline? Self-interest distorts scoring. The machine applies external evidence as a check on seller-assigned scores.
