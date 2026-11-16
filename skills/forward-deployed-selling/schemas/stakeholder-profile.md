# Stakeholder Profile

Emitted by `/fds:profile`. Required by `/fds:frame`, `/fds:coach`.

```
profile:
  account:
  person:               name, title
  function:             User | Buyer | Sponsor | Enabler         (canon.md taxonomy)
  as_of:                YYYY-MM-DD
  identity:             role, tenure, prior roles, public positions taken   (KNOWN rows with URLs)
  decision_intelligence:
    decides:            what this person can approve alone
    defers_to:          who they need
    style:              INFERRED [method] [confidence]
  situational_context:  the 2–3 pressures on them now, each labeled
  engagement_context:   prior interactions, channel history, response latency observed
  approach:
    message_anchor:     their own stated commitment the thesis attaches to (KNOWN, URL)
    seniority_class:    Director | VP | C-suite | CEO/Board     (response-window multiplier)
    channel:            warm-intro | email | linkedin | mail     (response-window multiplier)
    artifact:           thesis | value provocation | Bridge | value proposition   (the Familiarity-class artifact this profile supports; gate 5)
  incentive_constraint:
    monetary:   { incentive: , constraint: }
    time:       { incentive: , constraint: }
    risk:       { incentive: , constraint: }
    feasibility:{ incentive: , constraint: }
  sources:              every URL cited above, deduplicated
  gate:                 n/5
```

Every row under `identity`, `situational_context` and `approach.message_anchor` is a labeled claim. Red Light sources are never consulted; Yellow Light inferences are marked for human review.
