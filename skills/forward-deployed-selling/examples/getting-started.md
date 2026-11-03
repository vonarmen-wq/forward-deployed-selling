# Getting started

You have installed the skill and the window is blank. Each command below runs one protocol end to end, loads the files it needs, and reports its gate. Type the command, or type a sentence like the ones under it; the agent maps plain language to the right command. Replace the bracketed parts with your own.

Order matters for the first run: `/fds:icp` before anything else, `/fds:gtm` second, then account work. Every operational command checks that a qualified ICP exists and that the account's movement has been diagnosed, and runs those steps first if they have not been.

---

## /fds:icp — qualify an Ideal Customer Profile

> Qualify an Ideal Customer Profile for [product, with its price range]. Work through Market, Persona and Channel, label every figure, and report the five gates.

> I sell [product] for about [price] a year. Who should I actually be selling this to, and how do I reach them?

## /fds:gtm — derive the go-to-market strategy

> Derive the GTM strategy from the qualified ICP for [product]. Specify motion, channel mix, messaging anchor, sales artifacts and qualification criteria, each traced to the ICP dimension it comes from.

> Now that the ICP is set, what's the plan for going to market with [product]?

## /fds:profile — build a stakeholder profile

> Build a stakeholder profile for [name], [title] at [account]. Classify the function as User, Buyer, Sponsor or Enabler and fill the Incentive/Constraint frame across monetary, time, risk and feasibility.

> Profile [name] at [account] for me. What do they get paid on, what are they afraid of, and how do they decide?

## /fds:diagnose — diagnose the account's movement

> Diagnose [account]'s movement across Awareness, Familiarity and Value. Cite a signal for every YES, apply the tie rule, and name the actions permitted at the diagnosed movement.

> Where does [account] sit with us right now: do they know us, trust us, or are they ready to buy?

## /fds:thesis — generate a thesis and value provocation

> Generate a thesis for [public company] from public sources. Label every claim KNOWN with its URL or INFERRED with method and confidence, write the one-page value provocation and the Bridge, compute the response window, and report the gates.

> Build me a point of view on [company] I could send to their [title] tomorrow, with the sources attached.

## /fds:frame — frame a dual-frame value proposition

> Construct a dual-frame value proposition for [name], [title] at [account]: Cost of Inaction with named, cited peers and Value of Action anchored in their own public commitments. Run all six gates including the FUD test.

> What does it cost [account]'s [title] to do nothing, and what do they gain if they act? Use their own numbers and name the peers.

## /fds:score — score an opportunity

> Score [account] on Movement, FDRI and Velocity. Show the arithmetic for each mean, compute the composite with the stated rounding, apply the Movement Floor, and name the risk pattern and the next action.

> Here's my pipeline: [paste accounts with what you know]. Rank them and tell me which ones I'm kidding myself about.

## /fds:velocity — diagnose deal velocity

> Analyze the velocity profile of [account]. Map open wait states by category, score the six indicators, recommend compression interventions, and record the "when not to accelerate" test.

> [Account] has been sitting for [N] weeks. What's actually stuck, and should I even be pushing?

## /fds:coach — get coached on a live deal

> Coach me on [account]. Read the last five interactions or the last 30 days, diagnose on the Movement, Stakeholder and Velocity axes, and produce the five-section coaching record with a sequenced recovery plan. My goal is [stated goal by date].

> My deal at [account] went quiet after the demo. The [title] loved it and now nothing. What did I get wrong and what do I do this week?

## /fds:disqualify — decide whether to disqualify

> Evaluate [account] against the five disqualification trigger categories. If disqualification is supported, draft the prospect-addressed artifact and apply the three quality principles before recommending delivery.

> Should I walk away from [account]? Be straight with me.

## /fds:revise — revise a thesis on prospect response

> The prospect at [account] responded to the thesis with [paste the response]. Classify each thesis component as Confirm, Correct or Ignore, make the revisions visible, and update the Bridge.

> [Account] wrote back and said [summary]. Update the thesis and tell me what changed.

## /fds:converge — mobilize cross-functional help

> Recommend a convergence action for [account]. Walk the six triggers; if one fires, produce the mobilization request with named owners and dates, and run the bidirectionality and Pride Test checks.

> Do I need to pull engineering or customer success into [account] yet, and what exactly am I asking them for?

---

## When the agent gets stuck

The agent will sometimes stop and say it cannot produce the artifact. Read the reason; it is usually one of four.

1. **No qualified ICP.** Every operational command checks for one. Run `/fds:icp`, then `/fds:gtm`, then try again.
2. **No KNOWN anchor.** The research log has no fetched source for a thesis component. The account may be too early for a thesis (run `/fds:diagnose`; Awareness-stage accounts get Awareness-stage actions) or too opaque to source (run `/fds:disqualify` and let the triggers decide).
3. **Movement Floor.** You asked for a Value-stage artifact (pilot proposal, business case, demo) on an account whose Familiarity is below 2. The command surfaces the floor and routes to Familiarity work. Run `/fds:thesis` for an unasked value delivery instead, then `/fds:diagnose` again after the window closes.
4. **Doctrine Constraint Layer.** Your instruction conflicts with a rule. A pace adjustment ("compress Familiarity to 45 days") proceeds without a flag. A doctrinal bypass ("skip Familiarity", "ship without the reviewer") is surfaced with its cost and needs your explicit confirmation; it is logged. A doctrinal violation ("present INFERRED as KNOWN") is refused with an alternative offered. Decide whether to revise the instruction or confirm the bypass.

If none of the four applies, ask the agent to name the failing gate check. Every gate reports the check that failed, and the fix is almost always one more fetched source or one more diagnosed account.
