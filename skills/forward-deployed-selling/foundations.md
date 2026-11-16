# Foundations

Doctrinal framing that explains *why* the machine operates as it does. `SKILL.md` tells the machine *what to do*; this file is the conceptual ground that makes those rules cohere.

**Consult this file rarely.** Day-to-day artifact generation does not require this file in context. Load it only when an output requires foundational framing — essays arguing the doctrine, executive briefs explaining the methodology to non-practitioners, teaching sessions for new practitioners, or contributor work on the doctrine itself.

The content here was extracted from `SKILL.md` to keep that file focused on operational logic. The substance is unchanged; the placement reflects how often it should be loaded.

---

## Why the principles matter

The Three Principles in `SKILL.md` are stated as decision rules — the machine asks specific questions of every artifact and revises if the answer is wrong. The framing below explains why those rules exist.

### On friction

Every moment of friction is an opportunity for the deal to die. The machine removes friction proactively: anticipating questions before they surface, providing information in formats stakeholders consume easily, aligning with the prospect's procurement process. The decision rule in `SKILL.md` ("does this make the next step obvious?") encodes this principle. The framing here is why the principle is non-negotiable: friction compounds across the cycle, and a deal lost to accumulated small frictions does not announce its cause; it goes cold.

### On envisioning the future

The buyer who envisions the future state buys faster and with more conviction. Specific, contextual, prospect-grounded *rendering* produces that envisioning; description alone leaves the buyer outside the picture. This is why the operational rules in `SKILL.md` insist on the prospect's own data, metrics, and language: generic case studies fail because the prospect cannot place themselves inside them. The doctrine treats rendering as the seller's primary job.

### On showing rather than telling

Claims are noise; demonstration is signal. This is the doctrine's own line, and `SKILL.md` carries its operational form (the machine produces evidence). The doctrinal stake bears repeating here: the seller's traditional content surface (decks, pitches, capability statements) tells. The machine reorganizes the seller's output around demonstration as the default, with claims relegated to bridge language between demonstrations.

---

## Why velocity is structural

The machine treats velocity as a structural advantage. A tactic improves a metric. A structural advantage changes the economics of the business.

Compression, which is what most sales-improvement programs aim at, removes waste from an existing process. Velocity redesigns the process so waste never accumulates. The full velocity protocol (wait state detection, parallel workstream architecture, the compression matrix) lives in `references/deal-velocity.md`; thresholds and the multiplier are in `references/canon.md`. The framing here is why those protocols are organized as they are: to redesign the seller's relationship with time.

This distinction matters at the agent level. An agent that treats velocity as compression will optimize the parts of the cycle that are easiest to measure (response time, calendar coordination, document turnaround) and leave the structural waste (sequential workstreams, internal approval bottlenecks, late-stage discovery) intact. An agent that treats velocity as structural will start parallel workstreams against the predictable 80% before the prospect has finished educating the seller. That is what produces the cycle-time deltas the doctrine targets.

### The multiplier

The financial case:

```
Annual revenue capacity = deal size × win rate × cycles per year

Deal size $1M · win rate 30% · cycle 120 days → 3.04 cycles/year → $913K per seller
Cycle compressed to 75 days               → 4.87 cycles/year → $1.46M per seller
Capacity gain: 60%  [design target]
```

No additional headcount, no improvement in win rate, no increase in deal size. The arithmetic is canon's worked multiplier and is stated as 60%.

### Second-order effects

Velocity compounds through several channels at once. Compressed cycles let each seller pursue more opportunities, expanding coverage. More cycles per period produce more data points, improving forecast accuracy. Faster cycles reduce the fully loaded cost per dollar of revenue. Faster purchase orders mean faster cash collection, which funds further investment. And more deal cycles generate more market data, improving thesis quality across every account.

### When velocity self-finances

The strongest velocity programs reach a point where speed generates the capital that funds more speed: faster deals, faster cash collection, retired revolving debt, freed capital, investment in pre-built assets and labs, faster deals again. The measure of that loop is canon's velocity multiplier, which `/fds:velocity` emits onto each Deal Record under `velocity_inputs`; a segment whose observed multiplier passes 1.4× on the ledger is the evidence a seller brings to leadership.

---

## Revenue Physics

Four forces govern how value flows through commercial systems, and the machine operates with them. They are doctrinal context for the operational protocols.

**Feedback.** Every interaction generates data that improves future interactions, and in a system with effective feedback performance compounds. The ledger line that `/fds:thesis`, `/fds:score` and `/fds:coach` append after each shipped artifact is the capture; the outcome field, filled later, is what closes the loop. Without it, every engagement starts from scratch.

**Network Effects.** A closed deal leaves more than revenue behind: case studies, templates, learnings, relationship networks, training data. Each engagement is therefore a node in a network.

**Emergence.** When enough value flows through a system, structures appear that nobody designed. Customer communities form; best practices propagate; new opportunities surface from aggregate patterns. The doctrine's one concrete instance is canon's design-target rule: once the ledger holds 30 records for a claim, `/fds:score` reads the field benchmark in place of the design target, and once a segment × industry cell holds 20 records the observed latency replaces the window multiplier. Numbers nobody set become the operating numbers.

**Dormant Energy.** Adjacent problems, adjacent stakeholders and adjacent business units sit unexploited inside every customer relationship. Two commands reach them: `/fds:diagnose` re-runs on a dormant account one quarter after its second silent window and emits a fresh A/F/V reading, and `/fds:thesis` refreshes the signal watch on that account and emits a revised evidence table. Expansion-motion scoring starts from those two outputs.

