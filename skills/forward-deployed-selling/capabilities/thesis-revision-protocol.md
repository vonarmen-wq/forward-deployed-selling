---
name: thesis-revision-protocol
consumes: [Thesis, Evidence Table, Stakeholder Profile]
emits: Thesis
gate: every component classified Confirm / Correct / Ignore; Bridge updated
---

# Thesis Revision Protocol

Prerequisites: Thesis (five-component form per `references/thesis-protocol.md`, with its stored response window W), Evidence Table, Stakeholder Profile; and a captured, verifiable validation input (the prospect's reaction or the new signal).

A thesis enters the prospect's hands as a hypothesis; the prospect's reaction converts it into shared analysis. Without revision a thesis is outbound marketing (send, hope, move on); with it the thesis is an analytical instrument (send, observe, refine, re-deliver), and the compounding of two or three revision cycles before a traditional seller's first formal meeting is where the doctrine's velocity advantage comes from. (Why: `foundations-appendix.md`.)

## Validation triggers

| # | Trigger | Revision pattern |
|---|---|---|
| 1 | Substantive engagement: the prospect confirms a signal, contests a hypothesis, requests evidence, asks for extension | Convert from one-sided argument to shared work |
| 2 | Partial engagement / targeted pushback ("signal is right, urgency overstated"; "value math too aggressive") | Targeted refinement of the named components; logic survived |
| 3 | Brief acknowledgment ("thanks, interesting"; meeting accept without commentary; forward without commentary) | Deepen specificity, or pivot to a different stakeholder on the same analysis |
| 4 | Silence past the computed window W (canon.md) | Three-outcome rule below; never a nudge |
| 5 | Material public signal change (earnings, leadership turnover, competitor move, regulatory window) | Mandatory revision whether or not the prospect responded; an outdated thesis is unshippable |

**Silence rule (trigger 4).** Silence at W triggers a signal diff, not a nudge. First window with no material change: send the Bridge artifact and open a second window at 1.5×W. Second window with no material change: mark dormant; re-diagnose in one quarter. Two dormant cycles: hand off to `disqualification-protocol.md`. A material change in the signal diff is trigger 5 and revises immediately.

## Confirm / Correct / Ignore

The agent classifies every one of the five components (Signal / Hypothesis / Evidence / Value at Stake / Bridge) against the validation input.

- **Confirm.** The reaction or new data supports the component (prospect says "yes, we are looking at this"; the next earnings call doubles down; a cited peer disclosed the modeled gains). Confirmed components are the revision's credibility; do not disturb them cosmetically.
- **Correct.** The reaction refines or partially overturns the component (timeline overstated; an unaccounted constraint; a cited peer pivoted). Name the correction explicitly: "Revised based on your Q3 commentary that the timeline is mid-FY26 rather than EOY26." Silent rewriting reads as repeat outreach.
- **Ignore.** The component did not register. Choose one: deepen it (more specificity or stronger evidence), drop it (foreground a different component as the entry), or pivot to a different stakeholder per the Stakeholder Profile. The rule: nothing ships again unchanged after it failed to land.

## Refinement sequence

1. Classify every component Confirm / Correct / Ignore.
2. Decide the shape: targeted refinement (most revisions), pivot to a different stakeholder, or full rewrite (rare; signals the original was structurally wrong and gets a one-line acknowledgment of that).
3. Label every new claim per canon.md; source every new peer claim; apply the Pride Test as if the revision were a fresh thesis.
4. Preserve provenance: the revision references the original's date and version. A revision presented as a first touch fails the Pride Test.
5. Update the Bridge to the next step appropriate to the revised analysis. A Bridge that survives unchanged signals a cosmetic revision; reconsider whether revision was warranted.
6. Recompute W if segment, seniority, channel or season changed; store it on the record.
7. Run the gate.

## Versioning

Versions attach to the analysis, not the delivery. One thesis sent to three stakeholders with stakeholder-specific framing is one v1; revisions are v2 of the analysis with per-stakeholder overlays. The agent maintains the canonical analysis version, each stakeholder overlay version, and the validation event behind each revision. When overlays diverge (a Hypothesis corrected on CFO pushback no longer holds for the COO conversation), the agent surfaces the divergence rather than shipping inconsistent theses.

## Output template

```
## Thesis — <account> · <topic>
Targeting: ICP <name> (qualified <date>) · Movement: <A/F/V + sub-scores> · Protocol: thesis-revision-protocol.md · Gate: <pass | fail: check> · Output Standards: <n/5>
Version: v<n> · Generated: <original date> · Revised: <date> · Window W: <days>
Revision basis: <trigger #, summary of Confirm/Correct/Ignore> | material signal change: <event>

### Signal — <Confirm | Correct | Ignore> → <action>
### Hypothesis — ...
### Evidence — ...
### Value at Stake — ...
### Bridge — updated: <next step>

Revised based on <named validation input>.

Lineage: v1 <date, basis> → v2 <date, basis> → ...
```

## Gate

1. **Every component classified.** All five carry Confirm / Correct / Ignore with the validation input that produced the classification named. Corrections are visible in the artifact; confirmed components are undisturbed.
2. **Bridge updated.** The revised Bridge advances the next step relative to the original.
3. **Pride Test.** The prospect, shown v1, the validation event and v2 together, recognizes continuous collaboration rather than repeat outreach with a refresh.

Pass: both named checks (classification complete, Bridge updated) plus the Pride Test. The thesis-protocol gates (5/5) carry forward to every revision.

Plus the five Output Standards. A failed check is named in the artifact's header. Shipping on a failed gate is a Doctrinal Bypass.
