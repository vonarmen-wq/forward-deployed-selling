Synthetic example. Companies, people, figures and sources are invented to illustrate the protocol; they are not data.

# Coaching Record — Cardinal Health Plans
Targeting: ICP Regional health insurers, claims-analytics buyers (qualified 2026-09-30) · Movement: A3/F2/V2 · Protocol: coaching-protocol.md · Gate: 3/3 · Output Standards: 5/5

Generated 2026-11-03 for the account's seller. Demonstrates `capabilities/coaching-protocol.md`: the five sections, the three-axis diagnosis, a sequenced recovery plan with protocol references, and the Score Card the diagnosis was read from. This record is delivered to the seller. It contains no content addressed to the prospect; scripts and outreach copy are produced by `/fds:thesis` and `/fds:frame` under their own gates.

---

## Deal facts

| Item | Value | Label |
| --- | --- | --- |
| Account | Cardinal Health Plans, regional payer, 2.4M covered lives | KNOWN [https://www.cardinalhealthplans.example/about/fast-facts] |
| Deal size | $2.1M annual contract value, Enterprise band | KNOWN [https://crm.sellerco.example/opportunities/CHP-0412] |
| Days in pipeline | 94 | KNOWN [https://crm.sellerco.example/opportunities/CHP-0412#timeline] |
| Days since last prospect response | 23 | KNOWN [https://crm.sellerco.example/opportunities/CHP-0412#timeline] |
| Stakeholders engaged | Priya Raman, VP Claims Analytics (Sponsor); Tom Alder, Director of Analytics Engineering (User) | KNOWN [https://crm.sellerco.example/opportunities/CHP-0412#contacts] |
| Buyer, Enabler | Not engaged. CFO and CISO identified, no contact | KNOWN [https://crm.sellerco.example/opportunities/CHP-0412#contacts] |
| Coaching lookback | Last 5 interactions span 41 days, so all 5 are read (canon: 5 interactions or 30 days, whichever is more) | per canon |
| Seller's stated goal | Signed order by 2027-01-31 | KNOWN [https://crm.sellerco.example/deal-reviews/CHP-0412-2026-11-02] |

Interaction log, lookback window:

1. 2026-09-23, demo to Raman and Alder; Raman: "this is what we have been describing internally" (KNOWN [https://crm.sellerco.example/opportunities/CHP-0412/notes/2026-09-23]).
2. 2026-09-30, Alder sends three technical questions on claims-file ingestion; answered same day.
3. 2026-10-09, Raman asks for a security summary; sent 2026-10-10.
4. 2026-10-24, seller follow-up email; no reply.
5. 2026-10-31, seller follow-up email; no reply.

---

## Score Card (input to the diagnosis)

Per `references/scoring.md` and canon. Movement scored on the buyer's side; FDRI on the seller's; Velocity on the deal.

**Movement.** Awareness 3 (four YES: content consumption, event attendance, connection accepted, brand interaction). Familiarity 2 (two YES: Raman takes calls; seller sent the Q2 payer benchmark unasked. Two NO: no personal engagement with seller content; "helpful" descriptor unverified. Tie rule: 2). Value 2 (two YES: active need named on the demo; FY2027 analytics budget disclosed in the Q3 investor update KNOWN [https://investors.cardinalhealthplans.example/q3-2026-update]. Two NO: Buyer not accessible; proof-of-value willingness unconfirmed). Movement score 3 + 2 + 2 = 7.

**FDRI.** Intelligence Infrastructure 1; Value Demonstration 2; AI Augmentation 1; Skills and Training 2; Culture and Incentives no data; Measurement and Learning 1. Mean of five scored dimensions = (1 + 2 + 1 + 2 + 1) ÷ 5 = 1.40. Five of six scored, so FDRI is not flagged low-confidence. Enterprise minimum is 2.0; FDRI is 0.60 below minimum.

**Velocity.** Active-to-elapsed ratio 1 (seven active days of 94, 7%); open wait states 1 (two open: Buyer approval path unnamed, security review unassigned); internal response time 2 (seller side under 48 h on both prospect questions); parallel coverage 1 (one downstream workstream of four started: security summary; no business case, no reference architecture, no procurement pre-work); phase transition 0 (demo-to-next-phase at 41 days against a 5-day threshold); velocity multiplier no data. Mean of five = (1 + 1 + 2 + 1 + 0) ÷ 5 = 1.00.

**Composite.** 0.4 × (7 ÷ 9) + 0.35 × (1.40 ÷ 3) + 0.25 × (1.00 ÷ 3) = 0.3111 + 0.1633 + 0.0833 = 0.5578 → 0.56, rounded half up to two decimals. Tier 3. Movement Floor: Familiarity 2 caps at Tier 3; the cap does not change the tier here but it does bind on the next action: a pilot proposal or business case is not produced until Familiarity reaches 3.

**Risk pattern.** High Movement, Low Velocity (per `references/scoring.md`): the deal should be progressing and is not; wait states or a hidden objection.

---

## 1. Executive Summary

This deal has stalled in a Sponsor-silence wait state on a buying committee that was never populated. The seller has one Sponsor and one User, no Buyer, no Enabler, and two follow-up emails as the only activity in 23 days. The Sponsor's enthusiasm on 2026-09-23 was read as Value readiness; the Score Card reads it as Familiarity 2, Value 2, with the Buyer unreached. The structural failure is stakeholder coverage. The velocity collapse is downstream of it. The deal is recoverable, but the seller's 2027-01-31 goal requires the Buyer to be in the conversation by the first week of December.

## 2. The Diagnosis

### Axis 1 — Movement mismatch: partial

Signals: Familiarity 2 of 3; the seller requested next-step scheduling in both October emails. A next-step ask is a Value-stage action; Familiarity at 2 permits a value provocation and a Bridge artifact and forbids a meeting ask (canon, Movements table). The last two interactions violated the permitted-actions list for the diagnosed movement. Mismatch is partial, not primary: the account is close to Familiarity 3 and one unasked value delivery would likely reach it.

### Axis 2 — Stakeholder pattern failure: primary

Signals: two of four functions engaged after 94 days. The Buyer (CFO, who signs analytics spend above $1M per the Q3 investor update) has never been contacted. The Enabler (CISO) received a security summary via the Sponsor and has no direct line. The Sponsor carries the entire internal case alone, and per `references/stakeholder-profiles.md` a Sponsor without Buyer access is advocating in rooms the seller cannot see. The 23-day silence has three candidate causes and the seller cannot distinguish between them because there is no second contact to ask:

- INFERRED [pattern: single-Sponsor silence after demo, n=11 ledger records] [medium] Consensus bottleneck: the Sponsor hit Buyer or Enabler resistance and has not surfaced it.
- INFERRED [same pattern] [low] Competitive evaluation running in parallel.
- INFERRED [Q3 investor update: "disciplined administrative spend"] [low] Budget reprioritization inside the FY2027 analytics line.

### Axis 3 — Velocity collapse: secondary

Signals: active-to-elapsed 7% against a 40% threshold; two open wait states with no owner; phase transition 41 days against 5. Wait-state categories per `references/deal-velocity.md`: Champion silence (Sponsor) and Approval queue (Buyer path unnamed). The seller's own internal response time is within SLA; the collapse is on the prospect side and on the parallel-coverage side, where three of four downstream workstreams never started.

## 3. Why This Happened

The seller made two structural choices that were reasonable on 2026-09-23 and wrong by 2026-10-09.

The first was to treat the Sponsor's demo reaction as the deal's movement diagnosis. The reaction was real. It was also one person's. Value readiness is scored on budget, access and proof-of-value willingness, and only budget was verifiable. The seller did not re-diagnose after the demo, so the next two actions were shaped for a movement the account had not reached.

The second was sequential execution. The security summary went out on 2026-10-10 and nothing else was built while waiting: no business case fitted to the Q3 disclosures, no reference architecture for the claims-file ingestion Alder asked about, no Enabler pre-work. When the Sponsor went quiet, there was nothing in motion that did not depend on her.

Neither choice was careless. Both are what single-threaded selling produces by default, and the FDRI reading (Intelligence Infrastructure 1, Measurement 1) says the seller's organization has not yet built the habits that catch it.

## 4. Recovery Plan

Sequenced to the seller's goal. Each step names the action, the protocol, the expected signal and the decision point.

**Step 1. Re-diagnose and reset the permitted actions.** By 2026-11-05. Run `/fds:diagnose` on the account with the Score Card above as input; record A3/F2/V2 on the deal. Protocol: `references/movements.md`. Expected signal: the seller stops sending meeting asks. Decision point: none; this step is unconditional.

**Step 2. Build the Buyer profile and the Enabler profile.** By 2026-11-07. Run `/fds:profile` for the CFO (Buyer) and the CISO (Enabler) from the Q3 investor update, the FY2025 statutory filing KNOWN [https://investors.cardinalhealthplans.example/annual-statement-2025] and the CISO's conference talk KNOWN [https://events.payersecurityforum.example/2026/sessions/cardinal]. Protocol: `references/stakeholder-profiles.md`. Expected signal: an Incentive/Constraint frame for each that the Sponsor can be asked to confirm. Decision point: if the CFO's authority threshold turns out to sit above $2.1M with the CEO, re-run the profile for the CEO.

**Step 3. Reach Familiarity 3 with the Sponsor through unasked value, not follow-up.** By 2026-11-12. Run `/fds:thesis` for the account with the Buyer as the Value-at-Stake audience, and send the Sponsor the resulting Bridge artifact (a payer-specific claims-leakage comparison against named payers: Tidewater Mutual Health, Great Basin Health Plan and Larkspur Benefits, each with a cited annual statement). Protocol: `references/thesis-protocol.md`; peer sourcing per `capabilities/value-proposition-framing.md`. Expected signal: a reply inside the computed window (W for Enterprise × Healthcare × VP × Email × Normal = 5 × 2.0 × 2.0 × 1.2 × 1.0 × 1.0 = 24 business days, capped by T_next_signal of 38 days to the Q4 investor update; W = 24). Decision point: silence at W triggers a signal diff, not a nudge; a second silent window marks the account dormant.

**Step 4. Open the Buyer line directly, in parallel with Step 3.** By 2026-11-14. Run `/fds:frame` for the CFO and deliver a value provocation built on the CFO's own administrative-ratio commitment from the Q3 update. Protocol: `capabilities/value-proposition-framing.md`, 6/6 including FUD. Expected signal: CFO reply or a forwarded introduction from the Sponsor within W. Decision point: if the Sponsor objects to direct Buyer contact, that objection is itself the consensus-bottleneck signal from Axis 2 and the seller asks her what the Buyer needs to see.

**Step 5. Start the three missing workstreams now.** By 2026-11-21, regardless of replies. Business case fitted to the Q3 disclosures; reference architecture for claims-file ingestion answering Alder's three questions in document form; Enabler pre-work (security questionnaire pre-populated from the CISO's stated controls). Protocol: `references/deal-velocity.md`, parallel workstream architecture. Expected signal: parallel coverage moves from 1 to 3 of 4 (velocity indicator from 1 to 3). Decision point: the business case is not sent until Familiarity reaches 3 (Movement Floor).

**Step 6. Convergence request.** By 2026-11-21. Run `/fds:converge` to bring a solutions architect in for Step 5's reference architecture and a customer-success lead from a comparable payer deployment for the Buyer conversation. Protocol: `capabilities/agent-convergence-protocol.md`. Expected signal: named owners with dates. Decision point: if no architect is available within a week, the reference architecture ships as an annotated diagram from the seller.

**Step 7. Honesty checkpoint.** 2026-12-05. If the Buyer is not in the conversation by this date, the 2027-01-31 goal is not reachable on this account's velocity, and the seller says so to their manager. Run `/fds:disqualify` to test the five trigger categories. Protocol: `capabilities/disqualification-protocol.md`. Expected signal: either a Buyer conversation on the calendar or a documented decision to re-scope the goal to Q2 2027. Decision point: two dormant windows after Step 3 trigger disqualification review automatically.

"When not to accelerate" test (`references/deal-velocity.md`): the account is at Familiarity 2; Value-stage velocity is not applied until it reaches 3. Steps 3 and 4 are Familiarity work. Steps 5 and 6 are internal and do not touch the prospect.

## 5. Quality Gate Status

Coaching gates (`capabilities/coaching-protocol.md`):

1. **Specificity.** Pass. The diagnosis names one primary axis (Stakeholder), two secondary; every step has a date, a protocol and a decision point.
2. **Honesty.** Pass. Step 7 states that the seller's January goal fails if the Buyer is not reached by 2026-12-05.
3. **Pride Test.** Pass. The seller's manager reads a structural diagnosis without blame and a plan the seller can start today.

Zero prospect-facing content: confirmed. No message copy, no scripts, no language addressed to anyone at Cardinal appears in this record.

Output Standards: Specificity pass; Evidence pass (Score Card and log cited); Friction pass (Step 1 is a single command); Velocity pass (Steps 5–6 start without waiting on the prospect); Pride pass. 5/5.

Ledger line:

```
2026-11-03 | Cardinal Health Plans | coaching | 3/2/2 | 3 | 8/8 | n/a | n/a | 
```
