---
name: thesis-protocol
consumes: [ICP Record, Stakeholder Profile, Movement Diagnosis, Evidence Table]
emits: Thesis
gate: 5/5 thesis gates + 5/5 Output Standards
---

# Thesis Generation Protocol

Prerequisites: `canon.md` (Evidence labels, Deal-size bands, Response window, Movement Floor); a Movement Diagnosis with Familiarity ≥ 2; Stakeholder Profiles for the addressed stakeholders; `examples/thesis-example.md` as the reference implementation.

A thesis is a point of view about a prospect's situation — not a pitch, not a needs assessment, not a discovery question list. It is an informed hypothesis about what the prospect should do and why, supported by evidence the prospect can verify. Coming with a thesis replaces discovery: the machine does not ask the customer to educate it; it invites the customer to react to its analysis.

## When to generate

An account enters the pipeline; a material signal fires on an existing account (leadership change, earnings miss, competitive threat, regulatory development); a seller requests meeting preparation; the machine identifies a dormant opportunity worth activating.

## Data acquisition

### Source priority

| Priority | Source | Query for | Produces |
| --- | --- | --- | --- |
| 1 | Most recent earnings call transcript | Stated priorities, named challenges, capital-allocation language, named competitors, turnover commentary | Direct quotes from leadership; the most defensible Hypothesis anchors |
| 2 | Most recent 10-K / 10-Q | Risk factors, MD&A, segment performance, capital structure | Structural constraints feeding the Constraint column of profiles |
| 3 | Press releases, trailing 6 months | Launches, partnerships, appointments, M&A | Where the buyer is investing |
| 4 | Job postings, trailing 90 days | Title patterns, function and geographic concentration | Organizational investment not yet in earnings commentary |
| 5 | Persona public statements | Decision pattern, style, stated commitments | Incentive and decision-pattern signals for `stakeholder-profiles.md` |
| 6 | Analyst coverage | Positioning, competitive set, peer comparables | Peer set for the dual-frame value proposition |
| 7 | Competitor public moves, trailing 6 months | Transcripts, releases, comparable strategies | Frame 1 evidence for `capabilities/value-proposition-framing.md` |

Minimum viable set: priorities 1, 2 and 6. The others add depth where the Hypothesis needs triangulation. Query patterns: `[company] earnings call transcript Q[N] [year]`; `[company] 10-K risk factors`; `[executive name] [conference] keynote`; `[company] Forrester Wave / Gartner Magic Quadrant [year]`.

### Stop rule

Stop research when the evidence table holds ≥ 3 KNOWN rows with URLs across ≥ 2 source types and at least one Strategic Intent row. If 90 minutes of research yields fewer, return the account to Awareness and record why. A named peer for the cost-of-inaction frame strengthens the artifact materially; without one, Frame 1 weakens and the thesis says so.

### Research log

The research log is the only citable set. Every `KNOWN` claim cites its URL from the log. The retained log makes thesis revision operational (compare new data against the original sources rather than re-research), supports the Pride Test (every source can be named if the prospect asks), and feeds the ledger.

## Thesis structure

### 1. Signal

The observable event or pattern that triggered the analysis. Specific and verifiable.

Bad: "The company is experiencing challenges."
Good: "In the Q3 earnings call the CFO cited 15% unplanned equipment downtime as the primary drag on margin. Three reliability-engineer postings appeared last week."

### 2. Hypothesis

What the signal implies about the prospect's situation, priorities or unrecognized opportunity.

Bad: "They probably need our product."
Good: "The downtime stems from the data-integration gap created by the 2022 acquisition. Three ERP systems generate conflicting maintenance schedules. A unified data layer would compress unplanned downtime from 15% to roughly 5%, releasing an estimated $47M annually."

### 3. Evidence

Every row carries exactly one label in canon's form:

```
KNOWN [https://…/Q3-transcript] 15% unplanned downtime
KNOWN [https://…/10-K] Apex acquisition completed Q2 2022
INFERRED [peer benchmark, n=6] Maintenance cost $47M ±10% [medium]
INFERRED [comparable implementations] Unified data layer reduces downtime to 5% [high]
```

### 4. Value at stake

Quantified in the prospect's own terms, following the dual frame in `capabilities/value-proposition-framing.md` (cost of inaction + value of action, both sourced). Conservative estimates build credibility; show the math.

