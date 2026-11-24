Synthetic example. Companies, people, figures and sources are invented to illustrate the protocol; they are not data.

# Evidence Table and Thesis — Halvard Logistics Software (private)
Targeting: ICP Mid-market B2B SaaS, revenue operations (qualified 2026-11-03) · Account type: private · Movement: A3/F2/V1 · Protocol: thesis-protocol.md · Gate: 5/5 · Output Standards: 5/5 · Window: 14 business days

Generated 2026-11-24. Demonstrates the private-account path end to end: the public/private decision, the private source ladder in `agents/account-researcher.md`, named inference methods, the triangulation rule, the private stop rule in `canon.md`, and a thesis whose Signal and Hypothesis rest only on `KNOWN` rows and medium-or-better `INFERRED` rows. The seller is Lattice Revenue Systems (`examples/icp-definition.md`). Read it before researching any account that does not file with the SEC.

---

## Step 0: account type

No SEC CIK; no 10-K or 20-F in the last 18 months; a Form D on file. **Account type: private.** The private ladder and the private stop rule apply.

---

## Evidence Table — Halvard Logistics Software — 2026-11-24

Account type: private (basis: Form D 2025-06-11, no 10-K)

| Category | Label | Source / Method | Finding | Confidence |
| --- | --- | --- | --- | --- |
| Financial signal | KNOWN | https://sec.gov/Archives/edgar/data/0001999999/formd-2025-06.example | Series C, $64M, closed 2025-06-11; 17 months ago | — |
| Financial signal | KNOWN | https://meridiangrowth.example/portfolio/halvard | Lead investor's portfolio page: "crossed $100M ARR in 2025" | — |
| Strategic intent | KNOWN | https://revops-radio.example/episodes/212-halvard-cro | CRO Tomas Lindqvist, 2026-10-02: "we are rebuilding the forecast from the ground up this year; the board no longer accepts a number we cannot explain" | — |
| Strategic intent | KNOWN | https://halvard.example/careers | Six open roles in revenue operations and sales systems, posted 2026-09-04 to 2026-10-28; requirements name Salesforce and Outreach | — |
| Execution signal | KNOWN | https://halvard.example/customers | Two enterprise logos present in the March snapshot are absent in November | — |
| Execution signal | KNOWN | https://g2.example/products/halvard/reviews | 212 reviews; 54 in the last six months | — |
| Organizational | INFERRED | hiring pattern; agrees with executive move | Building a revenue-operations function from scratch: 6 roles in one function in 55 days, under a CRO appointed 2026-08 | high |
| Financial | INFERRED | headcount proxy; agrees with funding cadence | Revenue band $110M–$160M: 540 employees × $200K–$300K per employee (peers: Corvid Systems, Aldera, Pinecrest FY25 10-Ks); consistent with the investor's ">$100M ARR" | medium |
| Pain | INFERRED | review corpus | Forecast accuracy and pipeline visibility are the top complaint theme in 19 of the last 50 reviews | medium |
| Systems | INFERRED | stack footprint | Runs Salesforce and Outreach; no conversation-intelligence or forecasting tool named anywhere on the careers page, docs or integrations page | medium |
| Timing | INFERRED | funding cadence | Series C at 17 months against an 18–24-month cycle: a raise or an efficiency push is likely within two quarters | medium |
| Positioning | INFERRED | site diff | Enterprise tier added to the pricing page between the March and November snapshots (https://web.archive.org/web/20260312/halvard.example/pricing, https://web.archive.org/web/20261118/halvard.example/pricing) | medium |
| Financial | INFERRED | hiring velocity | 41 open roles vs 18 in the November 2025 snapshot; about 30% annualized headcount growth. Shares an input with headcount proxy; not counted toward its confidence | low |

Research log: 14 pages fetched; 2 skipped as Red Light (individual profiles).
Stop rule: met (6 KNOWN rows across 4 source types from tiers 1–4; Strategic Intent in the CRO's own words; three INFERRED rows at medium or better by triangulation).
Next signal event: 2026-12-10, the company's user conference (agenda published; CRO keynote listed).

### How the triangulation rule was applied

- The revenue band started low (headcount proxy). Funding cadence is an independent method (Form D, not the careers page) and lands in the same band for a company seventeen months past its Series C (KNOWN [https://sec.gov/Archives/edgar/data/0001999999/formd-2025-06.example]); the row rises to medium. The investor's ">$100M ARR" is a `KNOWN` fact consistent with the band; it does not raise confidence further because a floor is not a band.
- The RevOps initiative started medium (hiring pattern). Executive move is independent (press release, not the careers page) and agrees; the row rises to high.
- Hiring velocity stays low because its only independent corroboration would be a second careers-page read, which shares the input.

---

## Thesis components

**Situation.** Halvard crossed $100M ARR in 2025 (KNOWN [https://meridiangrowth.example/portfolio/halvard]) on a $64M Series C (KNOWN [https://sec.gov/Archives/edgar/data/0001999999/formd-2025-06.example]) and added an enterprise tier this year while two enterprise logos left the customers page (INFERRED [site diff] [medium]). A CRO appointed in August said on a podcast in October that the forecast is being rebuilt because the board "no longer accepts a number we cannot explain."

**Priority.** A forecast the board will accept, before the next raise or the efficiency conversation that an 18–24-month funding cycle puts within two quarters.

**Gap.** Six revenue-operations roles open in 55 days (KNOWN [https://halvard.example/careers]) say the function is being built from people, not yet from tooling: the stack is Salesforce and Outreach with no forecasting or conversation-intelligence layer named anywhere public. Hiring a team before the data layer exists is the sequence the ICP's review corpus complains about most.

**Value at stake.** `value_at_stake`: 1.8 points of forecast accuracy in the first two quarters, INFERRED [peer benchmark: Corvid Systems FY25 10-K, forecast-accuracy disclosure at the same ARR, adjusted for mid-market mix] [medium]. The revenue band itself is medium and appears here as context only; no low row carries a figure in this section.

**Bridge.** A forecast-accuracy benchmark built from Halvard's own public review corpus and the three named peers, delivered as a two-page comparison, no meeting required.

## Provocation

Subject: The number your board will accept

Tomas, your October conversation on RevOps Radio described a forecast rebuilt from the ground up. The six revenue-operations roles you have opened since September say the team is coming before the data layer; the public stack is Salesforce and Outreach with nothing between them and the board slide.

Companies at your stage that put the data layer first closed the forecast gap by 1.8 points in two quarters, on the disclosure of a public peer at the same ARR. I have built that comparison for Halvard from public sources and three named peers. It is two pages. It asks nothing of you but a read.

## Limitations

Lattice Pipeline reads CRM activity and call data; it does not replace the planning model a board-grade forecast also needs. If Halvard's rebuild is a planning-model problem first, the benchmark will say so and the fit is weaker.

## Response window

W = min(max(5, 5 × 1.0 (mid-market) × 1.0 (software) × 1.3 (C-level) × 1.0 (email) × 1.1 (Q4)), T_next_signal = 11) = 11 → rounded within the band to 14 business days [design target]; next signal event is the user conference on 2026-12-10.

## Prediction

response_pct 22 [design target] · meeting_pct 9 · close_pct 3

## Ledger line

2026-11-24 | Halvard Logistics Software | private | thesis v1 | A3/F2/V1 | W=14 | predicted 22/9/3 | sources: 6 KNOWN, 7 INFERRED (3 medium+, 1 high, 1 low unused)
