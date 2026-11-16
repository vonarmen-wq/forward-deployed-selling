---
name: value-proposition-framing
consumes: [Thesis, Stakeholder Profile]
emits: Value Proposition
gate: 6/6 incl. FUD test
---

# Value Proposition Framing Protocol

Prerequisites: the account's Thesis (its evidence table is the only citable set; its `value_at_stake` is the number both frames use) and the Stakeholder Profile for the one stakeholder addressed (U/B/S/E function and Incentive/Constraint grid filled).

This protocol operationalizes the principle "Let Them See the Future". A value proposition is not a product description; it is a structured argument, grounded in the buyer's named incentive and constraints, that names the cost of inaction and the value of action in equal measure, both sourced. Generic value propositions fail because they overstate action, understate inaction, source neither, and read as marketing; the buyer disengages not because the product lacks merit but because the framing never showed the seller understood their situation. (Why both frames are required: `foundations-appendix.md`.)

The output is the **Value Proposition**: the dual-frame Cost of Inaction + Value of Action analysis for one stakeholder, tied to the Thesis version it was built from. It is distinct from the value provocation, which is the one-page delivery vehicle inside the Thesis (`references/thesis-protocol.md`). The agent runs this protocol before any executive brief, business case, stakeholder-specific proposal section, or any output proposing that the buyer act. It does not run against an unqualified target or an incomplete Stakeholder Profile.

**Action class.** The Value Proposition is a Familiarity-class artifact under `canon.md` (Action class by Familiarity sub-score): it is permitted at Familiarity 2 or above. A pilot or business-case variant of the proposition (one that proposes a scoped engagement, a price, or a meeting) is a Value action and requires Familiarity 3; at Familiarity 2 the command surfaces the rule and emits the Familiarity-class form, which ends on the Thesis Bridge and asks for nothing.

## The dual-frame methodology

Two frames, equal weight, sourced equivalently.

### Frame 1 — Cost of inaction

Three sub-components, all required.

1. **Direct consequences in the buyer's own KPIs.** Name the metric the buyer is compensated or recognized on. Model its trajectory under inaction against the buyer's disclosed numbers. "You'll fall behind" fails; "operating margin, disclosed at 14.2% in Q2 commentary, faces continued cost-of-revenue pressure the named peer set has already addressed" passes.
2. **Peer comparison with named peers and cited moves.** Named competitors or comparable operators have taken the proposed action or paid for not taking it. Every peer claim is `KNOWN [url]` or `INFERRED [method] [confidence]`. "Your competitors are pulling ahead" is a FUD-test failure regardless of accuracy.
3. **Competitive lag with a timeline anchor.** Quantify the lag in months, KPI delta or share. Anchor the timeline to the buyer's market dynamics, fiscal cycle or a named competitive event. "The window is closing" without an anchor is manufactured urgency.

### Frame 2 — Value of action

Two sub-components, both required.

1. **Improvement anchored in the buyer's own public statements.** Earnings calls, 10-K commentary, published initiatives. The value of action accelerates a strategy the buyer has already declared, never one the seller introduces.
2. **Quantified value in the buyer's own KPIs.** Conservative; aggressive numbers fail the Pride Test. Where field data does not exist the claim is `INFERRED [method] [confidence]`, modeled against named peer outcomes or cited benchmarks.

## Peer comparison sourcing

Every peer claim carries exactly one label per canon.md.

- `KNOWN [url]`: documented in earnings transcripts, press releases, filings, hiring patterns, conference presentations.
- `INFERRED [method] [confidence]`: inferred from observable signals (job postings, leadership changes, vendor relationships, stack disclosures); method named in two to six words.
- Fabricated peer behavior is a Red Light violation, equal in severity to an invented customer reference. An unsourceable claim is dropped.
- Anonymized peer claims are acceptable only when the source exists and anonymization is required by NDA, privacy commitment or competitive sensitivity. Convenience is not a reason; name the peer.
- Pride Test on sourcing: if the buyer asks "how did you know what competitor X did?", public transcripts pass; scraped private communications do not.

## Worked example

The canonical walkthrough (a CFO funding AI initiatives from cash flow under debt-covenant constraint) is `examples/cfo-canonical-example.md`; read it before framing for a Buyer.

## Output template

```
## Value Proposition — <account>
Targeting: ICP <name> (qualified <date>) · Movement: <A/F/V + sub-scores> · Protocol: value-proposition-framing.md · Gate: <n/6> · Output Standards: <n/5>
Thesis: v<n> (<date>) · Variant: <Familiarity-class | pilot/business-case (requires F3)>

### Stakeholder
<name, title> · Function: <User | Buyer | Sponsor | Enabler>
Incentive: <...> · Constraint: <monetary | time | risk | feasibility>

### Frame 1 — Cost of inaction
Direct consequences: <KPI, trajectory> — <label>
Peer comparison: <named peer, cited move> — <label>
Competitive lag: <quantified lag, timeline anchor> — <label>

### Frame 2 — Value of action
Anchor: <buyer's own statement, source> — <label>
Quantified value: <KPI, figure> — <label>

### FUD test
Indicators 1–6: <none fired | indicator n fired → revised>

### Gate results
1–6 with pass/fail and the failing check named.
```

## Gate

1. **Sourcing.** Every peer claim and numeric claim carries one label per canon.md. An unlabeled claim fails the Evidence standard and the artifact does not ship until it is labeled; a `KNOWN` label without a URL in the evidence table is the Red Light violation. Fabricated peer behavior is Red Light under Peer comparison sourcing above.
2. **Anchoring.** Every value-of-action claim ties to the buyer's named public position. Generic upside fails; find the buyer's own anchor or drop the claim.
3. **Constraint.** The framing operates within the buyer's named constraints (monetary, time, risk, feasibility). A proposition that asks the buyer to exceed budget, ignore covenants or accept publicly avoided risk fails; re-frame, or surface the constraint in the Bridge.
4. **Symmetry.** Both frames are equally weighted and equally sourced. Heavy fear with light upside, or heavy upside with no cost, fails.
5. **FUD test.** The agent simulates the buyer's reading. Any one of six indicators fails the test, even when the numbers are accurate: (1) vague competitor mentions without named peers and cited moves; (2) an unsourced peer behavior claim; (3) manufactured urgency with no anchor in the buyer's market dynamics, fiscal cycle or a named event; (4) generic industry trends in place of buyer-specific anchors; (5) cost of inaction without value of action; (6) asymmetric sourcing between frames. Sourcing is necessary, not sufficient.
6. **Pride Test.** The buyer, shown every source, inference and modeling decision, recognizes work that respects them rather than pressures them.

Pass count: 6/6. Below 6/6 the framing does not ship.

Plus the five Output Standards. A failed check is named in the artifact's header. Shipping on a failed gate is a Doctrinal Bypass.
