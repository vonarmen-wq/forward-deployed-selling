<!--
EXAMPLE — reference implementation for the FDS skill.

Demonstrates: `references/scoring.md` (Composite Opportunity Score across
Movement, FDRI, and Velocity dimensions; tier assignment; Movement Floor
applied where Movement Score gates pursuit investment).

Status: design-target example. Score values and tier assignments illustrate
the protocol's logic pre-charter-cohort field calibration. See
`KNOWN_ISSUES.md` for the upgrade path to field-measured data.

Do not modify this file. If the scoring protocol's weights or tier
boundaries change, regenerate this example to match.
-->

# Pipeline Opportunity Scoring
## Forward Deployed Selling Framework Analysis

**Analysis Date:** April 13, 2026

---

## Opportunity 1: Marriott International — $4.5M

### Movement Score: 8/9

**Awareness (3/3):** Complete. Multiple stakeholder engagement across departments (CTO, VP Digital, Director of Loyalty). Active exploration demonstrated through completed benchmark analysis.

**Familiarity (3/3):** Complete. Three stakeholders engaged over time indicates sustained relationship building. Willingness to complete joint analysis demonstrates trust and investment of internal resources.

**Value Readiness (2/3):** Active need evidenced by competitive evaluation underway and budget approval for Q2. Strong champion present. Primary constraint: unclear if all stakeholders are equally convinced or if value proposition is fully aligned across the buying committee.

**Movement Composite: 8/9 — Active Opportunity**

---

### FDRI Score: 1.5/3.0

**1. Intelligence Infrastructure (1/3):** Surface-level. Benchmark analysis conducted with Marriott suggests some capability, but no evidence of deeper intelligence infrastructure: stakeholder context stacking, competitive position analysis from Marriott's earnings/filings, or multi-layer thesis work.

**2. Value Demonstration Capability (2/3):** Moderate. Benchmark analysis is strong evidence but not yet proof-of-value. Benchmark uses proxy data. No indication of POV built with Marriott's actual operational data or working prototype of the solution in their environment.

**3. AI Augmentation (1/3):** Not evident. Benchmark analysis may have been manual. No signals of AI-driven research synthesis, stakeholder intelligence automation, or real-time signal monitoring.

**4. Skills and Training (2/3):** Moderate capability shown. Three-stakeholder engagement suggests thesis development and multi-level selling skills are present. However, scope of the champion's influence and organizational alignment strategy not clearly articulated.

**5. Culture and Incentives (1.5/3):** Unclear. Seller brought this opportunity forward, suggesting outcome focus. However, insufficient data on whether resource allocation, internal cross-functional support, and deal prioritization are forward-deployed aligned.

**6. Measurement and Learning (1/3):** No evidence of systematic learning capture from prior competitive situations or benchmark analysis methodologies.

**FDRI Composite: 1.5/3.0 — Early Transition**

**Assessment:** For a $4.5M enterprise deal, minimum FDRI should be 2.0. Current organizational capability is one constraint dimension away (likely Value Demonstration or AI Augmentation) from being fully ready. Dealable, but with execution risk.

---

### Velocity Score: 2.5/3.0

**Cycle Time vs. Benchmark (3/3):** 60 days in pipeline is on-pace for enterprise deal (90-120 day benchmarks). Good velocity signal.

**Active-to-Elapsed Ratio (2.5/3.0):** Multiple stakeholder meetings + benchmark analysis suggests >40% activity ratio. Strong.

**Wait States (2/3):** One identified: no follow-up meetings scheduled post-benchmark. Deal has momentum but lacks clarity on next phase trigger. Sales process not clearly defined with prospect.

**Phase Progression (3/3):** Discovery largely complete. Benchmark positions deal for transition to detailed solution and business case. Movement is advancing.

**Stakeholder Engagement Trend (3/3):** Expanding. Three active stakeholders across departments. Good sign.

**Parallel Workstream Coverage (1.5/3.0):** Weak signal. Only benchmark analysis visible. No evidence of: business case modeling, reference architecture development, legal/procurement prep, or competing vendor evaluation being pre-empted. Significant opportunity to compress remaining 60 days through parallel work.

**Velocity Composite: 2.5/3.0 — Fast**

---

### Opportunity Score

```
(8/9 × 0.40) + (1.5/3.0 × 0.30) + (2.5/3.0 × 0.30)
= 0.356 + 0.150 + 0.250
= 0.756
```

**Composite Score: 0.76/1.0 — Tier 2 (Invest)**

**Forecast Category:** Best Case | **Expected Close Rate:** 40-60%

---

### Health Diagnostics