Recipe by deal-size band (`canon.md`):

- **Strategic and Enterprise.** Anchor on revenue growth, operating margin, EBITDA, working capital, cycle time, share. Model in the buyer's named compensation metrics where known (CFO: operating margin and earnings consistency; Chief Revenue Officer: revenue growth and gross margin; COO: throughput). Present base case plus downside case; a single aggressive point fails the Pride Test against a CFO who models for committee.
- **Mid-market.** Anchor on revenue per customer, conversion, churn, time-to-value, support cost. INFERRED against industry benchmarks is acceptable where company-level KNOWN is unavailable; discount aggressive benchmarks 20%. One primary metric, one or two secondary.
- **SMB.** Anchor on hours reclaimed, errors avoided, payback in months, at the operator's wage rate. Single metric, single math step, short thesis.
- **B2C buyers (marketing/growth teams).** Anchor on LTV, CAC, conversion at segment level; one segment per thesis.

When no recipe fits (B2B2C, marketplaces, regulated industries), the agent surfaces the modeling decision rather than forcing a match.

### 5. Bridge

The natural next step if the prospect finds the analysis credible. A strong Bridge references a specific public document the prospect can verify; is bounded — names a deliverable already built or quickly producible; is useful even if the prospect never responds; and is frictionless to accept — no meeting ask, no data demand, a one-line reply at most.

Bad: "Would you have 15 minutes to discuss this further?"
Good: "The underlying model and the peer disclosures cited above are available as a working spreadsheet, already drafted. Reply 'send model' and I'll send it. No call required."

## Response window

At delivery the agent computes W per `canon.md` (segment × industry × seniority × channel × season multipliers, floored at 5 business days, capped at the next scheduled signal event), rounds to the nearest whole day, and writes it on the Thesis record. Silence at W triggers a signal diff, never a nudge; the escalation sequence is in canon.

## Value provocation

The delivery vehicle for a thesis: one page, sixty seconds to consume, one specific insight, unrecyclable to any other prospect, no product pitch, no demo request, no meeting ask.

1. **Hook** (1–2 sentences): the signal in the prospect's own words or context.
2. **Insight** (2–3 sentences): the hypothesis with quantified value at stake.
3. **Evidence summary** (2–3 sentences): how the conclusion was reached; transparent about method.
4. **Bridge** (1 sentence).

Performance targets, all [design target] and never presented to prospects as observed results: response rate 23%; meeting conversion 12%; opportunity conversion 8%; average deal size 2.4× inbound; roughly 24 hours of machine time per 12 conversations.

## Refresh cadence

New account: immediately. Active opportunity: before every customer-facing meeting. Dormant account: when a material signal fires. Strategic account: monthly regardless of signals.

## Gates

Five thesis gates, plus the five Output Standards counted separately. The gate result is surfaced with every delivery.

1. **Verifiability** — the prospect can independently verify each Signal and KNOWN claim.
2. **Labeling** — every number carries a canon-form label; a KNOWN without a URL in the evidence table is a Red Light violation and the thesis does not ship.
3. **Conservatism** — the value quantification is conservative; if aggressive, reduce by 20% and note the adjustment.
4. **Information content** — the prospect learns something they did not already know.
5. **Pride Test** — if the prospect knew exactly how this was built, they would respect the work.

Labeling is non-negotiable. A failure on any other gate is surfaced with the failing check named; shipping anyway is a Doctrinal Bypass per `canon.md`, confirmed and logged.

## Thesis template

```
Targeting: ICP <name> · Movement: A<n>/F<n>/V<n> · Protocol: thesis-protocol.md · Gate: <n>/5 · Output Standards: <n>/5 · Window: <W> business days

Account / stakeholder:  <company> — <name, title, function>
Date:                   YYYY-MM-DD

1. Signal       …
2. Hypothesis   …
3. Evidence     KNOWN [url] … / INFERRED [method] … [confidence]  (one row per claim)
4. Value at stake   Cost of inaction: … | Value of action: … | Math: …
5. Bridge       …

Research log:   <urls fetched, source type each>
Window math:    5 × <seg> × <ind> × <sen> × <ch> × <season> = <x>; T_next_signal = <y>; W = <W>
```
