Synthetic example. Companies, people, figures and sources are invented to illustrate the protocol; they are not data.

# Value Proposition Record — Halvorsen Logistics, CFO
Targeting: ICP Mid-market logistics operators, post-LBO (qualified 2026-10-20) · Movement: A3/F3/V2 · Protocol: value-proposition-framing.md · Gate: 6/6 · Output Standards: 5/5 · Artifact class: Value Proposition (Familiarity ≥ 2 permits it; produced by `/fds:frame`)

Generated 2026-11-03. Demonstrates `capabilities/value-proposition-framing.md`: both frames, the three Cost-of-Inaction sub-components and the two Value-of-Action sub-components, every number labeled per canon, all six gates including the FUD test. Read it before framing a value proposition for any Buyer.

---

## Inputs

**Account.** Halvorsen Logistics, contract logistics and regional freight, $1.1B revenue, acquired by Brightwater Capital in a leveraged buyout in 2024. Term loan carries a minimum fixed-charge coverage ratio covenant. Refinancing window opens Q4 2027.

**Stakeholder.** Marta Lindqvist, Chief Financial Officer. Function: **Buyer** (owns the budget line above $250K and signs). Enabler overlap: Finance Operations and procurement report to her, so the procedural approvals converge in her chain.

**Seller.** A vendor of an operations platform that reduces cost of revenue in contract logistics through automated load planning and exception handling. The product is not named inside the frames; it enters at the Bridge.

**Movement.** Familiarity reached (3): the CFO has taken two calls, forwarded the seller's Q2 benchmark note to her VP Finance Operations, and introduced the seller to her Controller. Value at 2: active need and budget signal present; proof-of-value willingness and decision-maker access beyond the CFO unverified. This record is a stakeholder-specific value proposition, which canon permits at Familiarity 2 and above. The bounded pilot the Bridge mentions is a Value action and needs Familiarity 3; this account is at 3, so `/fds:frame` may hand off to a pilot proposal without routing back to Familiarity work.

---

## Incentive / Constraint (from the Stakeholder Profile)

**Incentive.**

