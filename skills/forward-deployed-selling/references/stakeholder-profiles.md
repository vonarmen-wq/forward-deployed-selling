---
name: stakeholder-profiles
consumes: [ICP Record, Context Stack]
emits: Stakeholder Profile
gate: 5/5
---

# Stakeholder Profiling Protocol

Prerequisites: `canon.md` (Stakeholder taxonomy, Evidence labels, Context Stack → Profile Schema mapping); the qualified ICP Record; the account's Context Stack, whose `sources_read` is the research log every `KNOWN` row cites.

A stakeholder profile is not a CRM record. It is a decision-intelligence document that lets the machine generate communication with high information content — communication that reduces the recipient's uncertainty about whether the sender understands their specific situation.

The Context Stack is the input taxonomy the researcher fills; the Profile Schema below is the output document the seller uses; the mapping between them is in `canon.md`. The U/B/S/E taxonomy and the Incentive/Constraint grid defined here are the primary inputs to `capabilities/value-proposition-framing.md`.

## Profile Schema

Five sections, built and maintained for every stakeholder in an active or target account. Every factual claim carries a `KNOWN [url]` or `INFERRED [method] [confidence]` label per `canon.md`.

### Identity

Name, title, tenure in role. Background: career history, previous companies, education — the experiences that shape current priorities (a CFO who survived two failed implementations views risk differently). Professional network: key relationships, board and advisory roles.

### Decision Intelligence

- **Public priorities:** stated in interviews, earnings calls, LinkedIn, conference talks. Quote directly.
- **Inferred priorities:** derived from job postings, budget signals, organizational change, competitive context. Labeled INFERRED with method and confidence.
- **Decides / defers to:** what this person can approve alone, and who they need for the rest. Sourced from spending-authority signals, org announcements and prior deals; labeled.
- **Decision pattern:** data-driven, relationship-oriented, consensus-seeking, fast-moving, risk-averse — inferred from observable behavior.
- **Communication style:** formal/informal, detail/big-picture, direct/diplomatic.
- **Personal triggers:** what creates urgency — competitive announcements, regulatory deadlines, board pressure, peer validation, career advancement.

### Situational Context

What happened recently (leadership change, restructuring, earnings, competitive or regulatory events). What is happening now (active initiatives, pain points, budget cycle, evaluations). What is likely coming (foreseeable challenges, inflection points, market shifts).

### Engagement Context

Interaction history — what was discussed, what resonated, what fell flat. Relationship temperature: warm, neutral, cold, hostile. Content consumption: read, clicked, downloaded, shared. Referral network: who introduced them, whom they can introduce.

### Approach

Lead with (the topic or framing that opens the door). Avoid (what creates resistance). Proof points (which evidence resonates with this person). Timing (when they are most receptive). Seniority class (Director / VP / C-suite / CEO-Board) and channel (warm-intro / email / linkedin / mail), both read by the response-window math in `canon.md`. Artifact: the Familiarity-class artifact this profile supports (thesis, value provocation, Bridge, stakeholder-specific value proposition).

## Function in the deal

The four functions — User, Buyer, Sponsor, Enabler — are defined in `canon.md`. Function, not title: the same person can play more than one (a Sponsor who is also the Buyer is common in mid-market), and different titles play the same function across deals. The machine names each stakeholder's function before constructing communication.

- **User** — success criterion: does their daily work get measurably better? Rarely holds authority to buy; can kill a deal late by reporting the product fails in their workflow. Deals that close on Sponsor enthusiasm alone collapse at implementation.
- **Buyer** — success criterion: do the deal economics fit the budget they own? Cares about terms, payment structure, contract length, exit clauses. Often not the advocate; can block, delay or restructure anything outside their financial frame.
- **Sponsor** — success criterion: do they have the political capital and motivation to push through internal resistance? Sponsor identification is often the first signal that a deal is real.
- **Enabler** — success criterion: does the deal pass their checks without elongating the cycle? Their incentives reward catching problems, not closing. Treating the Enabler as a stakeholder to win rather than a box to clear compresses the late-stage cycle.

### Per-title tendencies

Starting hypotheses only; the profile replaces them with evidence.

