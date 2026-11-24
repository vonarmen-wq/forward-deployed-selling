# Crunchbase → FDS

Optional. Present only when the seller has connected it. One more `KNOWN` source type for private accounts; never a requirement.

## Objects
`organizations` → the account. `funding_rounds` → Financial signal rows. `people` → titles and functions only.

## Field map

| FDS field | Crunchbase |
| --- | --- |
| `context.account_type` | `organizations.ipo_status` → private unless `public` |
| `context.company[]` Financial signal | `funding_rounds.announced_on`, `money_raised`, `investment_type` → `KNOWN [crunchbase:funding_round:<uuid>]` |
| `context.company[]` Financial signal | `organizations.revenue_range` → `INFERRED [crunchbase range] [low]`; raise to medium only when a second independent method agrees |
| `context.company[]` Organizational | `organizations.num_employees_enum` → input to the headcount proxy |
| `context.stakeholder[]` | `people.title` → U/B/S/E by title; `unknown` where unclear |
| `context.timing[]` | last round `announced_on` + 18–24 months → `INFERRED [funding cadence] [medium]` |

## Query rules
Read-only; the named account only; ranges are labeled low until triangulated; cite the underlying press release or Form D to the prospect, not this source.
