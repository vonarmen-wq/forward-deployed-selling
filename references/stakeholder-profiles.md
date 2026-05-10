# Stakeholder Profiling Protocol

A stakeholder profile is not a CRM record. It is a decision-intelligence document that enables the machine to generate communication with high information content — communication that reduces the recipient's uncertainty about whether the sender understands their specific situation.

> **Profile Schema vs Context Stack — do not conflate.** This file defines the **Profile Schema** — how the machine organizes a stakeholder profile **document** for use in outreach. The **Context Stack** in `SKILL.md` is a different five-layer structure: the **input data taxonomy** the machine assembles from public, CRM, and conversational sources before generating output. Same stakeholder, two structures, distinct purposes. The Profile Schema is the deliverable; the Context Stack is the raw material.

> **Downstream consumer:** The User/Buyer/Sponsor/Enabler taxonomy and the Incentive/Constraint Framework defined in this file are the primary inputs to `capabilities/value-proposition-framing.md`. Value-proposition framing operates inside the constraint frame established here.

## The Information Theory Principle

Claude Shannon defined information as reduction of uncertainty. Generic communication ("We help companies like yours improve efficiency") has zero information content from the receiver's perspective — it tells them nothing they didn't already assume. Hyper-personalized communication ("Based on your Q3 commentary about the 15% downtime and the leadership change in your operations organization, here's how similar companies in similar transitions have approached this") has high information content — it reduces uncertainty about whether you understand their world.

The machine's job is to maximize the information content of every communication. Stakeholder profiles are the input that makes this possible.

## Profile Schema (five categories)

Build and maintain this profile for every stakeholder in an active or target account. The five categories below — Identity, Decision Intelligence, Situational Context, Engagement Context, Approach — are the **document structure**. They are not the same as the Context Stack's five input layers in `SKILL.md`.

### Identity
- **Name, Title, Tenure in role**
- **Background:** Career history, previous companies, education. Focus on experiences that shape current priorities — a CFO who survived two failed implementations views risk differently than one who hasn't.
- **Professional network:** Key relationships, board positions, advisory roles, mentors.

### Decision Intelligence
- **Public priorities:** Stated in interviews, earnings calls, LinkedIn, conference presentations. Quote directly where possible.
- **Inferred priorities:** Derived from job postings, budget signals, organizational changes, competitive context. Label these as inferences and assign confidence levels.
- **Decision pattern:** How does this person make consequential decisions? Data-driven, relationship-oriented, consensus-seeking, fast-moving, risk-averse? Infer from observable behavior.
- **Communication style:** Formal/informal, detail-oriented/big-picture, direct/diplomatic. Infer from public appearances, writing style, meeting behavior.
- **Personal triggers:** What creates urgency for this person? Competitive announcements, regulatory deadlines, board pressure, peer validation, career advancement?

### Situational Context
- **What happened recently:** Leadership changes, organizational restructuring, earnings results, competitive developments, regulatory events.
- **What is happening now:** Active initiatives, current pain points, budget cycles, evaluation processes.
- **What is likely coming:** Foreseeable challenges, strategic inflection points, market shifts that will affect this person's priorities.

### Engagement Context
- **Interaction history:** Every prior conversation, email, meeting — what was discussed, what resonated, what fell flat.
- **Relationship temperature:** Warm, neutral, cold, hostile. Based on engagement signals.
- **Content consumption:** What have they read, clicked, downloaded, shared?
- **Referral network:** Who introduced them? Who can they introduce?

### Approach
Based on the above, a specific recommendation for how to engage this stakeholder:
- **Lead with:** What topic or framing opens the door?
- **Avoid:** What topics or approaches will create resistance?
- **Proof points:** Which evidence or references will resonate with this person specifically?
- **Timing:** When is this person most receptive?

## Multi-Stakeholder Engagement

Enterprise deals involve multiple stakeholders with different priorities. The machine generates distinct communication for each.

**Example — Five stakeholders, five approaches:**

