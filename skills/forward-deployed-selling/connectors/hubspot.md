# HubSpot → FDS

## Objects
`companies` → the account. `deals` (open, associated to the company) → the deal. `contacts` with deal associations → stakeholders. `engagements` (emails, calls, meetings, notes, tasks) → interactions. Deal property history → phases.

## Field map

| FDS field | HubSpot |
| --- | --- |
| `deal.account` | `companies.name` |
| `deal.acv_estimate` | `deals.amount` → `KNOWN [hubspot:deal:<id>]`; annualize if `deals.hs_arr` present |
| `deal.segment` | from amount via canon bands; INFERRED if blank |
| `deal.stakeholders[]` | associated `contacts.firstname/lastname`, `jobtitle`; `function` from `hs_buying_role` (DECISION_MAKER/BUDGET_HOLDER → Buyer, CHAMPION/EXECUTIVE_SPONSOR → Sponsor, END_USER/INFLUENCER → User, LEGAL_AND_COMPLIANCE/BLOCKER → Enabler; blank → `unknown`); `engaged` = engagement in last 90 days |
| `deal.phases[]` | `dealstage` history with timestamps |
| `deal.wait_states[]` | open `tasks` associated to the deal with `hs_task_status != COMPLETED` |
| `deal.interactions[]` | `engagements` on the deal, newest first, last 5 or 30 days |
| `deal.next_signal_event` | `closedate` if `hs_deal_stage_probability ≥ 0.5`; else `unknown` |
| `context.interaction[]` | same rows, `source: crm` |

## Query rules
Same as Salesforce: company name first, read-only, custom properties only when named in the Business Record, nulls stay `unknown`. HubSpot's `champion` buying role maps to Sponsor per canon.