**Risk Pattern Identified:** High Movement + Low FDRI + High Velocity

This is a classic "buyer ready, seller capability gap" scenario. Marriott is moving fast with genuine intent (Movement 8). Your team has momentum but lacks the intelligence infrastructure and demonstration capability to execute at enterprise scale. Competitive threat is real — Salesforce is active.

**Specific Risks:**
1. **Competitive vulnerability:** Without deeper stakeholder intelligence and a Marriott-specific POV on Loyalty/Digital transformation, Salesforce gains advantage in late evaluation.
2. **Execution friction:** FDRI gap means internal delays likely in solution design, business case refinement, legal review.
3. **Multi-stakeholder alignment:** Three stakeholders doesn't guarantee consensus. Without explicit convergence planning, risk of consensus collapse late in cycle.

---

## Opportunity 2: FedEx — $1.8M

### Movement Score: 3/9

**Awareness (2/3):** Partial. One successful demo 4 months ago indicates awareness triggered. However, silence since then suggests awareness is passive, not active.

**Familiarity (1/3):** Minimal. One demo interaction does not equal Familiarity. Director of Analytics is not yet actively engaged — "circle back after reorg" is stall language. No evidence of value delivery between now and last contact. Seller presence is dormant from buyer's perspective.

**Value Readiness (0/3):** No active need signals visible. "We'll circle back after reorg" indicates:
   - Budget likely frozen pending reorg completion
   - No executive sponsorship yet
   - No competitive pressure (acknowledged as absent)
   - No urgency
   - Timeline indefinite

**Movement Composite: 3/9 — Early Pipeline**

**Critical Assessment:** Deal is in Awareness stage, not Familiarity or Value. Seller treated it as further progressed than the evidence supports. The 120 days in pipeline metric is misleading — this deal has stalled, not progressed.

---

### FDRI Score: 0.8/3.0

**1. Intelligence Infrastructure (0.5/3):** Minimal. Single stakeholder mapped. No indication of broader FedEx organization intelligence, reorg details, post-reorg decision structure, or competitive landscape beyond "no known pressure."

**2. Value Demonstration Capability (0.5/3):** Limited. First demo was offered; no evidence of custom POV, proof-of-value, or differentiated positioning. Generic demo capability only.

**3. AI Augmentation (0/3):** Not evident. No signal of AI-driven research, automated monitoring of FedEx reorg signals, or stakeholder intelligence updates.

**4. Skills and Training (1.5/3):** Mixed. Seller conducted demo, suggesting basic product fluency. However, lack of follow-up strategy and failure to recognize deal as stalled suggests limited forward-deployed sales discipline.

**5. Culture and Incentives (1/3):** Unclear. Deal remains in pipeline despite dormancy — possible indicator of activity-based rather than outcome-based metrics.

**6. Measurement and Learning (0.5/3):** No evidence of post-demo learning captured, reorg tracking, or systematic wait-state diagnosis.

**FDRI Composite: 0.8/3.0 — Traditional Selling**

**Assessment:** Organization is operating in traditional sales mode on this deal. Minimum FDRI for $1.8M mid-market should be 1.5. Major capability gap.

---

### Velocity Score: 0.5/3.0

**Cycle Time vs. Benchmark (1/3):** 120 days elapsed with zero forward momentum = stalled. Should be in solution/business case phase by now; instead still in early Familiarity.

**Active-to-Elapsed Ratio (0/3):** One demo + silence = <10% activity ratio. Highly dormant.

**Wait States (0/3):** Multiple undiagnosed wait states: "circle back after reorg" creates indefinite wait with no trigger date, no owner, no commitment.

**Phase Progression (0/3):** Zero progression. Deal has regressed from initial opportunity to stalled contact.

**Stakeholder Engagement Trend (0/3):** Narrowing to zero. Single stakeholder, not responding.

**Parallel Workstream Coverage (0/3):** No downstream work initiated. No business case, no solution draft, no competitive positioning.

**Velocity Composite: 0.5/3.0 — Stalled**

---

### Opportunity Score

```
(3/9 × 0.40) + (0.8/3.0 × 0.30) + (0.5/3.0 × 0.30)
= 0.133 + 0.080 + 0.050
= 0.263
```

**Composite Score: 0.26/1.0 — Tier 4 (Watch)**

**Forecast Category:** Upside | **Expected Close Rate:** 5-15%

---

### Health Diagnostics

**Deal Status:** Dormant, Not Stalled

This is not a deal in the pipeline. This is a contact name in CRM. The 120-day clock has created a false sense of progress.

