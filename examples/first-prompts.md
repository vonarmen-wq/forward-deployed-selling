<!--
EXAMPLE — onboarding artifact for the FDS skill.

A practitioner installing this skill faces a blank Claude window and has to
construct the first invocation themselves. This file lowers the activation
barrier with vetted starting prompts that demonstrate the doctrine's range.

Read this file when you've just installed the skill and want to know what
to ask first. Each prompt loads the appropriate protocols automatically
and produces a doctrine-shaped output.

Prompts are organized by task. Pick the one closest to what you need.
Adapt the bracketed inputs to your situation.
-->

# Forward Deployed Selling — First Prompts

A practitioner installing the skill for the first time can begin with any of these. Each prompt invokes the doctrine end-to-end. Adapt the bracketed inputs to your situation.

---

## Targeting

**Qualify an ICP for a product I'm selling:**
> Qualify an Ideal Customer Profile for [product/service description]. Walk through Market, Persona, and Channel using the protocol in `capabilities/icp-definition-protocol.md`. Apply the five quality gates and report the result.

**Derive a GTM strategy from a qualified ICP:**
> Given the ICP I have for [product], derive the GTM strategy using `capabilities/gtm-strategy-protocol.md`. Specify all five components — motion, channel, messaging anchor, sales artifacts, qualification criteria — and report the quality gate results.

---

## Account-level work

**Generate a thesis for a public B2B account:**
> Generate a thesis for [public company name] using only public data. Apply the doctrine in `references/thesis-protocol.md`. Use the Data Acquisition Protocol to source from earnings transcripts, 10-K filings, and recent press. Label every claim KNOWN or INFERRED per the Hallucination Protocol. Apply the five Quality Gates and the Pride Test before delivering.

**Generate a value provocation from an existing thesis:**
> Convert this thesis into a one-page value provocation per `references/thesis-protocol.md` Value Provocation Format. Apply the dual-frame value-proposition framing in `capabilities/value-proposition-framing.md` — Cost of Inaction + Value of Action, both sourced. Run the FUD test before delivering.

**Diagnose where an account sits in the buyer's journey:**
> Diagnose [account name]'s movement (Awareness / Familiarity / Value) using `references/movements.md`. Cite the signals that anchor the diagnosis. Recommend the next action appropriate to the diagnosed movement.

---

## Stakeholder work

**Build a stakeholder profile:**
> Build a stakeholder profile for [name and role] at [account name]. Use the Profile Schema in `references/stakeholder-profiles.md` (Identity / Decision Intelligence / Situational Context / Engagement Context / Approach). Identify the U/B/S/E function in the deal. Fill in the Incentive/Constraint Framework across the four constraint dimensions.

**Frame a value proposition for a specific stakeholder:**
> Construct a dual-frame value proposition for [stakeholder name and role] at [account] using `capabilities/value-proposition-framing.md`. Anchor Frame 1 (Cost of Inaction) in named peer comparisons with cited sources. Anchor Frame 2 (Value of Action) in the stakeholder's own public commitments. Run all six quality gates including the FUD test.

---

## Pipeline work

**Score an opportunity:**
> Score this opportunity using `references/scoring.md`. Compute Movement, FDRI, and Velocity dimensions. Apply the Movement Floor rule. Identify any Risk Patterns. Report the composite Tier and recommended next actions.

**Diagnose deal velocity issues:**
> Analyze the velocity profile of this deal using `references/deal-velocity.md`. Identify wait states. Recommend specific compression interventions. Apply the When NOT to Accelerate test.

---

## Coaching and recovery

**Coach me on a stalled deal:**
> Coach me on this deal using `capabilities/coaching-protocol.md`. Run discovery on the deal facts, stakeholder roster, recent activity, scoring state, prior artifacts, and my stated goal. Apply the three-axis diagnostic (Movement Mismatch / Stakeholder Pattern Failure / Velocity Collapse). Produce the five-section coaching artifact.

**Decide whether to disqualify:**
> Should I disqualify this deal? Walk through the five trigger categories in `capabilities/disqualification-protocol.md`. If the analysis supports disqualification, draft the prospect-addressed artifact. Apply the three quality principles before recommending delivery.

---

## Thesis revision

**Revise a thesis based on prospect response:**
> The prospect responded to the thesis with [paste response or describe reaction]. Revise using `capabilities/thesis-revision-protocol.md`. Classify each thesis component as Confirm / Correct / Ignore. Make revisions visible. Update the Bridge.

---

## Cross-functional orchestration

**Should I bring engineering / product / customer success / finance into this deal?**
> Recommend a convergence action for this deal using `capabilities/agent-convergence-protocol.md`. Walk the six convergence triggers. If a trigger fires, produce a structured mobilization request. Run the bidirectionality and Pride Test principles before surfacing.

---

## Doctrine learning

**Explain the 3×3 architecture:**
> Explain the Forward Deployed Selling 3×3 architecture in plain terms — three Movements, three Principles, three Innovations — and how they operate simultaneously. Reference `SKILL.md` and `foundations.md`.

**Explain why the Pride Test matters:**
> Explain the Pride Test from `SKILL.md` Ethics Constraint Layer and how it filters every artifact the doctrine produces. Use `foundations.md` for the doctrinal framing.

---

## What to do when the agent gets stuck

If the agent says "I don't have enough data" or "I can't generate this without [X]":

1. Check whether the issue is targeting (no qualified ICP yet) — if so, qualify the ICP first.
2. Check whether the issue is sourcing (no KNOWN anchors) — the account may be too early to thesis (return to Awareness activities) or too obscured (escalate to disqualification consideration).
3. Check whether the issue is operator-instruction conflict (you asked for something the Doctrine Constraint Layer flags) — the agent will surface the conflict; decide whether to revise your instruction or invoke the Doctrinal Bypass category.

The doctrine prefers fast doctrine-shaped output to slow polished output. When in doubt, ship and revise.
