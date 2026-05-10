---
name: thesis-revision-protocol
version: 0.5
status: draft
last-updated: 2026-05-08
author: Angel Armendariz
---

# Thesis Revision Protocol

A thesis is not a one-shot artifact. The original thesis enters the prospect's hands as a hypothesis; the prospect's reaction — what they confirm, what they correct, what they ignore — converts the hypothesis into shared analysis. Thesis revision is the protocol that closes the loop: validation triggers, the framework for reading the prospect's response, refinement methodology, re-delivery format, and versioning.

The doctrine in `references/thesis-protocol.md` produces theses. This protocol turns one-shot theses into living documents.

## Purpose

Without a revision protocol, theses behave as outbound marketing artifacts: send, hope for response, move on. With this protocol, theses behave as analytical instruments: send, observe response, refine, re-deliver, observe again. The compounding effect is what produces the doctrine's velocity advantage — by the time a traditional cycle reaches its first formal meeting, an FDS-equipped seller has run two or three thesis-revision cycles and is operating from a near-final shared analysis.

This protocol governs:

- When the agent revisits a previously delivered thesis.
- How the agent interprets the prospect's reaction (or non-reaction).
- What the agent changes vs preserves between thesis versions.
- How re-delivered theses signal "this is updated work" vs "this is a re-send."
- How thesis versions are tracked over the deal lifecycle.

## Load Conditions

**Load this file when ANY of the following is true:**

