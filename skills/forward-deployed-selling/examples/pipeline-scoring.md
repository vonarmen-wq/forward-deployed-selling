Synthetic example. Companies, people, figures and sources are invented to illustrate the protocol; they are not data.

# Score Cards — Three-account pipeline review
Targeting: ICP Enterprise operations-software buyers, industrial and logistics (qualified 2026-10-20) · Movement: per account · Protocol: scoring.md · Gate: floor applied; missing-data rule applied; rounding stated · Output Standards: 5/5

Generated 2026-11-03. Demonstrates `references/scoring.md` against canon: Movement as the sum of three sub-scores, FDRI and Velocity as the mean of scored dimensions with unscored dimensions excluded, the composite formula with half-up rounding to two decimals, the tier table, and the Movement Floor keyed on the Familiarity sub-score. Every figure is a score, a labeled fact, or arithmetic shown in place.

Conventions used on every card:

- Movement sub-scores: one point per YES on the four diagnostic questions in `references/movements.md`, capped at 3. Tie rule: 2 of 4 is a 2.
- FDRI dimensions: the 0–3 descriptors in `references/scoring.md`. A dimension with no evidence is excluded from the mean. Fewer than four scored dimensions makes FDRI INFERRED [low].
- Velocity indicators: canon's six-row table. At or past the right-hand value scores 3; threshold met scores 2; below threshold scores 1; no activity on that indicator for 5 business days, or a regression since the last card, scores 0. No data excludes the indicator.
- Composite = 0.4 × (Movement ÷ 9) + 0.35 × (FDRI ÷ 3) + 0.25 × (Velocity ÷ 3), rounded half up to two decimals. Means are rounded to two decimals before division; the quotients printed below are computed from the rounded means.
- Movement Floor: Familiarity 0–1 caps at Tier 4; Familiarity 2 caps at Tier 3; Familiarity 3 no cap.

---

## Account 1 — Ashgrove Industrial Holdings

Deal: $3.2M ACV, Enterprise band (minimum FDRI 2.0). 71 days in pipeline. Stakeholders: Chief Supply Chain Officer (Sponsor), VP Plant Operations (User), CFO (Buyer, one meeting), CISO (Enabler, questionnaire in progress).

### Movement