**Regression Pattern:** Moving slow without visible forward movement OR undiagnosed wait states.
- Demo occurred 4 months ago
- No follow-up meetings scheduled
- No trigger for next action
- No organizational alignment on FedEx post-reorg structure
- No contingency stakeholder identified

**Recommended Action:** Reclassify from pipeline to nurture. Do not invest pursuit resources. Activate this account only when:
1. FedEx reorg completion announced
2. You have intelligence on new decision structure
3. Competitive pressure signals emerge (monitor for Salesforce, Tableau, or other BI tools in FedEx announcements)

For the next 60 days: Set up automated monitoring (no cost, high value). Track FedEx press releases for reorg completion and new leadership in analytics/supply chain. Pre-build reference architectures for post-reorg FedEx scenarios so response time is compressed when they become relevant.

---

## Opportunity 3: Kroger — $800K

### Movement Score: 5/9

**Awareness (3/3):** Complete and active. Inbound inquiry demonstrates Kroger actively exploring the problem space. They consumed content (blog post) and self-identified as having relevant need.

**Familiarity (1/3):** Minimal. Single discovery call. No evidence of Kroger experiencing value delivery yet. One conversation is not Familiarity. Relationship is nascent.

**Value Readiness (1/3):** Latent need visible. VP of Supply Chain has clear pain (inventory waste) but:
   - No budget discussed yet (critical gap)
   - No timeline established
   - Only one stakeholder engaged (procurement, finance not yet included)
   - No competitive evaluation underway

**Movement Composite: 5/9 — Mid-Pipeline**

**Critical Assessment:** This is a high-potential opportunity with one material constraint: moving from Familiarity to Value without first establishing budget conversation. Risk of investing in deep proof-of-value when buyer cannot fund it.

---

### FDRI Score: 1.2/3.0

**1. Intelligence Infrastructure (1/3):** Basic. One stakeholder name and department known. No evidence of: Kroger supply chain challenges from filings/analyst reports, competitive positioning vs. other retailers, current technology stack, or organizational decision structure post-discovery.

**2. Value Demonstration Capability (1/3):** Limited. Discovery call completed but no POV initiated. No inventory waste-specific use case built. Capability exists but not yet deployed at scale on this opportunity.

**3. AI Augmentation (0.5/3):** Minimal. Single discovery call conducted, likely manually. No evidence of AI-driven: Kroger supply chain research, competitive analysis automation, or stakeholder profiling.

**4. Skills and Training (1.5/3):** Adequate. Discovery call conducted professionally enough to identify clear pain. However, no evident follow-up strategy or value demonstration motion.

**5. Culture and Incentives (1.5/3):** Mixed signal. Inbound qualification suggests responsiveness. However, gap between discovery and next action suggests unclear deal progression.

**6. Measurement and Learning (0.5/3):** No evidence of systematic learning from inbound inquiry channel or pre-built playbooks for supply chain/inventory use cases.

**FDRI Composite: 1.2/3.0 — Early Transition**

**Assessment:** For $800K standard to mid-market, minimum FDRI is 1.0. You are barely above minimum. Capability adequate for deal size but limited margin for error.

---

### Velocity Score: 1.5/3.0

**Cycle Time vs. Benchmark (2/3):** 30 days is early-stage pace. Appropriate for deal at this maturity. However, zero follow-up meetings scheduled indicates risk of cycle extension.

**Active-to-Elapsed Ratio (1.5/3):** One discovery call + silence = ~20% activity. Need immediate follow-up.

**Wait States (2/3):** One identified: no demo scheduled. Sales process not defined with Kroger. "What's next?" unclear from both sides.

**Phase Progression (1/3):** Still in early discovery. No advancement to solution or business case phase.

**Stakeholder Engagement Trend (2/3):** Stable but narrow. Single stakeholder. No evidence of expansion to procurement, finance, or operations stakeholders.

**Parallel Workstream Coverage (1/3):** Minimal. Should have: reference architecture for retail supply chain drafted, inventory waste ROI model built, competitive scan of Kroger's likely alternatives started. None evident.

**Velocity Composite: 1.5/3.0 — Slow**

---

### Opportunity Score

```
(5/9 × 0.40) + (1.2/3.0 × 0.30) + (1.5/3.0 × 0.30)
= 0.222 + 0.120 + 0.150
= 0.492
```

**Composite Score: 0.49/1.0 — Tier 3 (Develop)**

**Forecast Category:** Pipeline | **Expected Close Rate:** 15-30%

---

### Health Diagnostics

**Opportunity Pattern:** High Movement (inbound signal) + Low FDRI + Low Velocity

Kroger is genuinely interested but your organization is under-executing against the opportunity. This is a "buyer ready, seller not prepared" scenario — but recoverable in 2-3 weeks.