| Role | Lead With | Avoid | Decision Pattern |
|------|----------|-------|-----------------|
| CEO | Market positioning, competitive differentiation | Technical details, implementation weeds | Fast-moving, wants vision before details |
| CFO | Risk mitigation, conservative projections, proof | Upside-only narratives, vague ROI | Risk-averse, needs numbers and guarantees |
| CTO | Architecture depth, team augmentation, modern stack | Anything that implies replacing their work | Methodical, wants to understand deeply |
| COO | Operational KPIs, handle time, throughput metrics | Strategy and vision language | Show me the metrics or don't waste my time |
| CRO/CCO | Compliance, audit readiness, regulatory alignment | Anything that adds compliance burden | Conservative, needs every box checked |

The machine never sends one message to the whole buying committee. It builds distinct analyses for each stakeholder, each grounded in what matters to that individual.

## User / Buyer / Sponsor / Enabler Taxonomy

The Multi-Stakeholder Engagement table above takes a roles-based view (CEO, CFO, CTO, COO, CRO). The taxonomy below takes a function-in-the-deal view: who plays each of four functions in the buying motion, regardless of title.

A buying committee in a complex enterprise deal contains four functions. The same person can play more than one (a Sponsor who is also the Buyer is common in mid-market). Different titles can play the same function across different deals (in one deal the User is a frontline operator; in another it is a director who personally uses the tool).

The machine identifies the four functions explicitly before constructing per-stakeholder communication. Generic "buying committee" thinking misses where the actual decision happens.

### User
**Who uses the product day-to-day.** The success criterion: does the User's daily work get measurably better?

The User has the highest fidelity view of whether the product solves the problem. They rarely have authority to buy, but they can kill a deal in late-stage evaluation by reporting that the product does not work in their actual workflow. Underweighting the User produces deals that close on Sponsor enthusiasm and collapse during implementation.

### Buyer
**Who has signing authority on this purchase.** The success criterion: does the deal economics fit the Buyer's budget structure?

The Buyer cares about deal terms, payment structure, contract length, exit clauses, and how the purchase fits the budget envelope they own. The Buyer is often not the primary advocate — they sign deals their organization has already decided to do — but they can block, delay, or restructure any deal that does not fit their financial frame.

### Sponsor
**Who advocates for the purchase internally.** The success criterion: does the Sponsor have political capital and motivation to push the deal through internal resistance?

The Sponsor is the seller's partner inside the organization. They navigate internal politics, build coalition, defend the deal in steering committees, and explain the purchase to skeptical colleagues. A deal without a Sponsor is a deal the seller has to push uphill at every internal gate. Sponsor identification is often the first signal of whether a deal is real.

### Enabler
**Who unlocks the path.** The success criterion: does the deal pass through the Enabler's checks without elongating the cycle?

Enablers are procurement, legal, IT, security, compliance, finance operations — the functions whose approval is required for the deal to close, but who are not invested in the deal succeeding. They are gatekeepers, not advocates. Their incentives reward catching problems, not closing deals quickly. The seller who treats the Enabler as a stakeholder to win over (not a checkbox to clear) compresses the late-stage cycle measurably.

## Incentive/Constraint Framework

For each function in the U/B/S/E taxonomy, the machine identifies two things: how the person is **incentivized** (what they want), and what **constrains** them across four dimensions.

### Incentive

How the person is compensated, recognized, advanced. What they personally win by saying yes to this purchase.

**Diagnostic questions:**
- What metrics are this person's compensation tied to?
- What outcomes have they been publicly recognized for?
- What is their next career move and what would qualify them for it?
- What does their boss reward them for doing well?

Incentives must be named specifically, not generically. "The CFO wants the company to do well" is uselessly broad. "The CFO is compensated on operating margin expansion and is preparing the company for an upcoming refinancing event" is operational.

### Constraints (four dimensions)

Constraints define what the person cannot do regardless of incentive alignment. The four dimensions are exhaustive at this layer:

**Monetary.** Budget caps. Capex/opex preference. Cash flow rules. Covenant pressure. Spending authority by deal size. Quarter-end vs. fiscal-year-start timing of the budget envelope. Whether the purchase competes with named alternatives for the same dollar pool.

**Time.** Decision cadence (quarterly review, annual planning cycle, board meeting rhythm). Implementation timeline tolerance. Personal calendar density. Speed of internal alignment they can convene.

**Risk.** Career risk on the decision (visible failures cost what?). Organizational risk (vendor concentration, audit exposure, regulatory exposure). Personal risk preference (have they been burned by failed implementations before?). Reference dependence (do they need a peer reference before committing?).