| Movement | YES | Score | Signals |
| --- | --- | --- | --- |
| Awareness | 4 of 4 | 3 | Four Ashgrove staff follow the seller's company page; VP Plant Operations attended the seller's September workshop; connection accepted; brand-search referral logged (KNOWN [https://crm.sellerco.example/opportunities/ASH-0207#signals]) |
| Familiarity | 4 of 4 | 3 | Sponsor takes calls; seller delivered a plant-downtime benchmark unasked in August; Sponsor commented on the seller's October post; Sponsor introduced the CFO and called the seller "the one who did the downtime work" (KNOWN [https://crm.sellerco.example/opportunities/ASH-0207#timeline]) |
| Value | 2 of 4 | 2 | Active need: Q3 call cites 14% unplanned downtime (KNOWN [https://investors.ashgroveindustrial.example/q3-2026-transcript]). Budget: FY2027 operations-technology line disclosed (same source). Decision-makers: CFO met once, accessible. Proof-of-value: Sponsor has not committed plant data. Tie rule applied: 2 |

Movement = 3 + 3 + 2 = 8.

### FDRI

| Dimension | Score | Descriptor matched | Evidence |
| --- | --- | --- | --- |
| Intelligence Infrastructure | 1 | Basic research; surface-level | Profiles exist for Sponsor and User only; no Context Stack for the CFO (KNOWN [https://crm.sellerco.example/opportunities/ASH-0207#timeline]) |
| Value Demonstration | 2 | Customized demonstration using proxy data; reference architecture for the industry | Downtime benchmark built on sector proxy data; no Ashgrove plant data yet |
| AI Augmentation | 2 | AI embedded in research synthesis and drafting | Benchmark and profiles produced through the agent workflow (KNOWN [https://crm.sellerco.example/opportunities/ASH-0207#artifacts]) |
| Skills and Training | 2 | Team trained on thesis and movement diagnosis | Thesis shipped 2026-08-19 at 5/5 (KNOWN [https://crm.sellerco.example/ledger#2026-08-19-ashgrove]) |
| Culture and Incentives | no data | — | Excluded |
| Measurement and Learning | 1 | Occasional post-mortems; not systematized | One deal review on file, no captured learnings (KNOWN [https://crm.sellerco.example/opportunities/ASH-0207#timeline]) |

FDRI = (1 + 2 + 2 + 2 + 1) ÷ 5 = 8 ÷ 5 = **1.60**. Five of six scored; confidence not downgraded. Band: Developing (1.5–2.0). Below the Enterprise minimum of 2.0 by 0.40.

### Velocity

| Indicator | Observed | Threshold / scores 3 at | Score |
| --- | --- | --- | --- |
| Active-to-elapsed ratio | 31 active days of 71 = 44% | > 40% / > 50% | 2 |
| Open wait states | 2 (CISO questionnaire unowned on the prospect side; CFO follow-up unscheduled) | < 3 / 0 | 2 |
| Internal response time | 19 h median on prospect questions | < 48 h / < 24 h | 3 |
| Parallel coverage | 3 of 4 downstream workstreams started (business case, reference architecture, security pre-work; procurement not started) = 75%, at the threshold boundary | > 60% / > 75% | 2 |
| Phase transition | 4 days, benchmark-to-business-case | < 5 / < 3 | 2 |
| Velocity multiplier | no data (no prior closed cycle in this segment) | > 1.4× / > 1.8× | excluded |

Velocity = (2 + 2 + 3 + 2 + 2) ÷ 5 = 11 ÷ 5 = **2.20**. Band: Fast (2.0–2.5).

### Composite and tier

```
0.4 × (8 ÷ 9)    = 0.4 × 0.8889 = 0.3556
0.35 × (1.60 ÷ 3) = 0.35 × 0.5333 = 0.1867
0.25 × (2.20 ÷ 3) = 0.25 × 0.7333 = 0.1833
sum               = 0.7256 → 0.73 (half up, two decimals)
```

Composite **0.73 → Tier 2** (0.60–0.79, advance with named next action). Movement Floor: Familiarity 3, no cap. Tier stands at 2.

Risk pattern: **High Movement, Low FDRI** (buyer ready, seller not). Capability gap on Intelligence Infrastructure and Measurement threatens a winnable deal.

Named next action: build the CFO Context Stack and profile (`/fds:profile`) before the business case ships; the Buyer is the one function without a frame. Request convergence (`/fds:converge`) for a plant-data proof of value to move Value from 2 to 3.

---

## Account 2 — Keelhaven Marine Services

Deal: $1.4M ACV, Enterprise band (minimum FDRI 2.0). 118 days in pipeline. Stakeholders: Director of Fleet Analytics (User), no others.

### Movement

| Movement | YES | Score | Signals |
| --- | --- | --- | --- |
| Awareness | 2 of 4 | 2 | Director attended one webinar in July; connection accepted. No content consumption since; no brand interaction logged (KNOWN [https://crm.sellerco.example/opportunities/KEE-0088#signals]). Tie rule applied: 2 |
| Familiarity | 1 of 4 | 1 | One demo in July; "we'll circle back after the reorganization" on 2026-08-02; no value delivered since; no personal engagement with seller content (KNOWN [https://crm.sellerco.example/opportunities/KEE-0088#timeline]) |
| Value | 0 of 4 | 0 | Reorganization announced 2026-07-29 (KNOWN [https://news.keelhavenmarine.example/2026-07-29-operating-model]); no budget signal, no accessible decision-maker, no proof-of-value interest |

Movement = 2 + 1 + 0 = 3.

### FDRI

| Dimension | Score | Descriptor matched | Evidence |
| --- | --- | --- | --- |
| Intelligence Infrastructure | 1 | Basic research | One profile; reorganization not tracked (KNOWN [https://crm.sellerco.example/opportunities/KEE-0088#timeline]) |
| Value Demonstration | 1 | Industry case studies; some benchmark data | Generic demo, one marine case study |
| AI Augmentation | 0 | No AI tools in use on this account | No artifacts in the agent log (KNOWN [https://crm.sellerco.example/opportunities/KEE-0088#artifacts]) |
| Skills and Training | 2 | Team trained | Same team as Ashgrove; capability exists, unused here |
| Culture and Incentives | 1 | Activity metrics; mixed signals | Deal held open 118 days on one demo (KNOWN [https://crm.sellerco.example/opportunities/KEE-0088#timeline]) |
| Measurement and Learning | 0 | No learning capture | No post-demo review |

FDRI = (1 + 1 + 0 + 2 + 1 + 0) ÷ 6 = 5 ÷ 6 = **0.83**. Six of six scored. Band: Traditional selling (0.0–1.0). Below the Enterprise minimum of 2.0 by 1.17.

### Velocity

| Indicator | Observed | Threshold / scores 3 at | Score |
| --- | --- | --- | --- |
| Active-to-elapsed ratio | 6 active days of 118 = 5% | > 40% / > 50% | 1 |
| Open wait states | 1 (reorganization, no owner, no date) | < 3 / 0 | 2 |
| Internal response time | no data (no prospect questions since July) | < 48 h / < 24 h | excluded |
| Parallel coverage | 0 of 4 started = 0%; below threshold would score 1, but no activity on this indicator since the 2026-07-14 demo, well past 5 business days, so 0 | > 60% / > 75% | 0 |
| Phase transition | none since 2026-07-14 demo; 94 days, regressed since the last card | < 5 / < 3 | 0 |
| Velocity multiplier | no data | > 1.4× / > 1.8× | excluded |

Velocity = (1 + 2 + 0 + 0) ÷ 4 = 3 ÷ 4 = **0.75**. Four indicators scored. Band: Stalled (0.0–1.0).

### Composite and tier

```
0.4 × (3 ÷ 9)     = 0.4 × 0.3333 = 0.1333
0.35 × (0.83 ÷ 3) = 0.35 × 0.2767 = 0.0968
0.25 × (0.75 ÷ 3) = 0.25 × 0.2500 = 0.0625
sum                = 0.2926 → 0.29
```

Composite **0.29 → Tier 4** (0.20–0.39, return to Familiarity work). Movement Floor: Familiarity 1 caps at Tier 4. The cap and the composite agree; the floor is recorded as applied even though it does not change the result.

Risk pattern: none in the table fires. Movement, FDRI and Velocity are all low and tell one coherent story: the account is early and the pursuit is dormant. The consistency test passes.

Named next action: remove from the active forecast. Set signal monitoring on the reorganization (new fleet-operations leadership, analytics postings). On a leadership signal, re-run `/fds:diagnose`; no outreach before that. Two further dormant cycles trigger `/fds:disqualify`.

---

## Account 3 — Northwind Cold Chain

Deal: $420K ACV, Mid-market band (minimum FDRI 1.5). 26 days in pipeline. Stakeholders: VP Operations (Sponsor), inbound.

### Movement

| Movement | YES | Score | Signals |
| --- | --- | --- | --- |
| Awareness | 4 of 4 | 3 | Inbound from a seller essay on cold-chain loss; three content downloads; connection accepted; webinar attendance (KNOWN [https://crm.sellerco.example/opportunities/NWC-0331#signals]) |
| Familiarity | 1 of 4 | 1 | VP took one call (YES). No value delivered yet; no personal engagement with seller content; relationship 26 days old, "helpful" not yet earned (three NO) |
| Value | 2 of 4 | 2 | Active need: VP named 3.1% spoilage loss on the call (KNOWN [https://crm.sellerco.example/opportunities/NWC-0331/notes/2026-10-14]). Budget: Q1 2027 capital plan includes "monitoring and loss reduction" (KNOWN [https://www.northwindcoldchain.example/newsroom/2026-capital-plan]). Decision-makers: CFO not accessible yet. Proof-of-value: VP asked what a pilot looks like, uncommitted. Tie rule applied: 2 |

Movement = 3 + 1 + 2 = 6.

### FDRI

| Dimension | Score | Descriptor matched | Evidence |
| --- | --- | --- | --- |
| Intelligence Infrastructure | 3 | Full profiles, Context Stack across five layers | Profiles for VP Operations and CFO; thesis validated on the 2026-10-14 call (KNOWN [https://crm.sellerco.example/opportunities/NWC-0331#artifacts]) |
| Value Demonstration | 2 | Customized demonstration on proxy data; POV template deployable | Spoilage model on sector proxy data ready; no Northwind data |
| AI Augmentation | 3 | Automated signal monitoring; agent-generated thesis refined by seller | Signal watch on Northwind since inbound (KNOWN [https://crm.sellerco.example/opportunities/NWC-0331#artifacts]) |
| Skills and Training | 2 | Team trained | As above |
| Culture and Incentives | 2 | Incentives aligned to deal quality | Seller's plan credits thesis gate pass rate (KNOWN [https://wiki.sellerco.example/sales/comp-plan-2026]) |
| Measurement and Learning | 2 | Structured deal reviews, insights shared | Inbound playbook updated after two prior cold-chain deals |

FDRI = (3 + 2 + 3 + 2 + 2 + 2) ÷ 6 = 14 ÷ 6 = **2.33**. Band: Proficient (2.0–2.5). Above the Mid-market minimum of 1.5.

### Velocity

| Indicator | Observed | Threshold / scores 3 at | Score |
| --- | --- | --- | --- |
| Active-to-elapsed ratio | 14 active days of 26 = 54% | > 40% / > 50% | 3 |
| Open wait states | 0 | < 3 / 0 | 3 |
| Internal response time | 30 h median | < 48 h / < 24 h | 2 |
| Parallel coverage | 3 of 4 started = 75%, at the boundary | > 60% / > 75% | 2 |
| Phase transition | 2 days, inbound-to-call | < 5 / < 3 | 3 |
| Velocity multiplier | no data | > 1.4× / > 1.8× | excluded |

Velocity = (3 + 3 + 2 + 2 + 3) ÷ 5 = 13 ÷ 5 = **2.60**. Band: Exceptional (2.5–3.0): verify buyer alignment before trusting the speed.

### Composite and tier

```
0.4 × (6 ÷ 9)     = 0.4 × 0.6667 = 0.2667
0.35 × (2.33 ÷ 3) = 0.35 × 0.7767 = 0.2718
0.25 × (2.60 ÷ 3) = 0.25 × 0.8667 = 0.2167
sum                = 0.7552 → 0.76
```

Composite **0.76 → Tier 2 by the formula. Movement Floor binds: Familiarity 1 caps at Tier 4. Final tier: 4.**

This is the case the floor exists for. Seller capability (FDRI 2.33) and deal speed (Velocity 2.60) lift the composite into Tier 2 on an account that has taken one call and received nothing of value from the seller. The arithmetic says invest; the floor says the buyer has not reached Familiarity and will resist a pilot regardless of how good the seller is. Per canon, a pilot proposal, business case or demo requires Familiarity 3; at Familiarity 2 the account qualifies for a thesis, a value provocation and a Bridge, and the command surfaces the floor and routes to Familiarity work.

Risk pattern: **High Velocity, Low Familiarity** (moving fast without a trust foundation; risk of collapse at late-stage scrutiny). Recommended action from the table: slow down, invest in the relationship.

Named next action: deliver the spoilage comparison the VP did not ask for, with cited sources, through `/fds:thesis` as a value provocation with a Bridge and no pilot language. Expected effect: Familiarity 1 → 2 inside one window. Northwind is a logistics operator, so the industry cell is Transport/Travel: W for Mid-market × Transport/Travel × VP × Email × Normal = 5 × 1.5 × 1.2 × 1.2 × 1.0 × 1.0 = 10.8 → 11 business days. T_next_signal is the Q1 capital plan at 41 business days, so W = 11. Re-score at Familiarity 2: the cap moves to Tier 3. The pilot conversation the VP raised becomes permissible at Familiarity 3.

---

## Portfolio summary

| Account | ACV | Band | Movement A/F/V | FDRI | Velocity | Composite | Formula tier | Floor cap | Final tier |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Ashgrove Industrial Holdings | $3.2M | Enterprise | 3/3/2 = 8 | 1.60 | 2.20 | 0.73 | 2 | none | **2** |
| Keelhaven Marine Services | $1.4M | Enterprise | 2/1/0 = 3 | 0.83 | 0.75 | 0.29 | 4 | 4 | **4** |
| Northwind Cold Chain | $420K | Mid-market | 3/1/2 = 6 | 2.33 | 2.60 | 0.76 | 2 | 4 | **4** |

Pipeline $5.02M; Tier 1–2 value $3.2M (64%).

Allocation this week:

| Account | Seller time | Action | Owner and date |
| --- | --- | --- | --- |
| Ashgrove Industrial Holdings | Pursuit time, most of the week | CFO Context Stack and profile; convergence request for plant data | Seller runs `/fds:profile` by 2026-11-05 and `/fds:converge` by 2026-11-07 |
| Northwind Cold Chain | Two hours | One unasked value delivery (spoilage comparison, cited); then wait out the 11-day window | Seller ships the provocation by 2026-11-05; window closes 2026-11-19 |
| Keelhaven Marine Services | None | Monitoring rule on the reorganization; re-diagnose on a leadership signal | Signal watch set by 2026-11-04; no outreach |

## Gate report

Scoring gate (canon). Movement Floor applied on all three cards and binding on Northwind. Missing-data rule applied: Ashgrove 5/6 FDRI and 5/6 Velocity, Keelhaven 4/6 Velocity, Northwind 5/6 Velocity, every excluded dimension left out of its mean. Rounding stated as half up to two decimals on every composite. Pass.

Scoring quality checks (`references/scoring.md`):

- Evidence: every sub-score cites a signal.
- Freshness: all evidence inside 30 days except Keelhaven's July demo, flagged as the reason for its Velocity reading.
- Consistency: Keelhaven's three low readings agree; Northwind's high FDRI and Velocity against low Familiarity is the incoherence the floor resolves.
- Calibration: no ledger history yet for this cell; noted.
- Honesty: every score is assigned from CRM and artifact-log evidence; the seller-reported stage was not used.

Output Standards: Specificity pass; Evidence pass; Friction pass (one named next action per account); Velocity pass; Pride pass. 5/5.

Ledger lines (canon shape; a window on a score card and a prediction on a score card are written `—`):

```
2026-11-03 | Ashgrove Industrial Holdings | score | 3/3/2 | 2 | protocol gate 3/3 | output standards 5/5 | window — | predicted — | outcome —
2026-11-03 | Keelhaven Marine Services    | score | 2/1/0 | 4 | protocol gate 3/3 | output standards 5/5 | window — | predicted — | outcome —
2026-11-03 | Northwind Cold Chain         | score | 3/1/2 | 4 | protocol gate 3/3 | output standards 5/5 | window — | predicted — | outcome —
```

The 11-day Northwind window is stored on its Thesis record by `/fds:thesis` when the provocation ships; it does not belong on the score card line.