**Specific Risks:**
1. **Momentum loss:** Inbound interest decays if follow-up is slow. VP of Supply Chain has competing priorities. Days matter.
2. **Budget discovery gap:** Must confirm budget availability before investing heavy on POV. If no budget until Q3, proof-of-value this month has high risk.
3. **Competitive timing:** Inventory waste is a visible problem. Kroger may be evaluating multiple solutions (likely Salesforce Analytics, SAP Integrated Analytics, or Nonstop Intelligence). First to demonstrate wins.

---

## Portfolio Summary

| Opportunity | Size | Movement | FDRI | Velocity | Score | Tier | Status |
|---|---|---|---|---|---|---|---|
| Marriott | $4.5M | 8/9 | 1.5 | 2.5 | 0.76 | **Tier 2** | Invest |
| FedEx | $1.8M | 3/9 | 0.8 | 0.5 | 0.26 | Tier 4 | Watch |
| Kroger | $800K | 5/9 | 1.2 | 1.5 | 0.49 | **Tier 3** | Develop |

**Total Pipeline Value:** $7.1M | **Tier 1-2 Value:** $4.5M (63%)

---

## Recommended Time Allocation This Week

### PRIORITY 1: MARRIOTT (50% of team time)

**Mission:** Compress from Tier 2 to Tier 1 by closing FDRI capability gaps.

**Specific Actions:**

1. **Surge intelligence infrastructure (4-6 hours)**
   - Map full Marriott buying committee beyond the three known stakeholders
   - Pull Marriott FY2025 earnings call transcript — focus on digital transformation and customer experience budget
   - Research competitive position: Marriott vs. IHG vs. Choice Hotels on loyalty platform maturity
   - Identify secondary stakeholders: CMO or Chief Digital Officer who may outrank VP Digital
   - Build explicit Context Stack for each of the three stakeholders: decision style, budget control, success metrics, peer relationships
   
   *Output:* Stakeholder map + 1-page Marriott-specific competitive thesis

2. **De-risk the benchmark with working prototype (8-12 hours)**
   - Design a working prototype or interactive mockup showing Marriott's actual loyalty data transformed through your solution
   - Use the benchmark data they already share + public Marriott metrics to make it tangible
   - Present as "here's what this looks like in your environment"
   
   *Output:* Interactive POV or functioning prototype (not a deck)