**Feasibility.** Technical compatibility (can the product actually integrate with what they have?). Integration debt (what gets disturbed by adoption?). Change-management capacity (does the org have the people to absorb the new tool?). Skill prerequisites (does the team know how to use this category of product?).

A complete profile names the constraint at each dimension explicitly. A profile with one or two dimensions empty is incomplete — the machine returns to research before generating output.

### How the Framework Threads Through the Doctrine

Once incentive and constraints are identified, the value-proposition framing in `capabilities/value-proposition-framing.md` constructs the dual-frame proposition that:
1. Names the cost of inaction in terms of the named constraint (what worsens if the buyer does not act).
2. Names the value of action in terms of the named incentive (what improves that the buyer is already trying to improve).

This is what makes hyper-personalization land. Generic value propositions miss the buyer's specific incentive and ignore the buyer's specific constraint. Specific value propositions, grounded in the framework above, read as intelligence about the buyer's situation rather than pitch.

### Canonical Illustration: CFO + Operating Margin

A brief illustration of the framework in operation. The full worked example with sourced public data is in `examples/cfo-canonical-example.md`.

**Stakeholder.** CFO at a mid-market company funding internal AI initiatives.

**Function in the deal.** Buyer (signing authority). Often also serves as Enabler (because finance ops reports up).

**Incentive.** Compensation structured around operating margin expansion and earnings consistency. Personally tracking toward a planned debt refinancing where covenant compliance is reviewed.

**Constraints:**
- **Monetary:** Cash flow restricted by debt covenants tied to operating-cash-flow-to-debt-service ratio. Capex authorization limited; opex preferred but caps tightened by covenant pressure.
- **Time:** Decision cadence is quarterly with covenant review at fiscal year end. Implementation cannot disturb the upcoming refinancing window.
- **Risk:** Failed implementations are visible to the audit committee. Risk-averse on tooling that could affect financial reporting integrity.
- **Feasibility:** Existing ERP integration is the technical risk dimension; finance operates within a controlled environment with high audit scrutiny.

**Value-proposition framing that follows from the framework:**
- *Cost of inaction:* Continuing AI initiative funding from cash flow without operating margin lift compounds covenant pressure into the refinancing window. Named peer companies — sourced from public filings — that funded similarly without margin discipline are visible cautionary examples.
- *Value of action:* Operating margin expansion of M% (modeled against the buyer's own publicly disclosed margin trajectory) relieves covenant pressure while serving the earnings incentive. The buyer's own Q3 commentary about cost discipline is the anchor; the value proposition lands as accelerating a strategy the buyer has already named, not introducing a new strategy.

This framing serves the incentive (operating margin) and respects the constraint (cash flow + covenant). Generic "AI ROI" framing misses both. The dual-frame methodology in `capabilities/value-proposition-framing.md` is what produces this output systematically.

## Profile Refresh Triggers

### Immediate (update within 24 hours)
- Role change or promotion
- Company announcement mentioning them
- Published interview or presentation
- LinkedIn activity indicating priority shift
- Material news about their company

### Periodic (monthly)
- Review for missed updates
- Check for new public statements
- Verify role and responsibilities
- Update interaction history

### Pre-engagement (before every meeting or outreach)
- Recent activity scan
- News and announcements
- Current priorities verification
- Prepare talking points aligned to latest context

## Cultural Context

Cultural context affects personalization. The machine does not infer cultural norms from nationality, ethnicity, or any other group attribute. When cultural context matters, the human seller surfaces it explicitly and the machine incorporates it as Yellow Light Profile Schema input. For research depth on cross-cultural communication and decision-making, see Erin Meyer's *The Culture Map*.

## Quality Gates

Before using any stakeholder profile in outreach:

1. **Specificity test:** Does this message contain information specific to this individual, or could it be sent to anyone with this job title?
2. **Source test:** Can you cite where every piece of information came from? If not, it may cross an ethical line.
3. **Impression test:** If this person knew exactly how the information was gathered, would they be impressed or concerned?
4. **Value test:** Does this message offer something useful to them, or does it merely demonstrate research capability?
5. **Timing test:** Is this the right moment to reach out based on what is happening in their world?

Score 5/5: send. Score 4/5: acceptable. Score 3/5: revise. Below 3: do not send.
