---
name: coaching-protocol
consumes: [ICP Record, Deal Record, Stakeholder Profile, Score Card, Velocity Profile, Thesis]
emits: Coaching Artifact
gate: 3/3; zero prospect-facing content
---

# Live-Deal Coaching Protocol

Prerequisites: ICP Record, Deal Record, Stakeholder Profile (per engaged contact; generated in discovery if missing), Score Card, Velocity Profile, Thesis (prior artifacts and their reception).

The agent runs in two modes on a deal in flight. Generation mode produces artifacts for the prospect. Coaching mode produces a diagnosis for the seller: why the deal is succeeding, struggling or stalling, and a sequenced recovery or acceleration plan. A coaching artifact is anchored in deal data, not public data, and contains zero prospect-facing content. (Why the two deliverables differ: `foundations-appendix.md`.) The reference implementation is `examples/coaching-example.md`; read it before generating a coaching artifact.

## When to invoke

Invoke when any one is true:

- The seller asks for coaching, recovery guidance or "what do I do next" on a specific deal.
- The Velocity Profile shows a wait state unaddressed past its canon threshold.
- The Score Card shows regression: Movement score declining, Velocity score declining, or FDRI gap widening (`references/scoring.md` Risk Patterns).
- Sponsor silence past the computed response window W (canon.md) without a strategy change by the seller.
- The deal crossed a phase boundary without the upstream prerequisites (Value actions with Familiarity below 2).

Do not invoke when:

- The seller asks for an artifact (thesis, value provocation, profile): generation mode.
- The deal is healthy and the ask is routine status; diagnostic output on a healthy deal is noise.
- The data cannot support a conclusion. Surface the gap instead of a low-confidence artifact.

## Discovery

Lookback per canon.md: the last 5 interactions or all interactions in the last 30 days, whichever is more.

Required inputs, read in this order:

1. **Deal facts.** Account, deal size and band, current phase, days in phase, days in pipeline.
2. **Stakeholder roster.** Who is engaged, silent, or dark; U/B/S/E function and engagement temperature for each.
3. **Recent activity.** Interactions within the lookback with timestamps, channels, content; the seller's last 3 actions; the prospect's last 3 responses or non-responses.
4. **Scoring state.** Movement score with sub-scores, FDRI, Velocity score, composite tier; Risk Pattern matches.
5. **Prior artifacts.** Theses, value provocations, profiles delivered, and their reception (read, replied, ignored).
6. **Stated goal.** What the seller wants to happen in the next 14 days. The coaching anchors to this, not to what the agent thinks the goal should be.

A missing input is surfaced; the agent requests it or proceeds with "data missing" on the affected axis.

## Diagnostic framework

Three axes, each scored 0–3 from its canon source. The diagnosis anchors on the axis with the lowest sub-score; on a tie, the axis the seller's stated goal names. Secondary failures are named so the recovery plan addresses them in sequence.

### Axis 1 — Movement mismatch

The deal is run at a movement the account is not in. Source: Movement Diagnosis sub-scores and `references/movements.md` regression signals.

- Value actions (demo, pilot, proof) with Familiarity below 2: resistance regardless of fit.
- Familiarity work against an account signaling Value readiness: wasted cycle, prospect frustration.
- Awareness outreach to an account deep in Familiarity: seller looks unprepared.

### Axis 2 — Stakeholder pattern failure

The deal runs on the wrong stakeholders. Source: Stakeholder Profile completeness and engagement-temperature trajectory across the committee.

- Single-Sponsor deal: User identified, Buyer missing, Sponsor over-relied on, Enabler not engaged.
- Sponsor gone dark and no expansion to other stakeholders.
- Signing authority sits one role above the engaged Buyer.
- Sponsor without political capital in the rooms where decisions are made.

### Axis 3 — Velocity collapse

The deal sits in unaddressed wait states. Source: Velocity Profile against the canon.md velocity table and `references/deal-velocity.md` wait-state categories.

- Approval queues with no scheduled resolution.
- Information gaps where one side waits on the other.
- Calendar friction turning one-meeting delays into multi-week delays.
- Internal prospect debates with unclear decision rights.

## Output template

```
## Coaching Artifact — <account>
Targeting: ICP <name> (qualified <date>) · Movement: <A/F/V + sub-scores> · Protocol: coaching-protocol.md · Gate: <n/3> · Output Standards: <n/5>

### 1. Executive summary
One paragraph naming the structural failure bluntly, e.g. "Wait-state collapse: the Sponsor has gone dark, and the seller is in a passive outreach loop with zero leverage." Structural, not tactical.

### 2. Diagnosis
Movement <score/3>: observed signals · inferred failure mode · doctrinal rule violated · labels on every number
Stakeholder <score/3>: ...
Velocity <score/3>: ...
Anchor axis: <lowest sub-score, or tie-break by stated goal>

### 3. Why this happened
The seller's structural decisions or non-decisions, named without blame ("passive engagement strategy", not "the seller failed to"). If the choices were sound on the information available, say so.

### 4. Recovery plan
3–7 steps, each with: action (concrete: "send X to Y by date"); protocol reference; expected signal; decision point (escalate / pivot / disqualify). Tied to the stated goal; if the goal is 30 days and the diagnosis is Familiarity collapse, the plan is the realistic 30-day path even if that means scoping down or restarting.

### 5. Gate results
1–3 with pass/fail and the failing check named. Prospect-facing content: none.
```

Hand-offs: unrecoverable on the stated timeline → `disqualification-protocol.md`; thesis structurally accurate but stale → `thesis-revision-protocol.md`; capability gap beyond the seller's reach → `agent-convergence-protocol.md`.

## Gate

1. **Specificity.** The diagnosis names one anchor axis with cited signals and sub-scores; each recovery step names an action, expected signal and decision point. "The deal is struggling, improve engagement" fails.
2. **Honesty.** If the deal is unrecoverable in the seller's stated timeframe, the artifact says so. Softened honesty produces coaching the seller learns to discount.
3. **Pride Test.** The seller's manager, reading the artifact, recognizes work that respects the seller's intelligence and time. Condescending or generic coaching fails.

Pass count: 3/3, and zero prospect-facing content. The artifact never recommends skipping a movement or bypassing the Pride Test; where the deal requires a doctrinal compromise, the artifact surfaces it per the Doctrine Constraint Layer.

Plus the five Output Standards. A failed check is named in the artifact's header. Shipping on a failed gate is a Doctrinal Bypass.