- A previously delivered thesis has received a response from the prospect (whether substantive engagement, partial pushback, brief acknowledgment, or implicit correction via the prospect's subsequent public statements).
- A thesis has gone unanswered past the doctrine's expected response window, and the seller is deciding whether to revise-and-redeliver or to disqualify.
- A material signal fires on the account that affects the thesis's accuracy (earnings result, leadership change, competitive event, regulatory development).
- The seller submits a revised version of the underlying signal data (new public information surfaced, CRM update, conversation transcript) and the agent must update the thesis accordingly.
- A coaching diagnosis (per `coaching-protocol.md`) concludes that the original thesis was structurally accurate but operationally stale.

**Required prerequisites:**

- An original thesis exists in a structured form (per `references/thesis-protocol.md` five-component shape).
- The validation input — the prospect's reaction or the new signal — is captured and verifiable.

## Validation Triggers

Five categories of validation event. Each triggers a different revision pattern.

### 1. Substantive Engagement

The prospect responded with comments on the analysis itself — confirming a signal, contesting a hypothesis, requesting evidence on a specific claim, asking the seller to extend the analysis to a different dimension.

**Implication:** The prospect read the thesis as analysis worth engaging with. The revision converts the thesis from a one-sided argument to shared work.

### 2. Partial Engagement / Targeted Pushback

The prospect engaged on some dimensions and not others. Common pattern: "the signal is right but the hypothesis overstates the urgency" or "the value-at-stake math is too aggressive."

**Implication:** The thesis's underlying logic survived first contact; specific dimensions need refinement. Revision is targeted, not wholesale.

### 3. Brief Acknowledgment

The prospect responded with minimal substantive engagement — a "thanks, interesting" reply, a meeting accept without follow-up commentary, a forward to a colleague without commentary.

**Implication:** The thesis registered but did not provoke shared analysis. The revision either deepens the specificity (testing whether more rigor produces engagement) or pivots to a different stakeholder using the same underlying analysis.

### 4. Silence Past Window

The prospect did not respond within the doctrine's expected window for the channel and account size. No engagement, no decline, no read-receipt indicator (where available).

**Implication:** The thesis either missed the prospect's actual situation, hit a non-decision-maker, or arrived at the wrong moment. Revision in this case is a structural decision: does the analysis warrant a refresh-and-resend, or does the silence justify disqualification (per `disqualification-protocol.md`)?

### 5. Material Public Signal Change

A signal underlying the original thesis has changed materially. Earnings shifted, leadership turned over, a competitor moved, a regulatory window opened. The thesis as written is now incorrect about the prospect's situation.

**Implication:** Revision is mandatory regardless of whether the prospect responded to the original. A thesis that is materially wrong is doctrinally unshippable; not revising would violate the Hallucination Protocol over time.

## Validation Framework — Confirm / Correct / Ignore

For any prospect response (or non-response), the agent classifies each component of the original thesis along three axes. The five-component thesis structure (Signal / Hypothesis / Evidence / Value at Stake / Bridge per `references/thesis-protocol.md`) is the working unit; the agent runs the framework on each component.

### Confirm

The prospect's reaction (or new signal data) supports the original analysis. Examples: the prospect says "yes, we are looking at this" (confirms the Hypothesis); the prospect's subsequent earnings call doubles down on the priority (confirms the Signal); a peer the thesis cited disclosed gains the thesis modeled (confirms the Evidence).

The principle: confirmed components are the doctrinal credibility of the revision. Don't disturb them cosmetically.

### Correct

The prospect's reaction (or new signal data) refines or partially overturns the original analysis. Examples: the prospect says "the signal is right but you're overstating the timeline" (corrects a Value at Stake claim); the prospect introduces a constraint the original Hypothesis didn't account for; a peer cited in Evidence pivoted strategy mid-quarter.

The principle: name the correction explicitly. "Revised based on your Q3 commentary that timeline is mid-FY26 rather than EOY26" reads as continuous analysis. Silent rewriting reads as repeat outreach with refresh.

### Ignore

The prospect's reaction (or non-reaction) suggests the component did not register or did not warrant engagement. The agent's judgment call: deepen the component (more specificity or stronger evidence), drop it (foreground a different component as the entry), or pivot to a different stakeholder per `references/stakeholder-profiles.md`. Which of the three depends on the deal context — the principle is "don't keep shipping what's not landing without changing something."

## Refinement Methodology

The agent runs revision in this sequence:

1. **Run the validation framework** — classify every component of the original thesis as Confirm / Correct / Ignore based on the validation input.
2. **Decide the revision shape** — full rewrite, targeted refinement, or pivot-to-different-stakeholder. Most revisions are targeted; full rewrites are rare and signal the original was structurally wrong (which warrants a brief acknowledgment of the structural change).
3. **Apply the Hallucination Protocol** to every new claim introduced by the revision. New numerics get KNOWN/INFERRED labels; new peer claims get sourced; the Pride Test applies as if the revision were a fresh thesis.
4. **Preserve provenance** — the revised thesis explicitly references the original thesis's date and version. The agent does not pretend the revision is a fresh first-touch; doing so would fail the Pride Test from the prospect's perspective.
5. **Update the Bridge** — the original Bridge proposed a next step. The revised Bridge proposes the next step appropriate to the revised state of the analysis. Bridges that survive unchanged through revision often signal the revision was cosmetic; if so, reconsider whether revision was warranted.
6. **Run quality gates** (below) before re-delivery.

## Re-Delivery Format

Revised theses signal their revised status visibly. Three conventions:

### Versioning header

Every thesis carries a version header:

```
Thesis: [Account name] — [topic]
Version: [v1, v2, v3, ...]
Generated: [date of original]; Revised: [date of revision]
Revision basis: [confirm/correct/ignore summary or "material signal change: [event]"]
```

### Visible revision marker

Where the prior thesis is referenced, the revised thesis names the change explicitly: "Revised based on your Q3 commentary that..." or "Revised to incorporate the [competitor] disclosure of..."

### Cumulative provenance

The revised thesis lists the lineage of revisions in a footer. This is not bureaucratic detail; it is the doctrinal signal that the seller has been doing analytical work continuously, not generating a one-shot artifact and waiting.

## Versioning

Theses are versioned at the level of the analysis, not the delivery. A thesis sent to three stakeholders with stakeholder-specific framing per `capabilities/value-proposition-framing.md` is one v1; the revisions to each stakeholder-specific framing are v2 of the analysis with stakeholder-specific overlays.

The agent maintains:

- The canonical analysis version (v1, v2, v3, ...).
- The stakeholder-specific overlay version (per stakeholder).
- The validation event that triggered each revision.

When the underlying analysis revisions diverge — e.g., the Hypothesis revised on the basis of CFO pushback no longer applies to the COO conversation — the agent surfaces the divergence rather than producing inconsistent stakeholder-specific theses against incompatible analysis versions.

## Quality Gates

The thesis-protocol gates carry forward to revisions. Three additional principles specific to the revision act:

1. **Make revisions visible.** Don't silently rewrite confirmed analysis. When a component is corrected, name the correction explicitly ("revised based on your Q3 commentary that..."); when a component is preserved, don't disturb it cosmetically. Silent revision reads as repeat outreach with cosmetic refresh; visible revision reads as continuous analysis.
2. **Bridge advances.** The revised Bridge advances the next step relative to the original Bridge. A revised thesis with an unchanged Bridge often signals the revision is cosmetic — reconsider whether the revision was warranted.
3. **Pride Test (revision-specific).** If the prospect saw the revision history together — original v1, validation event, revised v2 — would they recognize the work as continuous collaboration, or as repeat outreach with refresh?

The Hallucination Protocol applies to every new claim introduced by the revision. Validation traceability is part of authoring, not a gate the agent runs after — every revision change is rooted in a specific validation input the agent can name.

## Cross-References

- `references/thesis-protocol.md` — the upstream protocol that produced the original thesis. Read before revising.
- `references/stakeholder-profiles.md` — when revision pivots to a different stakeholder, the stakeholder profile shapes the framing.
- `capabilities/value-proposition-framing.md` — when revision changes the dual-frame value proposition (cost of inaction or value of action), this protocol governs the new framing.
- `coaching-protocol.md` — when coaching diagnosis concludes the original thesis is operationally stale, thesis revision is part of the recovery plan.
- `disqualification-protocol.md` — when validation triggers (especially Silence Past Window) lead to a disqualification rather than a revision, hand off to disqualification cleanly.
- `SKILL.md` Hallucination Protocol — applies to every revision.
- `SKILL.md` Voice and Register.

## Voice and Register

This file follows the voice convention documented in `SKILL.md`. Revisions adopt the original thesis's register — declarative, sourced, doctrine-shaped. Revisions do not adopt apologetic or hedging language, even when the revision is correcting an over-claim.
