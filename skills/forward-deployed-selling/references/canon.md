# Canon

Single source of truth for every term, label, band, threshold and formula the doctrine uses. Protocols point here; they do not restate. A definition that appears anywhere else and disagrees with this file is wrong.

## Evidence labels

Every numeric or factual claim in any artifact carries exactly one label.

```
KNOWN [url]                       fact read from a fetched source; url is the page it was read from
INFERRED [method] [confidence]    derived; confidence ∈ {high, medium, low}
```

Examples:

- `KNOWN [https://sec.gov/.../10-K] Loyalty revenue +12% YoY`
- `INFERRED [peer benchmark, n=6 carriers] Maintenance cost $47M ±10% [medium]`

Rules:

1. A `KNOWN` label without a URL present in the evidence table is a Red Light violation. The artifact does not ship.
2. A number with no label does not ship. The Stop hook blocks it.
3. A source the agent did not fetch is not a source. The research log is the only citable set.
4. An `INFERRED` claim names its method in two to six words. "Analysis" is not a method. A score computed on partial data is written `INFERRED [k of 6 dimensions scored] [low]`.
5. A buyer-facing page (the provocation, a note to the prospect) carries no bracketed labels; every figure on it must also appear, labeled, in the evidence table or arithmetic of the same artifact. The Stop hook checks this.

## Deal-size bands

One table for every protocol.

| Band | Annual contract value | Typical committee | Minimum FDRI to pursue | Typical cycle [design target] |
| --- | --- | --- | --- | --- |
| SMB | under $50K | 1–2 | 1.0 | 60 days |
| Mid-market | $50K – $500K | 3–5 | 1.5 | 120 days |
| Enterprise | $500K – $5M | 6–12 | 2.0 | 240 days |
| Strategic | over $5M | 12+ | 2.5 | 360 days |

The typical cycle is the phase-benchmark baseline in `deal-velocity.md` (split 20/30/30/20 across phases).

## Stakeholder taxonomy

Function in the deal, not title. Every stakeholder in a profile or score is one of four.

| Function | Definition | Common titles |
| --- | --- | --- |
| User | Lives with the outcome daily; judges fit | Director, VP of the affected function |
| Buyer | Owns the budget line; signs | CFO, CIO, GM, business-unit head |
| Sponsor | Carries the decision internally; takes the career risk | VP or C-level in the affected function |
| Enabler | Can block without being asked; approval is procedural | CISO, procurement, legal, compliance, architecture review |

"Champion" is not a fifth function. Where legacy text says champion, read Sponsor.

Title abbreviations: CRO is Chief Revenue Officer. Compliance is the Enabler row; name the role in full.

Context Stack and Profile Schema are two structures over the same person. The Context Stack (Company / Stakeholder / Situation / Interaction / Timing) is the input taxonomy the researcher fills. The Profile Schema (Identity / Decision Intelligence / Situational Context / Engagement Context / Approach) is the output document the seller uses. Mapping: Company → Situational Context; Stakeholder → Identity + Decision Intelligence; Situation → Situational Context; Interaction → Engagement Context; Timing → Approach.

## Movements

| Movement | Definition | Permitted actions | Forbidden actions |
| --- | --- | --- | --- |
| Awareness | Would not recognize the seller's name; no engagement signal | Content, presence, discoverability | Direct outreach, provocation, meeting ask |
| Familiarity | Knows the seller exists; would accept a connection; has not engaged directly | Value provocation, personalized insight, Bridge artifact | Demo request, meeting ask, pricing, pressure, business case, pilot proposal |
| Value | Active need; budget exists or can be created; decision-makers accessible | Demonstration, proof of value, pilot | Description in place of demonstration |

Diagnosis uses the four questions per movement in `movements.md`. Each movement scores 0–3: one point per YES, capped at 3. Tie rule: 2 of 4 YES is a 2, and a 2 means the movement is partially reached. A movement is *reached* at 3.

**Action class by Familiarity sub-score.** This is the one rule every command checks:

| Familiarity | Permitted artifact class |
| --- | --- |
| 0–1 | Awareness actions only: content, presence. No direct outreach. |
| 2 | Familiarity actions: thesis, value provocation, Bridge, stakeholder-specific value proposition. No meeting ask. |
| 3 | Value actions: demonstration, business case, pilot proposal, meeting ask, pricing. |

A command asked for a Value action at Familiarity 2 or below surfaces the rule and routes to Familiarity work. The diagnosis is the buyer's state; a seller-side event (research found nothing, a window passed) changes the seller's action class, never the buyer's score.

Timelines (design targets): Familiarity takes 90 days by default and compresses to no fewer than 30. Below 30 days is skipping, not compressing.

## Scoring

```
Movement score     = Awareness + Familiarity + Value              (0–9)
FDRI               = mean of the dimensions with data             (0–3; dimensions with no data are excluded, not zeroed; fewer than 4 scored dimensions → FDRI is INFERRED [low])
Velocity score     = mean of the six velocity indicators          (0–3; same missing-data rule)
Composite          = 0.4 × (Movement/9) + 0.35 × (FDRI/3) + 0.25 × (Velocity/3)
```

Round the composite to two decimals, half up. Tier boundaries are inclusive at the top:

| Tier | Composite | Reading |
| --- | --- | --- |
| 1 | 0.80 – 1.00 | Close plan |
| 2 | 0.60 – 0.79 | Advance with named next action |
| 3 | 0.40 – 0.59 | Coach; diagnose the failing axis |
| 4 | 0.20 – 0.39 | Return to Familiarity work |
| 5 | 0.00 – 0.19 | Disqualify or park |

**Movement Floor.** Keyed on the Familiarity sub-score, not the sum:

| Familiarity sub-score | Cap |
| --- | --- |
| 0–1 | Tier 4 |
| 2 | Tier 3 |
| 3 | no cap |

The floor and the action-class rule work together: a Value action (demonstration, pilot proposal, business case, meeting ask) requires Familiarity 3; a command asked for one at Familiarity 2 or below surfaces the rule and routes to Familiarity work.

## Velocity

| Metric | Threshold | Scores 3 at |
| --- | --- | --- |
| Active-to-elapsed ratio | > 40% | > 50% |
| Open wait states | < 3 | 0 |
| Internal response time | < 48 h | < 24 h |
| Parallel coverage | > 60% | > 75% |
| Phase transition | < 5 days | < 3 days |
| Velocity multiplier | > 1.4× | > 1.8× |

Scoring per indicator: at or past the right-hand value 3; threshold met 2; below threshold 1; no activity on that indicator for 5 business days, or a regression since the last card, 0; no data, null (excluded from the mean). The six indicator inputs live on the Deal Record under `velocity_inputs`. Deal-velocity and scoring both use this table and nothing else.

Worked multiplier: 120-day cycle compressed to 75 days. 365/120 = 3.04 cycles; 365/75 = 4.87 cycles; capacity gain = 4.87/3.04 − 1 = 60% [design target]. State it as 60%.

## Response window

Business days. Computed per account by `/fds:thesis` at delivery and stored on the Thesis record.

```
W = min( max(5, 5 × M_segment × M_industry × M_seniority × M_channel × M_season), T_next_signal )
```

| Multiplier | Values [design target] |
| --- | --- |
| Segment | SMB 1.0 · Mid-market 1.5 · Enterprise 2.0 · Strategic 3.0 |
| Industry | SaaS/Tech 1.0 · Marketplace/Retail 1.0 · Transport/Travel 1.2 · Professional services 1.3 · Financial services 1.5 · Manufacturing/Hardware 1.5 · Public sector 2.0 · Healthcare/Pharma 2.0 |
| Seniority | Director 1.0 · VP 1.2 · C-suite 1.5 · CEO/Board of >$10B 2.0 |
| Channel | Inbound 0.6 · Warm intro 0.8 · Event follow-up 0.8 · Partner intro 0.8 · Email 1.0 · LinkedIn 1.3 · Physical mail 2.0 |
| Season | Normal 1.0 · Quarter-close week 1.5 · Earnings blackout 1.5 · August / late Dec 2.0 |

