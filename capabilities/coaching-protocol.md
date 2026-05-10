---
name: coaching-protocol
version: 0.5
status: draft
last-updated: 2026-05-08
author: Angel Armendariz
---

# Live-Deal Coaching Protocol

The agent operates in two modes when consulted on a deal in flight. **Generation mode** produces artifacts — theses, value provocations, scoring outputs, profiles. **Coaching mode** produces a different deliverable: a structured diagnosis of why a deal is succeeding, struggling, or stalling, and a specific recovery or acceleration plan.

This protocol governs coaching mode. The reverse-engineering target is `examples/anthem-coaching.md` — that artifact's structure is the production shape this protocol produces.

Live-deal coaching is the primary scope of this protocol (a specific deal in motion, with named stakeholders and observable signals). Seller-development coaching (longer-arc skill building, methodology fluency, career-stage growth) is an adjacent capability noted at the end and queued for a future v0.6+ release.

## Purpose

When a seller asks the agent for coaching on a live deal, the seller is not asking for a thesis. They are asking for diagnosis: *why is this happening, and what should I do about it?* The output is therefore structurally different from a thesis or a value provocation:

- A thesis is a point of view about the prospect's situation. Coaching is a point of view about the seller's situation in the deal.
- A value provocation is delivered to the prospect. Coaching is delivered to the seller.
- A thesis is anchored in public data. Coaching is anchored in deal data — interaction history, stakeholder engagement signals, scoring outputs, prior thesis state.

Coaching mode produces an artifact the seller acts on internally; it does not produce content the seller sends to the prospect.

## Load Conditions

**Load this file when:**

- A seller submits a deal review and asks for diagnosis or recovery guidance
- A seller asks "why is this deal stalling?" or "what should I do next on this deal?"
- A scoring output (`references/scoring.md`) flags a deal as regressing, stalling, or showing risk patterns that warrant coaching
- A movement-diagnosis output (`references/movements.md`) shows the deal is mismatched (e.g., Value-stage actions against an account that has regressed to Familiarity)
- The agent identifies a coaching-eligible pattern during routine deal-review processing

**Required prerequisites:**

- The deal exists in CRM or in a structured deal-review submission. The agent does not coach on a deal it cannot read.
- Stakeholder profiles per `references/stakeholder-profiles.md` exist for the engaged contacts, or the agent generates them as part of the diagnostic step.
- A qualified ICP per `capabilities/icp-definition-protocol.md` exists for the deal's market segment.

## When to Invoke

**Invoke coaching mode when ANY of the following is true:**

- The seller explicitly asks for coaching, recovery guidance, or "what do I do next" advice on a specific deal.
- A deal-velocity diagnostic flags wait states the seller has not addressed within their own SLA.
- A scoring composite shows a regression pattern (Movement Score declining, Velocity Score declining, FDRI capability gap widening) per `references/scoring.md` Risk Patterns.
- Champion silence has persisted past the seller's own follow-up cadence and the seller has not yet adapted strategy.
- A deal has crossed a phase boundary without the upstream phase's prerequisites complete (e.g., entered Value motion without Familiarity established).

**Do NOT invoke coaching mode when:**

- The seller asks for an artifact (thesis, value provocation, profile) — that is generation mode.
- The deal is healthy and the seller is asking for routine status. Diagnostic-shaped output on a healthy deal produces noise.
- The diagnostic data is insufficient to support any conclusion. The agent surfaces the data gap instead of generating a low-confidence coaching artifact.

## Discovery Protocol

Before producing coaching output, the agent assembles the diagnostic context.

### Required inputs

1. **Deal facts.** Account name, deal size, current phase, days in current phase, days in pipeline.
2. **Stakeholder roster.** Who is engaged, who is silent, who has gone dark. The U/B/S/E function for each per `references/stakeholder-profiles.md`. Their engagement temperature.
3. **Recent activity.** The last N interactions with timestamps, channels, content. The seller's last three actions on this deal. The prospect's last three responses (or non-responses).
4. **Scoring state.** Movement Score, FDRI, Velocity Score, composite Tier per `references/scoring.md`. Any Risk Pattern matches.
5. **Prior artifacts.** Theses delivered, value provocations sent, profiles assembled. Their reception (read, replied, ignored).
6. **Stated goal.** What does the seller want to happen on this deal in the next two weeks?

