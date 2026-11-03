# Thesis

Emitted by `/fds:thesis`; revised by `/fds:revise`. Required by `/fds:frame`.

```
thesis:
  account:
  version:              integer, starts at 1
  header:
    targeting:          ICP name + qualified date
    movement:           A{0-3}/F{0-3}/V{0-3}
    protocol:           thesis-protocol.md
    gate:               n/5
    output_standards:   n/5  (from doctrine-reviewer)
    window_W:           business days, with the multiplier arithmetic shown once
    delivered_on:       YYYY-MM-DD | null
  evidence_table:       [ {category, label: KNOWN|INFERRED, source_or_method, finding, confidence?} ]
  components:
    situation:          what is happening, from the evidence
    priority:           what they are likely trying to do about it
    gap:                what they have not solved, and why it is hard
    value_at_stake:     one number, labeled, with the arithmetic
    bridge:             the low-friction offer that lets them react (model, benchmark, comparison)
  provocation:          the one-page buyer-facing artifact: subject line, one insight, the bridge, no pitch
  limitations:          where the seller's solution falls short for this account (Trust Protocol)
  revision_log:         [ {version, date, trigger, confirm[], correct[], ignore[]} ]
  prediction:           { response_pct [design target], meeting_pct, close_pct }   written to the ledger
```

`value_at_stake` is one number used consistently in the components and the provocation. Two different headline numbers in one thesis fails the Evidence standard.
