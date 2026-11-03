Synthetic example. Companies, people, figures and sources are invented to illustrate the protocol; they are not data.

# Thesis Record — Meridian Air
Targeting: ICP Enterprise airlines, customer-data buyers (qualified 2026-10-20) · Movement: A3/F2/V1 · Protocol: thesis-protocol.md · Gate: 5/5 · Output Standards: 5/5 · Window: 15 business days

Generated 2026-11-03. Demonstrates `references/thesis-protocol.md` end to end: the five components, the evidence table with canon labels, the value provocation, the Bridge, the response window arithmetic and the ledger line. Read it before generating a thesis. The thesis replaces discovery: the seller arrives with a position the prospect can react to, and does not ask the prospect to explain their own business.

---

## Movement diagnosis (input)

Per `references/movements.md`, four questions per movement, one point per YES, capped at 3.

| Movement | YES count | Score | Signals cited |
| --- | --- | --- | --- |
| Awareness | 4 of 4 | 3 | Two Meridian employees follow the seller's company page; VP Loyalty Marketing attended the seller's conference session 2026-09-17; brand-search referral from meridianair.example corporate network logged 2026-10-02; connection request to the Director of Customer Analytics accepted 2026-10-09 |
| Familiarity | 2 of 4 | 2 | Director of Customer Analytics replied to one shared industry note (2026-10-14); no value provocation sent yet; no call taken; "helpful" descriptor unverified. Tie rule: 2 of 4 is a 2, partially reached |
| Value | 1 of 4 | 1 | Active need signal fires (see Signal); budget, decision-maker access and proof-of-value willingness are unverified |

Familiarity at 2 permits a value provocation and a Bridge artifact. It forbids a demo request, a meeting ask and pricing. Everything below is shaped to that constraint.

---

## 1. The Signal

Three events in a 45-day window:

- **Q3 2026 earnings call, 2026-10-22.** Loyalty program revenue grew 11% year over year. Ancillary revenue per passenger was flat at $19.40 for the fourth consecutive quarter. The CEO used the phrase "personalized offers" three times and named "a unified view of the customer" as a 2027 priority.
- **Press release, 2026-10-06.** Meridian appointed its first Chief Data Officer, Dana Okafor, reporting to the Chief Commercial Officer. The role did not exist before October.
- **Careers page, trailing 30 days.** Five open roles in customer data engineering, four of them in the Chief Data Officer's new organization.

The pattern is funded intent, not aspiration: a new executive, a hiring plan under her, and a public commitment from the CEO.

## 2. The Hypothesis

Meridian has monetized loyalty engagement without monetizing loyalty data. Eleven percent loyalty growth means the program is working as an acquisition engine. Four flat quarters of ancillary revenue per passenger mean the data that program generates (seat preference, route patterns, upgrade history, meal and bag behavior) is not reaching the systems that price and sequence offers.

The Chief Data Officer hire and the engineering roles under her say leadership sees the gap and intends to close it by building internally. An internal build of a unified customer layer at an airline of Meridian's scale takes nine to twelve months to first production use. A deployed customer data platform takes ten to fourteen weeks to the first personalized offer. The difference is two to three quarters of ancillary revenue at a time when the CEO has put the number in front of investors.

## 3. The Evidence

