# Salesforce → FDS

## Objects
`Account` → the account. `Opportunity` (open, on that Account) → the deal. `Contact` + `OpportunityContactRole` → stakeholders. `Task`, `Event`, `EmailMessage` → interactions. `OpportunityHistory` / `OpportunityFieldHistory` → phases.

## Field map

| FDS field | Salesforce |
| --- | --- |
| `deal.account` | `Account.Name` |
| `deal.segment` | derive from `Opportunity.Amount` via canon.md bands (label INFERRED if Amount is blank) |
| `deal.acv_estimate` | `Opportunity.Amount` → `KNOWN [salesforce:Opportunity:<Id>]` |
| `deal.stakeholders[]` | `OpportunityContactRole.Contact.Name`, `.Title`; `function` from `Role` (Decision Maker → Buyer, Economic Buyer → Buyer, Executive Sponsor → Sponsor, Influencer/Evaluator → User, Technical Buyer/Legal/Procurement → Enabler; blank → `unknown`); `engaged` = any Task/Event in last 90 days; `last_touch` = latest ActivityDate |
| `deal.phases[]` | `OpportunityHistory.StageName`, `.CreatedDate` → started/ended; `planned_days` from canon phase benchmark [design target] |
| `deal.wait_states[]` | open `Task` where `Status != Completed` and `WhoId` is a Contact → what, owner (`OwnerId`), opened (`CreatedDate`), age |
| `deal.interactions[]` | `Task`, `Event`, `EmailMessage` on the Opportunity, newest first, last 5 or 30 days whichever is more |
| `deal.next_signal_event` | `Opportunity.CloseDate` only if `Probability ≥ 50`; else `unknown` (earnings dates come from the web, not CRM) |
| `deal.competitive` | `Opportunity.Competitors__c` if present, else `unknown` |
| `context.interaction[]` | same rows as `deal.interactions[]`, `source: crm` |

## Query rules
1. Query by Account name first; if more than one match, list them and stop.
2. Read, never write. The plugin's records live in project memory, not in Salesforce.
3. Custom fields (`__c`) are used only when the seller's Business Record names them under `sources`.
4. A field that returns null stays `unknown`. Do not infer ACV from stage or stakeholder count.
