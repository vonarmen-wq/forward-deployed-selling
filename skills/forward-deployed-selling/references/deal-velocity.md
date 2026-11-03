---
name: deal-velocity
consumes: [Deal Record, Movement Diagnosis]
emits: Velocity Profile
gate: "when not to accelerate" test recorded
---

# Deal Velocity Protocol

Prerequisites: `canon.md` (Velocity table, Deal-size bands, worked multiplier); the Deal Record with phase dates; the current Movement Diagnosis.

Velocity is not compression. Compression removes waste from an existing process; velocity redesigns the process so waste never accumulates. The machine treats velocity as a structural advantage, not an optimization project — the argument is in `foundations.md`. Thresholds, the velocity multiplier and the 120→75-day worked example live in `canon.md`; this file does not restate them.

All cycle-time, capacity and compression figures in this file are [design target] and are never presented to a prospect as observed results.

## The wait-state problem

Map any enterprise deal and the same pattern appears: real work occupies a fraction of elapsed time. On a 120-day cycle roughly 30 days involve activity; the other 90 are dead time — legal reviews in an inbox, data requests without owners, internal debates that could resolve in one session, calendar coordination adding weeks to something that takes hours [design target]. The machine's primary velocity function is detecting and eliminating wait states.

| Category | Example | Root cause | Machine action |
| --- | --- | --- | --- |
| Approval queue | Deal review sitting unscheduled | Sequential process design | Escalate, pre-schedule, or eliminate the gate |
| Information gap | Prospect waiting for a technical answer | Wrong or unavailable resource | Route to available expert; interim answer from knowledge base |
| Calendar friction | Two weeks to schedule one hour | Synchronous coordination | Propose async alternative; share working materials in advance |
| Internal debate | Scope discussion cycling | Unclear decision rights | Name the decision owner; frame the decision; force resolution |
| Procurement drift | Security questionnaire unanswered for weeks | No owner, no deadline | Pre-populate; assign owner; create accountability |
| Sponsor silence | No response to the last three messages | Lost momentum, priority shift, or regression | Diagnose friction vs genuine uncertainty; re-diagnose movement |

### Detection signals

More than 5 business days without substantive activity on an active opportunity; more than 2 coordination exchanges for one meeting; more than 2 redline cycles; stakeholder questions that should have been pre-answered; requests for information already in the deal record; any phase exceeding 150% of its phase benchmark. On detection the machine diagnoses the cause and recommends action within 24 hours.

### Phase benchmark

The phase benchmark is the deal-size band's typical cycle divided across four phases [design target]:

| Phase | Share of cycle | On a 120-day cycle |
| --- | --- | --- |
| Awareness → Familiarity | 20% | 24 days |
| Familiarity → Value | 30% | 36 days |
| Value → Proposal | 30% | 36 days |
| Proposal → Close | 20% | 24 days |