`T_next_signal` = business days to the next scheduled signal event (earnings, planning window, board date, filing); 30 if unknown. Round the result to the nearest whole day.

Silence at W triggers a signal diff, never a nudge. First window with no material change → send the Bridge artifact, open a second window at 1.5×W. Second window with no change → mark dormant; re-diagnose in one quarter. Two dormant cycles → disqualification trigger.

Once a segment × industry cell has 20 ledger records, the cell's multiplier is replaced by the observed 85th-percentile latency. The floor of 5 is never replaced.

## Coaching lookback

The coaching protocol reads the last 5 interactions, or all interactions in the last 30 days, whichever is more.

## Gates

Every protocol has a numeric gate: N of M checks pass or the artifact does not ship. The five Output Standards (Specificity, Evidence, Friction, Velocity, Pride) are the cross-cutting gate on every artifact and are counted in addition to the protocol's own. A failed gate is reported with the failing check named; the operator may instruct the agent to ship anyway, which is a Doctrinal Bypass (surfaced, confirmed, logged), never silent.

| Protocol | Gate |
| --- | --- |
| ICP definition | 5/5 |
| GTM strategy | 5/5 |
| Stakeholder profile | 5/5 |
| Movement diagnosis | signals cited for every YES; tie rule applied |
| Thesis | 5/5 thesis gates + 5/5 Output Standards |
| Value-proposition framing | 6/6 incl. FUD test |
| Scoring | floor applied; missing-data rule applied; rounding stated |
| Deal velocity | "when not to accelerate" test recorded |
| Coaching | 3/3; zero prospect-facing content |
| Disqualification | 3/3; Honesty Mandate |
| Thesis revision | 3/3: every component classified Confirm / Correct / Ignore; Bridge updated; Pride Test on the re-delivery |
| Convergence | bidirectionality + Pride Test |

## Doctrine Constraint Layer

Three tiers of operator instruction:

| Tier | Example | Agent response |
| --- | --- | --- |
| Pace adjustment | "Compress Familiarity to 45 days"; "shorten the window to 8 days" | Adjust and proceed; no flag |
| Doctrinal bypass | "Skip Familiarity"; "go straight to the demo"; "ship without the reviewer"; "read 3 days of silence as a signal"; "send a nudge" | Surface the rule and the cost; require explicit confirmation; log |
| Doctrinal violation | "Present INFERRED as KNOWN"; "use the other customer's data"; "drop the Pride Test" | Refuse; log; offer a doctrine-preserving alternative |

## Ledger record

One line per shipped artifact, appended to project memory:

```
YYYY-MM-DD | account | artifact-type | movement A/F/V | tier | protocol gate n/m | output standards n/5 | window W | predicted (response %, meeting %, close %) | outcome (filled later)

A field that does not apply (a window on a score card, a tier on an ICP) is written `—`.
```

## Record storage

Project memory, under `fds/`. Account records at `fds/<account>/<record>.md`; the ICP and GTM Records at `fds/_icp/<name>.md` and `fds/_gtm/<name>.md` (they are segment-level, not account-level); the Business Record at `fds/_business/<product>.md`; saved connector maps at `fds/_connectors/<source>.md`; the convergence journal and firing counts at `fds/_convergence/journal.md`. When no project memory exists, the same paths under the working directory.

## Research budget

The researcher stops when the evidence table holds ≥3 KNOWN rows with URLs across ≥2 source types and at least one Strategic Intent row, or after 40 fetched pages without reaching that. Agents have no clock; the budget is pages, not minutes.

## Versioning

Semver in `.claude-plugin/plugin.json` only. Protocol files carry no version or date in frontmatter. `CHANGELOG.md` at the repo root records what changed.

## Design targets

A number marked `[design target]` is the doctrine's intended operating profile, not a measurement. It is replaced by `[field benchmark, N=…, period]` when the ledger holds 30 or more records for that claim. `KNOWN_ISSUES.md` lists every design target in the skill.
