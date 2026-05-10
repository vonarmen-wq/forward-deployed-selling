# Foundations

Doctrinal framing that explains *why* the machine operates as it does. `SKILL.md` tells the machine *what to do*; this file is the conceptual ground that makes those rules cohere.

**Consult this file rarely.** Day-to-day artifact generation does not require this file in context. Load it only when an output requires foundational framing — Field Manual essays arguing the doctrine, executive briefs explaining the methodology to non-practitioners, teaching sessions for new practitioners, or contributor work on the doctrine itself.

The content here was extracted from `SKILL.md` to keep that file focused on operational logic. The substance is unchanged; the placement reflects how often it should be loaded.

---

## Why the principles matter

The Three Principles in `SKILL.md` are stated as decision rules — the machine asks specific questions of every artifact and revises if the answer is wrong. The framing below explains why those rules exist.

### On friction

Every moment of friction is an opportunity for the deal to die. The machine removes friction proactively: anticipating questions before they surface, providing information in formats stakeholders consume easily, aligning with procurement processes rather than fighting them. The decision rule in `SKILL.md` ("does this make the next step obvious?") encodes this principle. The framing here is why the principle is non-negotiable: friction compounds across the cycle, and a deal lost to accumulated small frictions does not announce its cause — it simply goes cold.

### On envisioning the future

The buyer who envisions the future state buys faster and with more conviction. Description does not produce envisioning. Specific, contextual, prospect-grounded *rendering* does. This is why the operational rules in `SKILL.md` insist on the prospect's own data, metrics, and language: generic case studies fail because the prospect cannot place themselves inside them. The doctrine treats rendering — not describing — as the seller's primary job.

### On showing rather than telling

Claims are noise. Demonstration is signal. This principle is already mostly operational in `SKILL.md` (machine produces evidence, not assertions), but the doctrinal stake bears repeating: most of the seller's traditional content surface — decks, pitches, capability statements — is told, not shown. The machine reorganizes the seller's output around demonstration as the default, with claims relegated to bridge language between demonstrations.

---

## Why velocity is structural, not tactical

The machine treats velocity as a structural advantage, not a tactic. A tactic improves a metric. A structural advantage changes the economics of the business.

Compression — what most sales-improvement programs aim at — removes waste from an existing process. Velocity is what redesigns the process so waste never accumulates. Compression is reactive; velocity is constitutive. The full velocity protocol — wait state detection, parallel workstream architecture, the compression matrix, the velocity multiplier — lives in `SKILL.md` and `references/deal-velocity.md`. The framing here is why those protocols are organized as they are: not to make existing motions faster, but to redesign the seller's relationship with time.

This distinction matters at the agent level. An agent that treats velocity as compression will optimize the parts of the cycle that are easiest to measure (response time, calendar coordination, document turnaround) and leave the structural waste (sequential workstreams, internal approval bottlenecks, late-stage discovery) intact. An agent that treats velocity as structural will start parallel workstreams against the predictable 80% before the prospect has finished educating the seller — which is what produces the cycle-time deltas the doctrine targets.

---

## Revenue Physics

Four forces govern how value flows through commercial systems. The machine operates with these forces, not against them. These are doctrinal context for the operational protocols, not protocols themselves.

**Feedback.** Every interaction generates data that improves future interactions. The machine captures learnings from every deal and feeds them back into the system. In a system with effective feedback, performance compounds. Without it, every engagement starts from scratch.

**Network Effects.** Each successful engagement creates value beyond the original deal — case studies, templates, learnings, relationship networks, training data. The machine treats each engagement as a node in a network, not an isolated transaction.

**Emergence.** When enough value flows through a system, new structures emerge that weren't designed. Customer communities form. Best practices propagate. New opportunities surface from aggregate patterns. The machine creates conditions for emergence rather than trying to design every outcome.

**Dormant Energy.** Every customer relationship contains untapped potential — adjacent problems, adjacent stakeholders, adjacent business units. The machine systematically scans for dormant value and surfaces activation opportunities.

Each of the four forces has an operational counterpart in the active protocols. Feedback shows up in the Learning Loop sections of `references/movements.md` and `references/deal-velocity.md`. Network Effects show up in the convergence work and the Field Manual cadence. Emergence shows up in how the machine treats aggregate pattern-matching across the pipeline. Dormant Energy shows up in expansion-motion scoring and in the dormant-account refresh triggers in `references/thesis-protocol.md`. The protocols implement the forces; this section names them.

---

## Why this file is separate

Three reasons SKILL.md and foundations.md are kept apart:

1. **Token economics.** SKILL.md is loaded on every skill invocation. foundations.md is loaded only when needed. Splitting them means the machine pays the foundational-framing cost only when a task warrants it.

2. **Execution clarity.** When SKILL.md is asked "what should the machine do here?", the answer is in SKILL.md. When SKILL.md is asked "why is this principle stated this way?", the answer is here. Mixing the two registers in one file dilutes both.

3. **Contributor discipline.** Future contributions to the doctrine often start with the foundational reasoning. Keeping that reasoning in a peer file (rather than buried inside operational sections) means contributors can revise the foundations without touching the operating logic, and revise the operating logic without disturbing the foundations.

This separation is conceptual, not architectural. Both files sit at the skill root in the flat layout. The modular architecture in v0.6 may further reorganize them, but the operational/foundational distinction will hold across the migration.
