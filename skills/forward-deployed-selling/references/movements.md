---
name: movements
consumes: [ICP Record, Context Stack]
emits: Movement Diagnosis
gate: signals cited for every YES; tie rule applied
---

# Movement Diagnosis Protocol

Prerequisites: `canon.md` (Movements, timelines, Movement Floor); the qualified ICP Record; the account's Context Stack (the Interaction and Timing layers supply the signals cited below).

The three movements — Awareness, Familiarity, Value — are defined in `canon.md` with their permitted and forbidden actions. The machine diagnoses the movement before recommending any action.

## The fundamental rule

**Movements compress; they do not skip.**

A prospect without Awareness ignores Familiarity-stage outreach; a prospect without Familiarity resists Value-stage engagement regardless of fit. The Familiarity timeline and its compression limit are in `canon.md` (Movements, timelines). The emotional progression behind the rule is in `foundations.md`.

## Diagnostic questions

Four questions per movement. Each YES scores one point, capped at 3, and cites its signal; a YES without a cited signal is a NO. Tie rule: 2 of 4 YES is a 2, and a 2 means the movement is partially reached. A movement is reached at 3.

### Awareness

1. Would they recognize the seller's name? (brand search, site visits, ad impressions)
2. Have they consumed any content? (engagement data, opens, webinar attendance)
3. Would they accept a connection request from a seller? (LinkedIn and social signals)
4. Have they interacted with the brand anywhere? (events, community, support tickets)

### Familiarity

1. Would they take a call from a specific seller? (prior engagement, response to outreach)
2. Has a seller provided value without asking for anything? (provocations sent, insights shared)
3. Do they engage with seller content personally? (likes, comments, shares, replies)
4. Would they describe the seller as helpful rather than "salesperson"? (tone, referral language)

### Value

1. Is there an active need the solution addresses? (earnings calls, postings, news, competitive moves)
2. Is there budget or willingness to create it? (fiscal timing, budget signals, sponsorship)
3. Are decision-makers accessible? (engagement levels, organizational map)
4. Would they invest time in a proof of value? (expressed interest, urgency signals)

## Reading the sub-scores

The action class turns on the Familiarity sub-score alone. The table in `canon.md` (Action class by Familiarity sub-score) is the rule; restated here for reading, not as a second definition:

| Familiarity | Permitted action class | Forbidden |
| --- | --- | --- |
| 0–1 | Awareness actions only: content, presence, discoverability. No direct outreach. | Thesis, value provocation, Bridge, meeting ask, demo |
| 2 | Familiarity actions: thesis, value provocation, Bridge artifact, stakeholder-specific value proposition | Demo request, meeting ask, pricing, pressure, business case, pilot proposal |
| 3 | Value actions: demonstration, business case, pilot proposal, meeting ask, pricing | Description in place of demonstration |

A Familiarity sub-score of 3 permits Value actions whatever the Value sub-score reads; the Value sub-score then tells the seller which Value action fits (a demonstration against Value 1 is proof offered before need is confirmed, and the diagnosis says so). Value provocations are a Familiarity action, not an Awareness action. An account at Familiarity 0–1 has not earned direct outreach. Value 2–3 against Familiarity 0–1 is need without trust — a competitive evaluation the seller enters at a disadvantage — and the Movement Floor in `canon.md` caps that account at Tier 4 until Familiarity reaches 2.

## Action protocols

**Awareness.** Be discoverable when the prospect begins exploring a problem the seller solves: domain-expertise content, discoverability through AI assistants and search, presence at events and with analysts, signal monitoring. Portfolio-level work, one to two hours per account monthly. Metrics: reach, brand search, share of voice, inbound from target accounts.

**Familiarity.** Build trust through value delivery without asking for anything. Default plan across the canon timeline [design target]: first third, a personalized insight on their latest earnings or announcement and a peer reference offered; second third, industry research, a custom segment benchmark, an introduction to a peer or analyst; final third, a brief on a regulatory or competitive development and updated analysis since day 1. Compression to the canon minimum keeps every item; below it is skipping. If the seller is asking for something, the seller is selling. Metrics: response rate, engagement depth, temperature change, time-to-opportunity.

**Value.** Demonstrate outcomes before the contract: proof of value on the prospect's data or close proxies, pilots with measurable results, business cases in their own numbers. Metrics: POV completion, POV-to-proposal conversion, POV-to-close time.

## Transition and regression signals

**Awareness → Familiarity:** repeated content engagement; connection with a seller; event attendance. **Familiarity → Value:** a specific capability question; an internal challenge shared unprompted; other stakeholders introduced; a budget signal. **Regression:** Sponsor goes dark; decision-maker change; budget freeze or pivot; competitive loss at a reference account. On regression the machine re-diagnoses and Value actions stop.

## The learning loop

Awareness reveals which topics resonate; Familiarity reveals what individuals care about; Value reveals what delivers. Each feeds the next and feeds back across all accounts.

## Diagnosis record

Output of this protocol (Movement Diagnosis schema):

```
Account:            <name>
Date:               YYYY-MM-DD
Awareness:          <0–3>   YES signals: Q1 <signal/source>; Q2 <…>; …
Familiarity:        <0–3>   YES signals: Q1 <signal/source>; Q2 <…>; …
Value:              <0–3>   YES signals: Q1 <signal/source>; Q2 <…>; …
Tie rule applied:   <yes/no — any movement at 2 is partially reached>
Reached movement:   <Awareness | Familiarity | Value | none>
Permitted class:    <Awareness | Familiarity | Value actions>
Forbidden class:    <per canon.md Movements table>
Floor:              <tier cap per canon.md Movement Floor>
```

A YES without a cited signal fails the gate.