| Title | Lead with | Avoid | Decision pattern |
| --- | --- | --- | --- |
| CEO | Market position, differentiation | Implementation detail | Fast; vision before detail |
| CFO | Risk mitigation, conservative projections, proof | Upside-only narratives, vague ROI | Risk-averse; needs numbers |
| CTO | Architecture depth, team augmentation | Anything implying their work is replaced | Methodical; wants depth |
| COO | Operational KPIs, throughput | Strategy and vision language | Metrics or nothing |
| Chief Revenue Officer | Pipeline, growth, gross margin | Activity metrics without revenue link | Outcome-driven |
| Chief Compliance Officer (Enabler) | Audit readiness, regulatory alignment | Anything that adds compliance burden | Conservative; every box checked |

The machine never sends one message to the whole committee.

## Incentive / Constraint grid

For each stakeholder, the machine names how the person is **incentivized** (what they personally win by saying yes) and what **constrains** them across four dimensions. Incentives are specific: "the CFO is compensated on operating-margin expansion and is preparing a refinancing" is operational; "the CFO wants the company to do well" is not.

| Dimension | Incentive (what they win) | Constraint (what they cannot do) |
| --- | --- | --- |
| Monetary | Compensation metrics; budget they are rewarded for protecting or deploying | Budget caps; capex/opex preference; covenant pressure; spending authority; which dollar pool this competes for |
| Time | Milestones they are measured against; planning windows that reward action now | Decision cadence; implementation tolerance; calendar density; speed of internal alignment they can convene |
| Risk | Visible wins they are recognized for; career moves a success qualifies them for | Career risk of visible failure; audit, vendor-concentration or regulatory exposure; reference dependence |
| Feasibility | Capabilities they want their team to have | Technical compatibility; integration debt; change-management capacity; skill prerequisites |

A profile with an empty cell in the Constraint column returns to research before output. Value-proposition framing then names the cost of inaction in terms of the constraint and the value of action in terms of the incentive — which is what makes the proposition read as intelligence rather than pitch. Worked example: `examples/cfo-canonical-example.md`.

## Refresh triggers

- **Immediate (within 24 hours):** role change; company announcement naming them; published interview or talk; LinkedIn activity indicating a priority shift; material company news.
- **Monthly:** check for new public statements; verify role; update interaction history.
- **Pre-engagement:** recent-activity scan; verify current priorities; align talking points to latest context.

## Cultural context

The machine does not infer cultural norms from nationality, ethnicity or any group attribute. When cultural context matters, the human seller supplies it explicitly and the machine incorporates it as Yellow Light input.

## Gates

All five pass or the profile is not used in outreach.

1. **Specificity** — at least one Decision Intelligence item and one Situational Context item that would be false for another holder of the same title.
2. **Source** — every factual claim carries a `KNOWN [url]` present in the evidence table or an `INFERRED` label with method and confidence; zero unlabeled claims.
3. **Impression** — every source is one the stakeholder would consider legitimate if they saw the research log; no scraped private data, no inference from protected attributes.
4. **Value** — the Approach section names a specific artifact or insight the stakeholder gains whether or not they respond.
5. **Timing** — the Approach section cites a dated signal (event, filing, announcement) that justifies outreach now, and the approach names the Familiarity-class artifact the profile supports. Whether the account's Familiarity sub-score permits that artifact is the consuming command's check, not this gate's.

## Profile template

```
STAKEHOLDER PROFILE — <name>, <title>, <company>        Date: YYYY-MM-DD
Function in deal: <User | Buyer | Sponsor | Enabler> (secondary: <…>)

1. Identity
   Tenure: … | Background: … | Network: …
2. Decision Intelligence
   Public priorities: KNOWN [url] "…"
   Inferred priorities: INFERRED [method] … [confidence]
   Decides: <what they approve alone> | Defers to: <who they need>   (labeled)
   Decision pattern: … | Communication style: … | Triggers: …
3. Situational Context
   Recent: … | Now: … | Coming: …
4. Engagement Context
   History: … | Temperature: … | Content: … | Referrals: …
5. Approach
   Lead with: … | Avoid: … | Proof points: … | Timing: <dated signal>
   Message anchor: KNOWN [url] "<their own stated commitment>"
   Seniority class: <Director | VP | C-suite | CEO/Board> | Channel: <warm-intro | email | linkedin | mail>
   Artifact supported: <thesis | value provocation | Bridge | value proposition>

Incentive / Constraint grid
   Monetary     incentive: …   constraint: …
   Time         incentive: …   constraint: …
   Risk         incentive: …   constraint: …
   Feasibility  incentive: …   constraint: …

Sources: <every URL cited above, deduplicated>

Gates: Specificity ☐ Source ☐ Impression ☐ Value ☐ Timing ☐   → <n>/5
```