`canon.md` does not yet carry a cycle column on the Deal-size bands table; until it does, 120 days (canon's worked-multiplier baseline) is the default cycle for every band, and the operator may set a band-specific cycle as a pace adjustment.

## Parallel workstream architecture

Any work that does not depend on the output of prior work starts immediately.

```
SEQUENTIAL:  Discovery ──► Solution Design ──► Business Case ──► Legal/Procurement ──► Close   (~120 days)

PARALLEL:    Discovery ──────────────►
               Solution Design ──────────────►   (starts on the predictable 80%)
                 Business Case ────────────►     (benchmarks + public financials)
                   Legal Review ──────────►      (standard terms)
                     Procurement Prep ────►      (pre-populated)                      (~75 days)
```

| Workstream | Starts after | Does not require |
| --- | --- | --- |
| Reference architecture draft | Account enters pipeline | Completed discovery |
| Business case (benchmark version) | Public financials available | Finalized solution design |
| Standard legal terms review | Deal qualified | Commercial proposal |
| Security questionnaire prep | Industry identified | Procurement kickoff |
| Stakeholder mapping | First engagement | Sponsor confirmation |
| Proof-of-value scoping | Solution hypothesis formed | Signed SOW |

Eighty percent of downstream work is predictable from context; discovery refines the remaining twenty against a working draft, not a blank page. When upstream work finalizes, downstream updates in hours.

## The compression matrix

| Yield | Reduction [design target] | Activities |
| --- | --- | --- |
| High | 70–90% | Information gathering; document assembly; scenario modeling; account research and thesis generation — AI substitutes directly for human research time |
| Moderate | 30–50% | Solution design; negotiation preparation; stakeholder alignment; proposal refinement — human judgment on AI preparation |
| Low | 10–20% | Trust building; organizational alignment; legal review; change management — human-paced |
| None | 0% | Buyer readiness; budget cycles; implementation reality; organizational grief at retiring a legacy system — the machine respects these |

## When not to accelerate

The machine distinguishes wait states caused by bureaucratic friction (eliminate) from wait states caused by genuine uncertainty (respect). Do not compress when:

- the buyer distrusts speed — deliberate pacing signals seriousness;
- trust is not established — an account still in Familiarity does not receive Value-stage velocity;
- stakeholders are not aligned — closing on one Sponsor fails at implementation;
- the deal economics do not work — speed to a bad deal is a bad deal;
- the CFO has not been brought along — a proposal arriving before the decision-maker understands the problem creates resistance.

**Competence test.** *If we move this fast, will the customer feel impressed by our preparation or rushed by our agenda?* If rushed, slow down and rebuild context. The verdict is recorded on every Velocity Profile; this is the protocol's gate.

## Internal velocity

The biggest delays are often inside the selling organization: legal re-reviewing standard terms, pricing approvals needing executive sign-off for any deviation, technical resources unschedulable for weeks, stale proposal templates, security answers not in searchable form.

| Asset | Purpose | Impact [design target] |
| --- | --- | --- |
| Pre-approved contract language library | Eliminate redundant legal review | −2 to −4 weeks |
| Decision trees for non-standard terms | Front-line decision authority | −1 to −2 weeks |
| Pricing frameworks with pre-approved bands | Remove approval bottleneck | −3 to −5 days |
| Reference architectures by industry | Compress solution design | −2 to −3 weeks |
| Fast-start packages for standard deals | Eliminate custom scoping | −1 to −2 weeks |
| Searchable security questionnaire database | Pre-populate procurement | −1 to −2 weeks |
| Standing approval for defined deal types | Remove executive bottleneck | −1 week |
| War-room protocol for competitive situations | Rapid coordinated response | Situational |

Readiness: **Green** — pre-built assets, streamlined approvals, cross-trained resources, escalation SLAs. **Yellow** — partial assets, known bottlenecks, inconsistent availability. **Red** — every deal from scratch, multi-level approvals, single points of failure. At Yellow or Red the machine names the organization, not the customer, as the primary velocity constraint.

## Acceleration playbook

- **Stalled discovery:** present a thesis from public data for validation — "here is what we know; what are we missing?"
- **Stalled solution design:** deploy a reference architecture; ask the prospect to identify gaps.
- **Stalled business case:** preliminary ROI on benchmarks and public financials; offer the model as a value artifact.
- **Stalled procurement:** pre-populate questionnaires; flag standard legal issues with language that has worked.
- **Stalled executive alignment:** stakeholder-specific briefs; cost of delay in the prospect's terms; a time-bounded proof of value.

## The learning loop

Phases that repeatedly create wait states get a systemic fix, not a deal-level one. Internal bottlenecks become organizational advocacy. Workstreams that produce the best drafts refine the 80/20 split. Compression attempts that backfired update the "when not to accelerate" criteria. The machine feeds each learning across all accounts.

## Velocity Profile

Output of this protocol:

```
VELOCITY PROFILE — <deal>                      Date: YYYY-MM-DD
Band: <SMB | Mid-market | Enterprise | Strategic>   Cycle benchmark: <n> days   Movement: A<n>/F<n>/V<n>

Phase table
  Phase                      Planned days   Elapsed days   Status (<100% / 100–150% / >150%)
  Awareness → Familiarity    …              …              …
  Familiarity → Value        …              …              …
  Value → Proposal           …              …              …
  Proposal → Close           …              …              …

Open wait states
  #  Category            Description                 Owner         Age (days)
  1  …                   …                           …             …

Velocity indicators (canon.md table)   score each 0–3; mean = <Velocity score>

Compression plan
  Wait state → action → owner → due date
  Parallel workstreams to start now: …

"When not to accelerate" verdict
  Competence test: <impressed | rushed>   Conditions present: <list or none>
  Verdict: <accelerate | hold pace | slow down> — reason: …
```