Each of the four forces has an operational counterpart in the active protocols. Feedback shows up in the Learning Loop sections of `references/movements.md` and `references/deal-velocity.md`. Network Effects show up in the convergence work. Emergence shows up in how the machine treats aggregate pattern-matching across the pipeline. Dormant Energy shows up in expansion-motion scoring and in the dormant-account refresh triggers in `references/thesis-protocol.md`. The protocols implement the forces; this section names them.

---

## Why this file is separate

Three reasons SKILL.md and foundations.md are kept apart:

1. **Token economics.** SKILL.md is loaded on every skill invocation. foundations.md is loaded only when needed. Splitting them means the machine pays the foundational-framing cost only when a task warrants it.

2. **Execution clarity.** When SKILL.md is asked "what should the machine do here?", the answer is in SKILL.md. When SKILL.md is asked "why is this principle stated this way?", the answer is here. Mixing the two registers in one file dilutes both.

3. **Contributor discipline.** Future contributions to the doctrine often start with the foundational reasoning. Keeping that reasoning in a peer file means contributors can revise the foundations without touching the operating logic, and revise the operating logic without disturbing the foundations.

Both files sit at the skill root; the operational/foundational distinction holds wherever they live.

---

## The buyer's emotional progression

Each movement produces a specific emotional state in the buyer. The machine monitors for these states and adjusts its approach; the operational diagnosis is in `references/movements.md`.

**During Awareness:** "I keep seeing this company's content. They seem to understand the problems I'm facing. I should remember them." The buyer feels curiosity, recognition, mental filing. The machine keeps producing relevant, discoverable content and does not escalate.

**During Familiarity:** "This person keeps sending me useful things without asking for anything. They seem genuinely interested in my success. I trust them." The buyer feels gratitude, trust, relationship warmth. The machine continues value delivery, watches for Value readiness signals, and does not ask for meetings.

**During Value:** "They've already shown me what's possible. This is a preview of working together." The buyer feels confidence, reduced risk, forward momentum. The machine demonstrates, makes saying yes obvious, and removes remaining friction.

By the time the account reaches Value, the emotional work is complete. If the machine is still building trust in the Value movement, Familiarity was insufficient: diagnose backward and adjust. This progression (curiosity, trust, confidence) is why movements compress but do not skip.

---

## Convergence: cross-functional revenue

Revenue is an emergent property of cross-functional collaboration, and the machine is the orchestration layer that mobilizes an organization's full capability around a customer's specific problem. The operational protocol is `capabilities/agent-convergence-protocol.md`; this section is the argument behind it.

### The principle

In every company the author has sold for or advised, revenue generation has been departmental: sales sells, marketing generates leads, customer success retains, product builds, finance approves. The AI age dissolves this logic. When buyers educate themselves, the value of specialized information transfer collapses, and what rises in its place is the ability to mobilize an organization's expertise around one customer's problem. A deal succeeds because several functions contribute what none could have produced alone.

### What each function contributes

**Engineering** opens doors marketing cannot: a principal engineer's paper on a specific technical challenge carries credibility a white paper does not, and proof-of-value built with the prospect's data is a demonstration no deck substitutes for. **Product management** repositions features in real time on a call to meet a specific concern; that framing cannot be scripted or delegated to sellers without product depth. **Customer success** holds the intelligence about what works in production, and its reference introductions carry peer validation with no sales incentive attached. **Finance**, when it works as a creative function, wins competitive evaluations: a structure matched to the customer's capex/opex preference and budget rhythm removes friction no feature advantage overcomes.

### The seller as orchestrator

The forward-deployed seller knows which engineer to bring in and which would alienate the prospect; which customer story matches the situation; how to frame a roadmap discussion as a value proposition; when finance creativity wins and when price is not the real issue. The seller protects contributors' time: every ask is specific, bounded and high-impact.

### Why organizations resist

The barriers are rational. Product teams are rewarded for shipping, engineering leaders for protecting team time, customer success for retention metrics that do not count new-business intelligence, finance for control. And in a converged model nobody owns the deal in the traditional sense: attribution is distributed, which blurs the clean lines that make management easier and commission clear.

Two responses exist. The structural approach (cross-functional teams with pooled accountability and compensation) reads cleanly in strategy documents and, in the author's observation, collapses more often than it holds, because it requires maturity most companies have not built. The cultural approach keeps functional structures and adds mechanisms that reward contribution: engineers whose content generates pipeline see it in engineering reviews; customer success managers whose intelligence influences deals earn referral credit; product managers in strategic pursuits see it in career development. The mechanism matters less than the signal. When contribution is noticed, people contribute more; when the engineer pulled into a deal is then criticized for a missed sprint, everyone retreats to silos.

### The journal's real function

The contribution journal records date, contributor, account, action, impact and time. Its value is the signal that contribution is seen. Revenue becomes everyone's job when the organization makes contributing safe, visible and rewarding; a mandate on its own changes nothing.

### Readiness

Convergence operates reliably only where five conditions hold:

1. Leadership that treats revenue as an organizational outcome and the Chief Revenue Officer, CPO, CTO and CFO as peers.
2. Cross-functional accessibility: the right engineer within 48 hours, customer success with pipeline visibility, a channel for field intelligence into product.
3. Recognition infrastructure.
4. Resource flexibility, with fast lanes for high-impact requests.
5. Cultural safety against the perception of "not doing their real job."

Rated 0–3 each, an average below 1.5 needs foundational work; above 2.0 is ready for systematic orchestration [design target].

### Failure modes

Over-rotation pulls everyone into every deal and exhausts goodwill. The empty handoff drops an expert into a call without context. The credit dispute follows convergence without attribution rules set in advance. The mandate without support declares revenue everyone's job and changes nothing else. The one-way street has sales extracting value and never reciprocating; convergence is bidirectional, and the operational gate tests for it.
