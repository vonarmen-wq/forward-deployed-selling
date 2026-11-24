# Context Stack

Emitted by the `account-context` agent. Consumed by `/fds:thesis`, `/fds:profile`, `/fds:diagnose`, `/fds:score`, `/fds:coach`. The doctrine's five-layer input taxonomy, populated mechanically from memory, connectors, files and the public web, with every row carrying its source.

Stored at `fds/<account>/context-<date>.md`. Current for 14 days or until a new signal.

```
context:
  account:
  account_type:       public | private
  as_of:
  company:            # what the organization is doing
    - {finding, label: KNOWN [url|connector:object] | INFERRED [method] [confidence]}
  stakeholder:        # who the people are, by U/B/S/E function
    - {name, title, function, finding, label}
  situation:          # the pressures now: financial, competitive, regulatory, organizational
    - {finding, label}
  interaction:        # every prior touch, newest first
    - {date, channel, who, summary, outcome, source: crm | mail | calendar | seller}
  timing:             # dated events ahead: earnings, planning, board, renewal, contract end
    - {date, event, label}
  sources_read:       # what the agent actually opened
    memory:  [paths]
    connectors: [ {name, objects_read, records} ]
    files:   [paths]
    web:     [urls]
  gaps:               # layers with fewer than 2 rows, and what would fill them
```

Rules: the Interaction layer comes only from CRM, mail, calendar or the seller's own statement, never from the web. Red Light sources are never read for any layer. A connector that is present but returns nothing is listed under `sources_read` with `records: 0` so the seller knows it was tried.
