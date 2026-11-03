---
name: scoring
consumes: [Movement Diagnosis, Deal Record, Velocity Profile]
emits: Score Card
gate: floor applied; missing-data rule applied; rounding stated
---

# Opportunity Scoring Protocol

Prerequisites: `canon.md` (Scoring formula, tier table, Movement Floor, Velocity table, Deal-size bands); a current Movement Diagnosis; `examples/pipeline-scoring.md` as the reference implementation.

The machine scores opportunities to prioritize action, allocate resources and forecast. Traditional pipeline scoring asks "how likely is this deal to close?" — a question that produces binary thinking and rewards inflated confidence. The machine asks three questions instead: where is the account in its journey (Movement), is the selling organization executing at the level the deal requires (FDRI), and what is the deal's speed and trajectory (Velocity). The three combine into a composite that recommends the action that raises it.

## Dimension 1: Movement (0–9)

The sum of the three sub-scores from the Movement Diagnosis (`movements.md`), each 0–3 with every YES cited. Scored from the buyer's perspective, not the seller's.

| Sum | Reading |
| --- | --- |
| 0–2 | Pre-pipeline; Awareness actions only |
| 3–4 | Early pipeline; Familiarity building |
| 5–6 | Transitioning to Value |
| 7–8 | Active opportunity; demonstrate, don't describe |
| 9 | Decision-ready; remove remaining friction |

The sum is an input to the composite. The floor is keyed on the Familiarity sub-score alone (below).

## Dimension 2: Forward Deployment Readiness Index (0–3)

Whether the selling organization executes at the level the deal requires. Scored from the seller's capability, not the buyer's behavior. Six dimensions, each 0–3; FDRI is the mean of the dimensions with data. Most organizations start between 0.8 and 1.4 [design target]; mature forward-deployed organizations operate at 2.5–3.0 [design target].

| Dimension | 0 | 1 | 2 | 3 |
| --- | --- | --- | --- | --- |
| Intelligence infrastructure | Basic search; CRM holds name, title, company | LinkedIn, website, recent news | Earnings calls, postings, competitive analysis, benchmarks; working thesis | Full profiles; Context Stack populated; thesis validated through engagement |
| Value demonstration | Capability decks and generic demos | Industry case studies and references | Customized demos on proxy data; POV templates deployable in days | POV on the prospect's data or close proxies; working prototype; value experienced before contract |
| AI augmentation | None | Sporadic, not in workflow | Embedded in research, personalization, drafting | Automated signal monitoring; machine-generated theses refined by sellers; learning loop active |
| Skills and training | Traditional only; discovery is excavation | Some sellers experimenting | Team trained on thesis, provocation, diagnosis; coached | Thesis generation is reflex; peer coaching culture |
| Culture and incentives | Activity metrics; volume rewarded | Mixed signals between leadership and managers | Incentives aligned; deal quality weighted; cross-functional contribution recognized | Sellers compete on preparation quality; forward deployment is "how we work" |
| Measurement and learning | Rare or perfunctory win/loss | Occasional post-mortems | Structured deal reviews; insights shared | Every deal improves the next; machine captures learnings automatically |

| FDRI | Reading | Action |
| --- | --- | --- |
| 0.0–1.0 | Traditional selling | Flag capability gap; build foundations before forward-deployed pursuits |
| 1.0–1.5 | Early transition | Target the lowest-scoring dimensions |
| 1.5–2.0 | Developing | Reserve forward-deployed execution for the highest-value opportunities |
| 2.0–2.5 | Proficient | Scale and refine |
| 2.5–3.0 | Mature | Compounding advantage; focus on network effects |

Minimum FDRI by deal-size band is in `canon.md`. Below the minimum, the machine recommends capability investment or re-scoping the pursuit.

## Dimension 3: Velocity (0–3)

The mean of the six indicators in canon's Velocity table, each scored 0–3: meeting the threshold scores 2; the right-hand value scores 3; below threshold scores 1; a stalled indicator (no movement in 5 business days) scores 0. The Velocity Profile (`deal-velocity.md`) supplies the inputs.

| Velocity | Reading | Action |
| --- | --- | --- |
| 0.0–1.0 | Stalled | Diagnose: wait state (eliminate) or genuine uncertainty (respect) |
| 1.0–1.5 | Slow | Name the primary drag; apply one intervention |
| 1.5–2.0 | Normal | Monitor for emerging wait states |
| 2.0–2.5 | Fast | Confirm the buyer experiences speed as competence |
| 2.5–3.0 | Exceptional | Verify organizational alignment; one Sponsor driving urgency is fragile |

## Composite

Formula, rounding (two decimals, half up), tier boundaries and the Movement Floor are defined in `canon.md` and applied verbatim:

```
Composite = 0.4 × (Movement/9) + 0.35 × (FDRI/3) + 0.25 × (Velocity/3)
```

**Missing data.** A dimension without data is excluded from its mean, not zeroed. Fewer than four scored FDRI dimensions makes FDRI `INFERRED [low]`, and the Score Card says so.