### Discovery sequencing

The agent proceeds through the discovery in order:

1. Read deal facts. Establish the size of the prize and the time pressure.
2. Read stakeholder roster. Identify who matters and who is missing.
3. Read recent activity. Map what is happening (or not happening) right now.
4. Read scoring state. Get the structured view from the scoring protocol.
5. Read prior artifacts and their reception. Identify what the prospect has shown interest in vs ignored.
6. Read the seller's stated goal. Anchor the coaching to what the seller is trying to do, not what the agent thinks the seller should be trying to do.

If any input is missing, the agent surfaces the gap and either requests it from the seller or proceeds with explicit "data missing" labels on the affected diagnostic dimensions.

## Diagnostic Framework

The agent diagnoses against three axes, in order. The first axis where a clear failure mode emerges anchors the diagnosis.

### Axis 1 — Movement Mismatch

Is the deal being run at a movement the account is not in?

- Value-stage actions (demos, pilots, proof-of-value) against an account that has not established Familiarity → resistance regardless of product fit.
- Familiarity-building (value provocations, no-ask outreach) against an account that has signaled Value-readiness → wasted cycle time, prospect frustration.
- Awareness-stage outreach against an account already deep in Familiarity → seller looks unprepared.

Diagnose Movement Mismatch via `references/movements.md` regression detection signals + the scoring Movement Score trajectory.

### Axis 2 — Stakeholder Pattern Failure

Is the deal running on the wrong stakeholders?

- Single-champion deals where the User function is identified, the Buyer function is missing, the Sponsor is over-relied-on, or the Enabler has not been engaged. See `references/stakeholder-profiles.md` U/B/S/E taxonomy.
- Champion-gone-dark patterns where the seller has not expanded to other stakeholders.
- Buyer-Buyer mismatch where the actual signing authority sits one role higher than the seller has engaged.
- Sponsor-without-political-capital — the Sponsor advocates but has no influence in the rooms where decisions happen.

Diagnose Stakeholder Pattern Failure via the stakeholder-profile completeness check and the engagement-temperature trajectory across the buying committee.

### Axis 3 — Velocity Collapse

Is the deal sitting in unaddressed wait states?

- Approval queues with no scheduled resolution.
- Information gaps where the prospect is waiting on the seller (or vice versa).
- Calendar friction extending one-meeting delays into multi-week delays.
- Internal debates inside the prospect's organization with unclear decision rights.

Diagnose Velocity Collapse via `references/deal-velocity.md` Wait State Categories and Detection Signals.

### Multi-axis failures

