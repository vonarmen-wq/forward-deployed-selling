# PitchBook → FDS

Optional. A paid data source, present only when the seller has connected it. When present it is one more `KNOWN` source type for private accounts; the private source ladder in `agents/account-researcher.md` reaches the stop rule without it.

## Objects
`companies` → the account. `deals` (financing rounds) → Financial signal rows. `people` → read only titles and functions for the U/B/S/E taxonomy; never personal history.

## Field map

| FDS field | PitchBook |
| --- | --- |
| `context.account_type` | `companies.ownership_status` → private unless publicly listed |
| `context.company[]` Financial signal | `deals.deal_date`, `deals.deal_size`, `deals.deal_type` → `KNOWN [pitchbook:deal:<id>]` |
| `context.company[]` Financial signal | `companies.revenue` where present → `KNOWN [pitchbook:company:<id>]`; where estimated by PitchBook, `INFERRED [pitchbook estimate] [medium]` |
| `context.company[]` Organizational | `companies.employee_count` → input to the headcount proxy; the row is `INFERRED [headcount proxy]` |
| `context.stakeholder[]` | `people.title`, `people.function`; `function` mapped to U/B/S/E by title; `unknown` where unclear |
| `context.timing[]` | last `deals.deal_date` + 18–24 months → `INFERRED [funding cadence] [medium]` |

## Query rules
Read-only; the named account only; estimates are labeled as estimates, never as facts; nothing from this source is cited to the prospect by name (the Pride Test: cite the public filing or press release behind it instead).
