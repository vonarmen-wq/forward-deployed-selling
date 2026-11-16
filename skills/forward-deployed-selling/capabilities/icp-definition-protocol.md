---
name: icp-definition-protocol
consumes: [Business Record]
emits: ICP Record
gate: 5/5
---

# ICP Definition Protocol

Prerequisites: the Business Record (`schemas/business-record.md`): the product, its pricing posture, proof and buyers so far, stated by the seller once and reused. The agent does not interview the seller for what the record already holds.

The Ideal Customer Profile is the prerequisite for every other protocol: a thesis against the wrong market, a provocation for the wrong persona, or outreach on the wrong channel produces output the seller cannot use. The agent re-qualifies rather than reusing a prior ICP Record when the operator names a market, persona or channel it does not match, the product changes, a competitive shift changes the winning segment, or the record is older than one quarter.

## The ICP triangle

Three axes, all required. Failure on any one disqualifies the ICP.

### Market

The segment that can buy the product in its current form, at its current price.

1. What problem does the product solve?
2. Which segments would pay to solve it (not "could benefit from")?
3. Which subsets have budget authority and decision velocity matched to the product's economics?
4. What is the size of that subset, with a named source?

Fails when: "everyone with [generic problem]"; the buyer must first recognize a problem they do not see (an Awareness-stage market, not a buyable one); the buyer is structurally unable to commit (regulated, contractually bound, recently bought a competitor).

### Persona

The function whose authority closes, classified per the U/B/S/E taxonomy in canon.md. Not the committee.

1. Which role family holds budget authority on this purchase?
2. What is the persona's incentive: compensation, recognition, advancement?
3. What constrains the persona: monetary, time, risk, feasibility? (Incentive/Constraint Framework, `references/stakeholder-profiles.md`.)
4. What is the decision pattern: data-driven, relationship-led, consensus-seeking, fast, risk-averse?

Fails when: named generically ("the head of sales") without authority verification; influence without authority (the committee defers to a parent role); protected by gatekeepers the chosen channel cannot pass.

### Channel

The reachable path from seller to persona at economics that make the doctrine viable.

1. Where does the persona consume professional information (publications, communities, events, peer networks, owned media)?
2. What touchpoint pattern reliably reaches them at the seller's capacity?
3. What does each touchpoint cost (time, money, attention) and yield (response rate, conversion)?
4. Is the channel saturated by competitors at the persona's attention level?

Fails when: cost per touchpoint exceeds the deal band's unit economics (bands per canon.md); the channel needs capacity (content, events, relationship density) the seller lacks; incumbents hold share of voice at any viable spend.

## Qualification sequence

1. State the product: named features, named pricing posture. Not "our solution".
2. Name the market with sizing logic; label the size `KNOWN [url]` or `INFERRED [method] [confidence]`.
3. Name the persona: role family, authority verification, incentive, constraint, decision pattern.
4. Name the channel: reach mechanics, cost per touchpoint, saturation.
5. Test coherence: the persona is reachable through the named channel within the named market and the three answers agree. Inconsistent triangles are re-qualified or rejected.
6. Emit the ICP Record.

Worked example: `examples/icp-definition.md`. Read it before qualifying a new ICP.

## Output template

```
## ICP Record — <segment>
Targeting: ICP <name> (qualified <date>) · Movement: n/a · Protocol: icp-definition-protocol.md · Gate: <n/5> · Output Standards: <n/5>

### Product
<named product, features, pricing posture>

### Market
Segment: <...> · Industry: <canon.md industry class>
Geography: <...>
Size signal: <the observable that defines "in market": revenue band, headcount, system in use>
Addressable subset: <N> — KNOWN [url] | INFERRED [method] [confidence]
Target list: <the 10% of the addressable subset pursued first>  [design target]
Exclusions: <what looks in-market but is not, with the signal that reveals it>
Deal band: <SMB | Mid-market | Enterprise | Strategic>

### Persona
Role family: <...> · Buying function: <Buyer by default; the function whose authority closes>
Functions: User <title> · Buyer <title> · Sponsor <title> · Enabler <title>   (the title that usually fills each)
Authority verification: <evidence, labeled>
Incentive: <the one thing the Buyer is measured on that this product moves>
Constraints: monetary <...> · time <...> · risk <...> · feasibility <...>
Decision pattern: <...>

### Channel
Primary: <warm-intro | email | linkedin | event | partner | inbound> · Cost per touchpoint: <...> · Expected response rate: <... labeled>
Why: <the evidence that this channel reaches this persona>
Saturation: <...>

### Disqualifiers
3–5 signals that end pursuit early, each observable at account level.

### Coherence sentence
"We are selling <product> to <persona> in <market> via <channel>."

### Gate results
1–5 with pass/fail and the failing check named.
```

## Gate

1. **Specificity.** The ICP excludes more than it includes. If market, persona and channel together describe more than [design target] 10% of the addressable universe, tighten until exclusion is meaningful.
2. **Channel.** Touchpoint cost, required capacity and expected response rate sum to a viable acquisition motion for the deal band.
3. **Persona-Authority.** The persona holds authority on this purchase, not influence. If the role family routinely defers to a parent role at this deal size, re-qualify with the parent role.
4. **Coherence.** The sentence "We are selling [product] to [persona] in [market] via [channel]" reads naturally and is non-trivially specific. Any axis that sounds bolted on fails.
5. **Pride Test.** A real member of the named persona, shown how the ICP was built, recognizes themselves as accurately framed rather than mis-categorized.

Pass count: 5/5. Below 5/5 the ICP is not qualified and no downstream protocol runs against it.

Plus the five Output Standards. A failed check is named in the artifact's header. Shipping on a failed gate is a Doctrinal Bypass.