Real deals often fail on multiple axes simultaneously. The agent diagnoses the **primary** failure mode (the one the seller's next action should address) but names secondary failures so the recovery plan addresses them in sequence.

## Coaching Deliverable Structure

The coaching artifact has five sections. Reverse-engineered from `examples/anthem-coaching.md`; production coaching outputs match this shape.

### 1. Executive Summary
One short paragraph naming the diagnosis bluntly. Examples:

- "This deal is exhibiting Wait State Collapse — the champion has gone dark, momentum has evaporated, and the seller is in a passive outreach loop with zero leverage."
- "This deal is moving fast but on insufficient Familiarity. Value-stage actions against an account that has not built trust will fail at late-stage scrutiny."
- "This deal is structurally healthy but resourced below FDRI minimum for the deal complexity. Outcome is at risk from seller capability gap, not buyer fit."

The summary names the structural failure, not the seller's tactical mistakes. Tactical errors are downstream of structural problems.

### 2. The Diagnosis
Three sub-sections, one per diagnostic axis (Movement / Stakeholder / Velocity). For each axis: the observed signals, the inferred failure mode, the doctrinal rule that's being violated. Cite specific protocol references. KNOWN/INFERRED labeling per `SKILL.md` Hallucination Protocol applies — every numeric claim is sourced or labeled.

### 3. Why This Happened
The seller's structural decisions (or non-decisions) that produced the current state. Tactical errors named without blame — "passive engagement strategy" rather than "the seller failed to do X." The point is structural learning, not punishment.

If the seller's choices were reasonable given the information they had, name that explicitly. The agent does not retrofit blame onto choices that were sound at the time.

### 4. Recovery Plan
A specific, sequenced set of actions. Three to seven steps. Each step has:
- The action (concrete, not abstract — "send X to Y by Z date" not "improve the relationship").
- The protocol reference (which capability or reference file the action invokes).
- The expected signal (what response or non-response indicates the action worked).
- The decision point (when to escalate, when to pivot, when to disqualify).

The plan is tied to the seller's stated goal from the discovery. If the seller wants the deal closed in 30 days and the diagnosis shows Familiarity collapse, the plan addresses the realistic 30-day path even if it means scoping down or restarting.

### 5. Quality Gate Status
Run the coaching artifact through the quality gates below before delivery.

## Quality Gates

Three principles the agent applies to every coaching artifact:

1. **Specificity.** The diagnosis names a specific structural failure on a specific axis with cited signals. Recovery steps name concrete actions, expected signals, and decision points. "The deal is struggling, improve engagement" fails — no diagnosis, no action.
2. **Honesty.** If the diagnosis is that the deal is unrecoverable in the seller's stated timeframe, the artifact says so. Compromised honesty produces coaching the seller learns to discount.
3. **Pride Test.** If the seller's manager saw this coaching artifact, would they recognize it as work that respects the seller's intelligence and time? Condescending or generic coaching fails.

Doctrine consistency is a guardrail, not a gate — the artifact does not recommend skipping movements, bypassing the Pride Test, or violating the Doctrine Constraint Layer. If the deal genuinely requires doctrine compromise, the artifact surfaces the trade-off explicitly per the Doctrine Constraint Layer's three categories.

## Worked Example

See `examples/anthem-coaching.md` — full coaching artifact for a stalled $2.1M deal at Anthem Health. Demonstrates Wait State Collapse diagnosis, the multi-axis failure analysis (Movement OK, Stakeholder failed, Velocity collapsed), and a sequenced recovery plan. Read it before generating any coaching artifact — the structure is the production shape.

## Cross-References

- `examples/anthem-coaching.md` — reverse-engineering target and reference implementation.
- `references/stakeholder-profiles.md` — U/B/S/E taxonomy and Incentive/Constraint Framework consumed by the Stakeholder Pattern Failure axis.
- `references/movements.md` — movement diagnosis and regression signals consumed by the Movement Mismatch axis.
- `references/deal-velocity.md` — wait state categories and detection signals consumed by the Velocity Collapse axis.
- `references/scoring.md` — Movement Score, FDRI, Velocity Score, Risk Patterns consumed by Discovery and Diagnosis.
- `disqualification-protocol.md` — when the diagnosis concludes the deal is unrecoverable, the next protocol is disqualification (handed off cleanly).
- `thesis-revision-protocol.md` — when the diagnosis concludes the original thesis is no longer accurate, thesis revision is part of the recovery plan.
- `agent-convergence-protocol.md` — when the diagnosis concludes the deal needs cross-functional mobilization, convergence triggers per that protocol.
- `SKILL.md` Hallucination Protocol, Doctrine Constraint Layer, Voice and Register.

## Adjacent: Seller-Development Coaching

This protocol governs **live-deal** coaching. A separate, adjacent capability is **seller-development coaching** — longer-arc skill building, methodology fluency, career-stage growth, certification preparation.

Seller-development coaching has different inputs (the seller's portfolio of deals over time, not one deal in flight), a different output structure (development plans, skill-gap analyses, learning sequences), and different quality gates (improvement against named competencies, not deal recovery). It belongs in its own protocol file, queued for v0.6+.

The two coaching capabilities will share infrastructure — the Pride Test applies to both, the Doctrine Constraint Layer applies to both, the U/B/S/E taxonomy applies to both. But the workflow is different, and the artifact is different. Conflating them in v0.5 would produce coaching outputs that do neither job well.

## Voice and Register

This file follows the voice convention documented in `SKILL.md`. Operational logic, declarative rules, agent-as-role. Coaching artifacts adopt the register — they read as structured diagnosis, not pep talk.
