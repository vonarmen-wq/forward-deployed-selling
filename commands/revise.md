---
description: Revise a delivered thesis after a prospect response, or after silence past its computed window. Runs a signal diff first; silence never triggers a nudge.
argument-hint: <account> [paste the response, or "silence"]
allowed-tools: [Read, Write, WebSearch, WebFetch, Agent]
---

Run the Forward Deployed Selling thesis-revision protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md` (Response window), then `capabilities/thesis-revision-protocol.md`.
2. Prerequisites: a delivered Thesis in `fds/<account>/thesis-v<n>.md` with `delivered_on` and `window_W` set. None → there is nothing to revise; suggest `/fds:thesis`.
3. Classify the trigger:
   - **Response** (substantive, partial, brief): go to step 5.
   - **Silence**: compute business days since `delivered_on`. Fewer than W → report how many days remain and end; reading silence early is a Doctrinal Bypass. W or more → step 4.
4. Signal diff. Launch `account-researcher` with the original Evidence Table and ask for a diff only. Three outcomes per canon:
   - A KNOWN row changed materially → proceed to step 5 with the change as the trigger.
   - No change, first window → deliver the Bridge artifact the thesis promised; set a second window at 1.5×W; ledger; end.
   - No change, second window → mark the thesis dormant; set `re-diagnose` in one quarter; ledger; if this is the second dormant cycle, name the disqualification trigger and suggest `/fds:disqualify`; end.
5. Revision. For each of the five components classify Confirm / Correct / Ignore with the evidence. Make corrections visible (the prospect should see what changed and why). Update the Bridge. Recompute W if the stakeholder, channel, or season changed.
6. Launch `doctrine-reviewer` on the revised thesis. Verdict in the header.
7. Write `thesis-v<n+1>.md` with the revision log, append a Ledger Entry recording the trigger and the observed latency (for the response-window learning rule), and deliver the revised provocation.