| Label | Claim |
| --- | --- |
| KNOWN [https://investors.meridianair.example/q3-2026-transcript] | Loyalty revenue +11% YoY; ancillary revenue per passenger $19.40, flat for four quarters; CEO: "personalized offers" (3 mentions), "a unified view of the customer" named as a 2027 priority |
| KNOWN [https://investors.meridianair.example/annual-report-2025] | 96 million passengers carried in FY2025; total revenue $24.1B |
| KNOWN [https://news.meridianair.example/2026-10-06-chief-data-officer] | Dana Okafor appointed Chief Data Officer, reporting to the Chief Commercial Officer; first holder of the role |
| KNOWN [https://careers.meridianair.example/search?team=customer-data] | Five open roles: 2 Senior Data Engineer (Customer Platform), 1 Analytics Engineer (Offer Personalization), 1 Data Architect, 1 Engineering Manager, Customer Data |
| INFERRED [peer disclosure comparison, n=5 carriers] | Carriers that disclose a deployed unified customer-data layer report ancillary revenue per passenger of $23.00 on average (range $21.60–$24.80) [medium] |
| INFERRED [comparable implementation timelines, n=3 carriers] | Internal build of a unified customer layer: 9–12 months to first production use; packaged platform: 10–14 weeks to first personalized offer [medium] |
| INFERRED [ancillary cost structure, published airline cost disclosures] | Contribution margin on incremental ancillary revenue: 70% [medium] |
| INFERRED [signal convergence: hire + postings + CEO language] | The internal-build path is already chosen; the decision open to Meridian is sequencing, not whether [high] |

Research log: four fetched sources above. Nothing outside the log is cited.

## 4. The Value at Stake

Enterprise recipe per `references/thesis-protocol.md`: anchor metric is revenue and contribution; base case plus downside; math shown.

| Step | Base case | Downside | Label |
| --- | --- | --- | --- |
| Peer ancillary per passenger | $23.00 | $23.00 | INFERRED [peer disclosure comparison, n=5] [medium] |
| Meridian ancillary per passenger | $19.40 | $19.40 | KNOWN [https://investors.meridianair.example/q3-2026-transcript] |
| Gap per passenger | $3.60 | $3.60 | arithmetic |
| Annual passengers | 96M | 96M | KNOWN [https://investors.meridianair.example/annual-report-2025] |
| Gap at full parity, annual | $345.6M | $345.6M | arithmetic |
| Year-1 capture of the gap | 40% | 25% | INFERRED [ramp assumption, conservatism gate applied] [medium] |
| Year-1 incremental ancillary revenue | $138.2M | $86.4M | arithmetic |
| Contribution margin | 70% | 70% | INFERRED [ancillary cost structure] [medium] |
| Year-1 incremental contribution | $96.8M | $60.5M | arithmetic |

Full parity is not claimed. The number the provocation carries is the year-1 range, $86M–$138M in revenue, and every other figure in this record agrees with it.

Timing: the internal build reaches first production in Q3 or Q4 2027 at the earliest (INFERRED above). A platform deployed in Q1 2027 produces its first personalized offer by end of Q1. The two to three quarters between those dates are worth $43M–$104M in revenue at the base-case run rate (138.2 ÷ 4 = $34.6M per quarter; 86.4 ÷ 4 = $21.6M per quarter; two to three quarters).

## 5. The Bridge

> The five-carrier ancillary-per-passenger comparison behind this note is a working spreadsheet built from each carrier's published annual report, with the source page cited on every row. It is drafted. Reply "send" and it comes over as a file. No call attached; it is useful for the 2027 planning cycle whether or not we ever speak.

Bridge anatomy check: names a public document class (annual reports); bounded (one spreadsheet, already drafted); useful without a reply; accepted in one word.

---

## Value Provocation

**To:** Dana Okafor, Chief Data Officer (Sponsor per the stakeholder taxonomy; carries the internal decision on the customer-data build)
**Subject:** Meridian's $19.40, and what five other carriers' annual reports say about it

Your Q3 call reported loyalty revenue up 11% and ancillary revenue per passenger flat at $19.40 for the fourth quarter running. Those two numbers moving in different directions is the clearest public signal that the loyalty program is generating customer data the offer engine is not using.

Five carriers that disclose a deployed unified customer-data layer report an average of $23.00 per passenger. At Meridian's 96 million passengers, each dollar of that gap is $96M a year; the full gap is $346M. A conservative first year, capturing a quarter to 40% of it, is $86M–$138M in revenue, around $60M–$97M in contribution.

The method is public: your Q3 transcript and 2025 annual report, the five carriers' annual reports, and published implementation timelines for three carriers that built a customer layer internally versus deploying one. The internal path your new team is staffing for lands in late 2027 on those timelines. The peer figures and the ramp assumption are inferences, labeled as such in the attached note; the $19.40 and the 96 million are yours.

The five-carrier comparison is a working spreadsheet with a source page on every row. Reply "send" and it comes over. No call attached.

Format check: 196 words in the body; one insight (loyalty data not reaching the offer engine); no product named; no demo, meeting or pricing; specific to Meridian and not reusable.

---

## Response window

```
W = min( max(5, 5 × M_segment × M_industry × M_seniority × M_channel × M_season), T_next_signal )

M_segment   = 2.0   Enterprise (ACV $500K–$5M band)
M_industry  = 1.0   Marketplace/Retail: canon has no airline cell; the consumer-transaction
                    cell is the nearest listed value and is used until the ledger fills the cell
M_seniority = 1.5   C-suite
M_channel   = 1.0   Email
M_season    = 1.0   Normal (provocation sent 2026-11-04; earnings blackout ended 2026-10-22)

5 × 2.0 × 1.0 × 1.5 × 1.0 × 1.0 = 15.0
max(5, 15.0) = 15
T_next_signal = 58 business days (Q4 2026 earnings, scheduled 2027-01-27, KNOWN [https://investors.meridianair.example/events])
W = min(15, 58) = 15 business days
```

Window closes 2026-11-25. Silence at W triggers a signal diff, not a nudge. If the diff shows no material change, the Bridge spreadsheet is sent unprompted and a second window opens at 1.5 × 15 = 22.5, rounded to 23 business days. A second silent window marks the account dormant; re-diagnose in one quarter.

Expected rates [design target, per `references/thesis-protocol.md`]: response 23%, meeting conversion 12%, opportunity conversion 8%. Not presented to the prospect; replaced by field benchmarks once the ledger holds 30 records for the Enterprise × Marketplace/Retail cell.

---

## Gate report

Thesis gates (`references/thesis-protocol.md`):

1. **Verifiability.** Pass. Every KNOWN row has a fetched URL the prospect can open; the three INFERRED rows name method and confidence.
2. **Labeling.** Pass. Every number in the record carries a label or is marked arithmetic from labeled inputs.
3. **Conservatism.** Pass. Full parity is shown but not claimed; the headline is the 25–40% year-1 capture; contribution is netted at 70%.
4. **Information content.** Pass. The prospect knows the $19.40 and the 11%; the five-carrier comparison and the build-versus-deploy timing gap are the new material.
5. **Pride Test.** Pass. If Meridian asked how this was built, the answer is four public documents and three labeled inferences.

Output Standards: Specificity pass (not reusable for another carrier); Evidence pass (table above); Friction pass (one-word reply); Velocity pass (the Bridge produces a planning input the Sponsor can use this quarter); Pride pass (as above). 5/5.

Ledger line:

```
2026-11-04 | Meridian Air | thesis + value provocation | 3/2/1 | n/a | 10/10 | 15 | (23%, 8%) | 
```