3. **Orchestrate champion expansion (ongoing, 2-3 hours)**
   - Schedule explicit "alignment across the three" meeting with CTO, VP Digital, and Director of Loyalty
   - Objective: surface any divergent success metrics or organizational pressure
   - Identify single economic buyer (who controls budget, who has CEO's ear)
   - Assign explicit next phase owner from Marriott
   
   *Output:* Decision-maker clarity + post-benchmark decision framework

4. **Pre-build solution and business case (6-8 hours, parallel track)**
   - Solution architecture team drafts reference implementation using Marriott's technology stack
   - Finance team models ROI using: customer lifetime value impact from improved loyalty, operational costs from real-time data, and competitive risk from Salesforce adoption
   - Both should be in "working draft" state ready to refine once prototype feedback lands
   
   *Output:* Solution draft + ROI model (both ready for refinement within 48 hours of prototype feedback)

**Success Metric:** Move FDRI from 1.5 → 2.0+ (enable full execution capability). Move Velocity from 2.5 → 2.8+ (eliminate wait states post-benchmark).

**Target:** Close-ready position within 2 weeks. Close within 45 days from today (target Q2 close before budget resets).

---

### PRIORITY 2: KROGER (30% of team time)

**Mission:** Accelerate into solution phase within 48 hours. Confirm budget before investing further.

**Specific Actions:**

1. **Emergency budget discovery (1-2 hours immediately)**
   - Reach out to VP of Supply Chain within 24 hours
   - Single message: acknowledge pain point, offer next step (technical workshop to scope the opportunity), ask: "If we could show measurable impact on inventory waste within 4 weeks, would you have budget to move forward in Q2?" 
   - Listen for: budget confirmation, approval timeline, procurement process, or push to Q3
   
   *Output:* Budget decision gate cleared or opportunity re-scoped to nurture track

2. **If budget confirmed: accelerate solution design (6-8 hours)**
   - Pull Kroger's FY2025 earnings (if public) and analyst reports on Kroger supply chain
   - Build retail-specific reference architecture for inventory optimization
   - Design 2-week proof-of-value using proxy data (if Kroger won't share real data yet) showing inventory waste reduction impact
   - Prepare technical team for discovery workshop
   
   *Output:* POV proposal + detailed tech discovery agenda

3. **Expand stakeholder footprint (ongoing)**
   - Ask VP of Supply Chain: who else should be in the room? (Procurement, Finance, Ops?)
   - Schedule workshop with 3-4 participants, not just one
   - This meeting is not a pitch — it's a "let's validate the problem and scope the solution" session
   
   *Output:* Expanded stakeholder engagement + clear decision framework

4. **If budget NOT confirmed: shift to nurture (minimal time)**
   - Set up automated monitoring for Kroger supply chain announcements
   - Schedule light touchbase in Q3 (automated)
   - No further resource investment until Q3 budget conversation is possible
   
   *Output:* Nurture sequence + monitoring

**Success Metric:** If budget cleared → Move to Tier 2 (Invest) status within 1 week. If budget unconfirmed → Reclassify to Tier 5 (Nurture) and reallocate time.

**Target:** Budget decision gate within 48 hours. POV-ready within 1 week if budget confirmed.

---

### PRIORITY 3: FEDEX (0% of active pursuit time this week)

**Mission:** Move to systematic nurture. Establish reorg monitoring.

**Specific Actions:**

1. **Reclassify to Tier 4 (Watch) — remove from pursuit pipeline**
   - Update CRM: FedEx flagged as "Waiting for decision-maker availability post-reorg"
   - Do not schedule follow-up calls with Director of Analytics until reorg is publicly announced complete

2. **Activate automated monitoring (1 hour setup, then passive)**
   - Set monitoring rule: any FedEx press release, leadership announcement, or supply chain news triggers an alert
   - Watch for: reorg completion announcement, new Chief Supply Chain Officer hired, new analytics team leadership
   - Pre-brief: when reorg signals fire, sales team will have 48 hours to request introduction to new decision-maker
   
   *Output:* Monitoring setup + pre-reorg research file

3. **Pre-build reorg response package (2-3 hours, one time)**
   - Create "FedEx post-reorg opportunity brief" documenting:
     - Likely supply chain priorities post-consolidation
     - Analytics and visibility requirements
     - Competitive landscape they'll evaluate
     - First-mover advantage if engaged within 30 days of new leadership
   - Store as reference for when reorg signals fire
   
   *Output:* Pre-built response file + decision framework

**Success Metric:** Zero active seller time spent. Monitoring operational. Ready to mobilize within 48 hours of reorg trigger.

**Target:** Reorg completes ~Q3. At that point, if signals align, can fast-track through proposal within 60 days.

---

## Summary Forecast Impact

**Current State:**
- Tier 1-2 Value: $4.5M
- Expected Close Rate (Tier 2): 50% average
- Implied Revenue: ~$2.25M

**Target State (after actions above):**
- Marriott: Move to Tier 1 (0.76 → 0.85+) — Close rate 70-85%, Implied: $3.15-3.83M
- Kroger: If budget confirmed, move to Tier 2 (0.49 → 0.65) — Close rate 50%, Implied: $0.40M
- FedEx: Monitor only (no change to forecast)

**Adjusted Forecast (post-execution):**
- Marriott: $3.5M (high confidence Tier 1)
- Kroger: $0.40M (if budget confirmed, best case)
- FedEx: $0M this quarter (monitor for Q3)
- **Total: $3.9M+ with concentrated focus**

This represents a 73% increase in forecast value by the simple reallocation of time from FedEx (0% near-term probability) to Marriott acceleration and Kroger qualification gate.

---

## Implementation this Week

**Monday-Tuesday (Marriott Surge):**
- Intelligence: research, earnings calls, competitive analysis (6 hours)
- Prototype: scope and begin building interactive mockup (6 hours)
- Meeting scheduling: stakeholder alignment call (2 hours)

**Wednesday (Kroger Budget Gate):**
- Budget discovery outreach (1-2 hours)
- Parallel: Reference architecture draft if budget likely (4 hours)

**Thursday-Friday (Build & Parallel Work):**
- Marriott: complete prototype, draft solution architecture, build ROI model (10-12 hours total team)
- FedEx: monitoring setup and pre-build response file (3 hours one-time)
- Kroger: complete discovery workshop prep IF budget confirmed (4-6 hours)

**Time Allocation:**
- Marriott: 12-14 hours (50% of team)
- Kroger: 6-8 hours (30% of team)
- FedEx: 3 hours one-time (10% of team)
- Contingency: 2-3 hours

**Total:** ~25-30 hours invested in pipeline acceleration this week.

**Expected Outcome:** Marriott ready for close discussion by end of April. Kroger positioned for POV within 2 weeks. FedEx on passive monitor until Q3.
