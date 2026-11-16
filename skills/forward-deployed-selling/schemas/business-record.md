# Business Record

Emitted by `/fds:context` (seller side). Read by every command. Written once per product line and refreshed when pricing, references or team capacity change. This is what stops `/fds:icp` from interviewing the seller every time.

Stored at `fds/_business/<product-handle>.md` in project memory.

```
business:
  product:
    handle:             short slug, e.g. "lattice-cdp"
    name:
    one_line:           what it does, for whom
    capabilities:       3–5 named, concrete ("identity resolution across loyalty, booking and app data")
    deployment:         SaaS | hybrid | on-prem; typical implementation time
  commercial:
    acv_band:           canon.md deal-size band, with the typical range
    pricing_posture:    per-seat | platform fee | usage | outcome-linked
    contract_norm:      term, renewal, pilot structure if any
  proof:
    wins:               [ {account_or_anonymized, industry, outcome, labeled} ]
    references:         [ {name_or_role, industry, willing_to: call | quote | case study} ]
    demonstrations:     what the seller can show in 4 h / 20 h / 60 h (canon demonstration ladder)
  buyers_so_far:
    titles_that_signed: [ title, count ]
    titles_that_blocked:[ title, reason ]
  team:
    sellers:            count and seniority
    capacity:           hours per week available for demonstration artifacts [design target until measured]
    convergence_pool:   roles that can be pulled into a deal (SE, product, CS, finance) and their SLA
  limitations:          where the product falls short, in the seller's own words (feeds the Trust Protocol briefing)
  as_of:                YYYY-MM-DD
  sources:              CRM export, pricing sheet, win/loss notes, or "stated by seller" per field
```

Every field is `KNOWN [source]` or `stated by seller`. The agent never fills a field it was not given; a missing field stays missing and is listed under `unknown`.