**Movement Floor.** Keyed on the Familiarity sub-score: Familiarity 0–1 caps the tier at 4; Familiarity 2 caps at 3; Familiarity 3 is uncapped. The floor enforces compress-don't-skip at the math level: an organization with high FDRI and high Velocity can produce a Tier 2 composite against an account that has not earned direct outreach, and the doctrine says that account resists Value-stage action regardless of seller capability. No Value-stage artifact is produced for an account with Familiarity below 2.

### Worked example

Account: Awareness 3 / Familiarity 1 / Value 2. FDRI 2.6 (six dimensions scored). Velocity 2.4 (six indicators scored).

```
Movement   = 3 + 1 + 2 = 6
0.4  × (6 / 9)    = 0.4  × 0.6667 = 0.2667
0.35 × (2.6 / 3)  = 0.35 × 0.8667 = 0.3033
0.25 × (2.4 / 3)  = 0.25 × 0.8000 = 0.2000
Composite         = 0.7700 → 0.77 (two decimals, half up)
```

Uncapped tier: **Tier 2** (0.60–0.79, advance with named next action). Familiarity sub-score is 1, so the floor caps at **Tier 4** (return to Familiarity work). The Score Card records Tier 4 with the cap stated.

Why: the buyer has active need (Value 2) and the seller is capable and moving fast, but the buyer would not take this seller's call. Pursuing now produces a competitive evaluation the seller enters as a stranger. The composite reads "advance"; the floor reads the Familiarity gap and routes to Familiarity work — the 90-day plan in `movements.md`, compressible to 30.

## Risk patterns

| Pattern | Reading | Action |
| --- | --- | --- |
| High Movement + Low FDRI | Buyer ready, seller not; a winnable deal at risk | Surge resources; request convergence support |
| High FDRI + Low Movement | Seller ready, buyer not; over-investment | Scale back; shift to Familiarity actions |
| High Movement + Low Velocity | Wait states, inertia, or a hidden objection | Map wait states; check for a Sponsor problem |
| Declining Velocity, stable Movement | Sponsor dark, priority shift, budget freeze, competitive disruption | Reach the Sponsor; expand to other stakeholders; prepare for regression |
| High Velocity + Low Familiarity | Moving fast without trust; collapses under late scrutiny | Slow down; invest in the relationship |
| High Movement + Low FDRI + High Velocity | Seller capability lags a deal moving on buyer momentum; speed is masking a readiness gap | Floor and FDRI minimum both apply; close the lowest FDRI dimension before the next phase |

**Regression.** Sponsor stops responding; decision-maker change; budget freeze or pivot; competitive loss at a reference account; restructuring of the committee. On detection the machine re-scores immediately; Value actions stop when the account has regressed.

## Prioritization

1. Tier 1 deals get first claim on resources; no request is denied without VP-level justification.
2. Tier 2 deals with a named score-improvement path get investment; the machine names the action that moves the deal to Tier 1.
3. Tier 3 deals get time-bounded investment; no improvement in 30 days triggers reclassification.
4. Tier 4 and 5 deals get automated nurture; seller time is preserved.

Portfolio ranges [design target]: Tier 1 at 15–25% of pipeline (under 10% is uncommittable; over 35% suggests over-rating); Tier 5 under 20%; average Movement 4.5–6.5; average Velocity 1.5–2.5; FDRI clustered 1.5–2.5.

## Forecast integration

| Tier | Forecast category | Expected close rate [design target] |
| --- | --- | --- |
| 1 | Commit | 70–85% |
| 2 | Best case | 40–60% |
| 3 | Pipeline | 15–30% |
| 4 | Upside | 5–15% |
| 5 | Long-term | under 5% |

The ledger tracks actual close rate per tier and recalibrates quarterly. If Tier 1 closes at 50% rather than 70–85%, the scoring criteria are too lenient.

## Refresh cadence

New deal: full scoring. Material signal: re-score Movement and Velocity. Weekly: Velocity refresh on Tier 1–2. Monthly: full re-score on all active opportunities. Pre-forecast: full re-score plus diagnostics on commit and best-case. Regression signal: immediate full re-score.

## Gates

The protocol gate: floor applied, missing-data rule applied, rounding stated. Before any score enters a forecast or prioritization decision, the machine also checks:

1. **Evidence** — every sub-score cites observable evidence; none rests on seller optimism.
2. **Freshness** — evidence older than 30 days is flagged for refresh.
3. **Consistency** — the three dimensions tell a coherent story; high Movement with zero Velocity is investigated.
4. **Calibration** — the score is compared against similar closed and lost deals.
5. **Honesty** — the seller would assign the same scores if the deal were not theirs; external evidence checks seller-assigned scores.

## Score Card

```
SCORE CARD — <account>                         Date: YYYY-MM-DD
Movement:   A<n>/F<n>/V<n> = <sum>/9   (diagnosis dated …)
FDRI:       <x.x> over <k>/6 dimensions   [INFERRED low if k < 4]
Velocity:   <x.x> over <k>/6 indicators
Composite:  0.4×(<sum>/9) + 0.35×(<FDRI>/3) + 0.25×(<Vel>/3) = <x.xxxx> → <x.xx> (half up)
Tier:       uncapped <n> · floor (Familiarity <f>) <cap or none> · recorded <n>
Risk patterns: …
Next action: …
```
