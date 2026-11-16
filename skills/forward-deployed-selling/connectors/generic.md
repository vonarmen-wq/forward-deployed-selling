# Any other source → FDS

The named maps (Salesforce, HubSpot, mail, calendar, files) cover the common cases. This file is how the `account-context` agent handles everything else: a CRM it has no map for (Pipedrive, Dynamics, Zoho, Attio, a homegrown system), a knowledge base (Notion, Confluence, Guru, Slack, a wiki), a data warehouse, a call-recording tool, or any MCP server the seller has connected. The rule is that the FDS record fields are fixed and the source adapts to them, never the reverse.

## Discovery procedure

Run once per unfamiliar source, before pulling anything for an account.

1. **List the source's tools.** Read each tool's name and description. Classify the source: `crm` (has deals/opportunities and contacts), `messages` (threads with external participants), `calendar` (events with attendees), `documents` (pages or files with text), `warehouse` (tables), `recordings` (transcripts).
2. **Probe with one read.** Query the source for the account name and read the first record's fields. Do not pull more than one record yet.
3. **Map by meaning, not by name.** For each field returned, ask which FDS field it answers (table below). A field that answers none is ignored. Record the mapping as `fds/_connectors/<source>.md` in project memory, in the same three-section shape as `salesforce.md`, so the next run does not rediscover it.
4. **Say what was mapped.** The first Context Stack built from a new source lists the mapping under `sources_read` so the seller can correct it. A correction from the seller overrides the inferred map and is written as `stated by seller`.

## Semantic field map

| FDS field | Look for a field that holds… | Typical names |
| --- | --- | --- |
| `deal.acv_estimate` | the money value of the open deal | amount, value, arr, acv, expected_revenue |
| `deal.phases[]` | a stage name with a timestamp of when it was entered | stage, status, pipeline_step + history/changed_at |
| `deal.stakeholders[].function` | the person's role in the decision | role, buying_role, persona, influence; map by canon U/B/S/E: signs → Buyer, carries internally → Sponsor, uses → User, can block → Enabler; unknown → `unknown`, never guessed from title alone |
| `deal.stakeholders[].engaged` | any dated activity by that person in 90 days | last_activity, last_contacted, engagements |
| `deal.wait_states[]` | an open item owed by someone, with a date | task, todo, action_item, follow_up with status open |
| `deal.interactions[]` | a dated touch with an external person | activity, engagement, email, call, meeting, note, transcript |
| `deal.next_signal_event` | a future dated event the deal depends on | close_date (only when probability ≥ 50%), renewal_date, decision_date |
| `deal.competitive` | named alternatives | competitor, alternatives, incumbent |
| `context.company[]` | facts about the organization | company_notes, account_plan, research, overview |
| `context.situation[]` | pressures the prospect named | pain, challenge, objective, call_notes, transcript |
| `context.timing[]` | dated events ahead | renewal, contract_end, fiscal_year_end, board_date |
| `business.proof.wins[]` | closed-won records or case studies | closed_won, case_study, reference |
| `business.limitations` | reasons deals were lost or churned | closed_lost_reason, churn_reason, known_issues |

## Knowledge sources specifically

Pages, wikis, Slack channels and transcripts are read for the Company, Situation and Timing layers, one line per distinct claim, labeled `KNOWN [<source>:<page or message id>]` when the page states a fact and `INFERRED [internal note, <date>] [medium]` when it is a colleague's opinion or an earlier account plan. Search by account name and by the stakeholders' names; read at most the ten most recent hits; never read a channel or page about a different customer.

## Rules that do not change by source

- Read only. The plugin writes to project memory, never back to a source.
- Account-scoped. Query by the account; never browse.
- Interaction layer from private sources or the seller only; the web never supplies prior contact.
- Red Light applies at the source: a personal field (home address, family, health, personal phone) is never read into any record even if the source exposes it.
- Nulls stay `unknown`. The agent does not infer ACV from stage, function from title, or engagement from the existence of a contact record.
- The source's own labels for sales stages are mapped to FDS movements only through diagnosis (`/fds:diagnose`), never by name: a CRM "Qualified" stage is not Familiarity.

## When there is no source at all

The agent says so, lists the empty layers, and asks the seller for the minimum that unblocks the next command: for `/fds:score` and `/fds:coach`, the last five touches and the stakeholders with their functions; for `/fds:thesis`, nothing, since the thesis is built from public sources and memory. A record typed by the seller is labeled `stated by seller` and is as valid as one pulled from a system.
