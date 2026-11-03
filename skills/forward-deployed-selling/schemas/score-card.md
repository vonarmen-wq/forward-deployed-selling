# Score Card

Emitted by `/fds:score` (the `scorer` agent). Required by `/fds:coach`, `/fds:disqualify`, `/fds:converge`.

```
score:
  account:
  as_of:                YYYY-MM-DD
  movement:             { awareness: 0-3, familiarity: 0-3, value: 0-3, total: 0-9, signals: [cited per point] }
  fdri:                 { dimensions: {name: 0-3 | null} ×6, scored_count: n, mean: x.xx, label: KNOWN|INFERRED [low] }
  velocity:             { indicators: {name: 0-3 | null} ×6, scored_count: n, mean: x.xx }
  composite:            0.4×(total/9) + 0.35×(fdri/3) + 0.25×(velocity/3), shown with arithmetic, rounded 2dp half-up
  tier_uncapped:        1-5
  movement_floor:       cap from canon (Familiarity 0–1 → Tier 4; 2 → Tier 3; 3 → none)
  tier:                 the binding tier
  risk_patterns:        [ from canon/scoring.md, each with the one-line reading ]
  next_actions:         [ 1–3, each tied to the lowest sub-score ]
  prediction:           { close_pct [design target] }
  gate:                 floor applied · missing-data rule applied · rounding stated
```

A dimension with no data is `null`, excluded from the mean, and listed. Fewer than four scored FDRI dimensions makes `fdri.label` `INFERRED [low]` and the card says so in `next_actions`.