- KNOWN [https://investors.halvorsenlogistics.example/2026-proxy-statement] Annual bonus weighted 60% on adjusted operating margin against a 14.0% FY2026 target, 40% on free cash flow conversion. Equity vests on a liquidity event (sale or refinancing) on or after Q4 2027.
- KNOWN [https://investors.halvorsenlogistics.example/q3-2026-transcript] CFO on the Q3 call: "Operating discipline is the 2026 priority. We are committed to 14% adjusted operating margin by year end, up from 12.6% in Q3."

**Constraints.**

| Dimension | Constraint | Label |
| --- | --- | --- |
| Monetary | Fixed-charge coverage covenant minimum 1.40×; Q3 2026 actual 1.52× | KNOWN [https://investors.halvorsenlogistics.example/q3-2026-10q#liquidity] |
| Monetary | Capital expenditure above $5M requires lender notice; operating expense is internal authority | KNOWN [https://investors.halvorsenlogistics.example/2024-credit-agreement-8k] |
| Time | Lenders will want four trailing quarters of margin discipline before the Q4 2027 refinancing meeting; a disclosed program must be in place by Q4 2026 and measurable impact must show inside those four trailing quarters | INFERRED [refinancing-process pattern, n=4 comparable LBOs] [medium] |
| Risk | Failed implementations are visible to the audit committee; a 2024 warehouse-management rollout was called out as "implementation challenges" on the Q2 2024 call | KNOWN [https://investors.halvorsenlogistics.example/q2-2024-transcript] |
| Feasibility | Finance stack is a single ERP with a bolted-on data warehouse; integrations outside the ERP's certified connector list are treated as elevated risk | KNOWN [https://engineering.halvorsenlogistics.example/2026-finance-data-platform] |

---

## Frame 1 — Cost of Inaction

### 1a. Direct consequences in the Buyer's own KPIs

- KNOWN [https://investors.halvorsenlogistics.example/q3-2026-10q#md-and-a] Adjusted operating margin 12.6% in Q3 2026, down from 13.9% in Q3 2025. Cost of revenue grew 8.1% year over year against revenue growth of 5.2%.
- INFERRED [trend extrapolation, four quarters of disclosed data] [medium] At the current spread between cost-of-revenue growth and revenue growth, FY2026 adjusted operating margin lands at 12.3%, 1.7 points below the 14.0% public commitment that carries 60% of the CFO's bonus.
- INFERRED [covenant arithmetic from disclosed fixed charges] [medium] A 12.3% margin year end compresses fixed-charge coverage from 1.52× to approximately 1.44×, inside 0.04× of the 1.40× floor. The audit committee's own materiality threshold for covenant headroom disclosure is 0.10× (KNOWN [https://investors.halvorsenlogistics.example/q3-2026-10q#risk-factors]), so the compression becomes a disclosed risk at that point.

### 1b. Peer comparison with named peers and cited public moves

Three mid-market contract-logistics operators under private-equity ownership with covenant disclosures in the trailing four quarters:

- **Corvane Freight Group.** KNOWN [https://investors.corvanefreight.example/q4-2025-transcript] Disclosed 210 basis points of operating-margin expansion over four quarters following an "operations automation program" named by the CFO on the Q4 2025 call.
- **Tellurian Supply Partners.** KNOWN [https://investors.telluriansupply.example/q1-2026-investor-deck#slide-14] Disclosed 170 basis points of margin expansion attributed to load-planning automation, slide 14 of the Q1 2026 investor deck.
- **Pike & Marrow Logistics.** KNOWN [https://investors.pikemarrow.example/8-k-2026-02-11] Filed an 8-K in February 2026 disclosing covenant amendment negotiations after operating margin fell below the fixed-charge coverage threshold. No automation program was disclosed in the preceding four quarters.

Corvane and Tellurian disclosed the automation path the CFO has named. Pike & Marrow filed the covenant amendment that follows four quarters without one.

### 1c. Competitive lag with timeline anchor

- INFERRED [peer disclosures above, Halvorsen Q3 margin] [medium] Corvane and Tellurian report operating margins 190–250 basis points above Halvorsen's current trajectory; the gap widened across the trailing four quarters as Halvorsen's cost of revenue outgrew revenue.
- The timeline is the Buyer's own: the Q4 2027 refinancing meeting, preceded by four quarters of trailing discipline. From November 2026, a program signed inside Q4 2026 shows realized margin from Q2 2027, which gives the lenders two to three quarters of evidence by the meeting; a program signed after Q1 2027 gives them one. The lender calendar supplies the date, so the frame carries no "act now" language.

---

## Frame 2 — Value of Action

### 2a. Improvement anchored in the Buyer's own commitments

- KNOWN [https://investors.halvorsenlogistics.example/q3-2026-transcript] "We are committed to 14% adjusted operating margin by year end."
- KNOWN [https://brightwatercapital.example/letters/2025-h2-portfolio-letter#halvorsen] Brightwater's H2 2025 portfolio letter describes the Halvorsen value-creation thesis as "operating discipline in cost of revenue, carried through the 2027 refinancing."

The action accelerates a strategy the CFO and the owner have both put in writing.

### 2b. Quantified value in the Buyer's own KPIs

| Step | Value | Label |
| --- | --- | --- |
| Peer margin expansion, Corvane | 210 bp over four quarters | KNOWN [https://investors.corvanefreight.example/q4-2025-transcript] |
| Peer margin expansion, Tellurian | 170 bp | KNOWN [https://investors.telluriansupply.example/q1-2026-investor-deck#slide-14] |
| Discount for Halvorsen's heavier labor mix | −30 bp | INFERRED [cost-composition comparison, 10-K segment data] [medium] |
| Modeled expansion for Halvorsen, 12–18 months | 140–180 bp | INFERRED [peer-aligned modeling] [medium] |
| Of which: inside the Q4 2026 trailing window (first quarter after a Q1 2027 go-live is Q2 2027, so the Q4 2026 window carries only the committed program and a signed order, 0 bp of realized margin) | 0 bp realized; program disclosed | INFERRED [implementation lead time, six-week deployment plus one quarter to measurable run-rate] [medium] |
| Of which: quarters 2–6 after go-live (Q2 2027 through Q4 2027 refinancing, then FY2028) | 140–180 bp cumulative, roughly 35–45 bp per quarter | INFERRED [peer ramp shape, Corvane and Tellurian disclosures] [medium] |
| Halvorsen revenue | $1.1B | KNOWN [https://investors.halvorsenlogistics.example/annual-report-2025] |
| Incremental operating income at 140 bp | $15.4M per year (0.014 × $1,100M) | arithmetic |
| Incremental operating income at 180 bp | $19.8M per year (0.018 × $1,100M) | arithmetic |
| Fixed charges, trailing twelve months | $131M | KNOWN [https://investors.halvorsenlogistics.example/q3-2026-10q#fixed-charges] |
| Coverage lift at 140 bp | +0.12× (15.4 ÷ 131) | arithmetic |
| Projected coverage with action, by the Q4 2027 refinancing meeting | 1.44× + 0.12× = 1.56× | arithmetic on INFERRED base |

Read in the CFO's terms, the timing splits in two. Inside the Q4 2026 window, what lands is a signed program the lenders can read in the Q4 10-Q: 0 bp of realized margin, but a disclosed operating-discipline program of the kind Corvane named on its own Q4 2025 call. Over the 12–18 months that follow, the 140–180 bp arrive at roughly 35–45 bp a quarter, so the FY2027 margin exits at 13.7%–14.1% against the 14.0% commitment that carries 60% of her bonus. Coverage moves from a modeled 1.44× to 1.56× by the Q4 2027 refinancing meeting, above where it stands today. The lift funds itself from operating expense, inside her authority, with no lender notice.

---

## Gate report

1. **Sourcing.** Pass. Every peer claim and every number above carries KNOWN with a URL or INFERRED with method and confidence. Nothing presents as fact without provenance.
2. **Anchoring.** Pass. Frame 2 is anchored in the CFO's Q3 commitment and the owner's portfolio letter; neither is paraphrased.
3. **Constraint.** Pass. Operating expense inside the CFO's own authority (Monetary); ERP-certified connector path (Feasibility); a disclosed program inside the Q4 2026 window and realized margin across the four trailing quarters before the Q4 2027 meeting (Time); audit-committee visibility addressed by a bounded pilot in the Bridge (Risk).
4. **Symmetry.** Pass. Three sourced peer moves and one trajectory model in Frame 1; two sourced anchors and one model in Frame 2. Same labeling discipline on both sides.
5. **FUD test.** Pass on all six indicators: peers named with URLs; no unsourced peer behavior; urgency supplied by the lender calendar; buyer-specific anchors with no industry-trend language; both frames present; both frames sourced. The CFO would call this "intelligence about my situation."
6. **Pride Test.** Pass. Public filings, a public portfolio letter, three public peer disclosures, and three labeled inferences. Nothing the CFO would object to having been read.

Output Standards: Specificity pass; Evidence pass; Friction pass (the Bridge below asks for one word); Velocity pass (the pilot scope is the next action, permitted at Familiarity 3); Pride pass. 5/5.

Ledger line (canon shape):

```
2026-11-03 | Halvorsen Logistics | value proposition (CFO) | 3/3/2 | — | protocol gate 6/6 | output standards 5/5 | window — | predicted — | outcome —
```

---

## Bridge (what the framing feeds)

> The 140–180 bp model, fitted to Halvorsen's segment cost composition from the 2025 annual report, is a one-page sheet with every input cited. Reply "send" and it comes over. If your Controller wants to stress the labor-mix discount, the cells are unlocked.

This record is the Value at Stake input to a Thesis Record (`references/thesis-protocol.md`) and the analytical core of an executive brief for the CFO. User, Sponsor and Enabler framings for the same account are separate records; this one is the Buyer's.
