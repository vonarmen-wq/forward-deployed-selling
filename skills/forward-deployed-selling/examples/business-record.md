Synthetic example. Companies, people, figures and sources are invented to illustrate the protocol; they are not data.

# Business Record — Lattice Revenue Systems / Lattice Pipeline
Protocol: context (seller side) · Schema: schemas/business-record.md · As of: 2026-11-03

Generated 2026-11-03. The seller-side record behind `examples/icp-definition.md`, `examples/gtm-strategy.md` and `examples/private-account-example.md`. Demonstrates `schemas/business-record.md` filled the way `/fds:context --business` fills it: every field `KNOWN [source]` or `stated by seller`, and the fields the seller did not supply listed under `unknown` rather than estimated. Seed a clean project with this file at `fds/_business/lattice-pipeline.md` to run the Lattice examples end to end.

---

```
business:
  product:
    handle:             lattice-pipeline
    name:               Lattice Pipeline                                                     stated by seller
    one_line:           Revenue-intelligence platform for mid-market B2B SaaS revenue teams: per-deal velocity scoring, wait-state detection and forecast-accuracy diagnostics from CRM activity, call transcripts and email metadata.   stated by seller
    capabilities:
      - Per-deal velocity scoring against the segment's phase benchmarks                    stated by seller
      - Wait-state detection: which deals are waiting on whom, for how long                 stated by seller
      - Forecast-accuracy diagnostics by rep, stage and quarter                             stated by seller
      - Certified native connectors for the two dominant CRM platforms in the segment       KNOWN [https://docs.latticerevenue.example/connectors]
    deployment:         SaaS; six-week median implementation                                KNOWN [https://docs.latticerevenue.example/implementation-guide]
  commercial:
    acv_band:           Mid-market (canon); $80K–$240K by seat count and usage tier         KNOWN [https://wiki.latticerevenue.example/pricing/2026-rate-card]
    pricing_posture:    platform fee plus per-seat tier                                     KNOWN [https://wiki.latticerevenue.example/pricing/2026-rate-card]
    contract_norm:      12-month term, annual renewal; 60-day paid pilot available at Familiarity 3 or above   stated by seller
  proof:
    wins:
      - {account_or_anonymized: "mid-market SaaS, $140M ARR, anonymized", industry: B2B SaaS, outcome: "forecast variance from 14% to 6% in two quarters", label: KNOWN [https://wiki.latticerevenue.example/winloss/2026-q2#acct-07]}
      - {account_or_anonymized: "mid-market SaaS, $85M ARR, anonymized", industry: B2B SaaS, outcome: "median cycle 112 to 94 days", label: KNOWN [https://wiki.latticerevenue.example/winloss/2026-q3#acct-11]}
    references:
      - {name_or_role: "VP Revenue Operations, acct-07", industry: B2B SaaS, willing_to: call}
      - {name_or_role: "CRO, acct-11", industry: B2B SaaS, willing_to: quote}
    demonstrations:
      4h:   forecast-variance benchmark from the prospect's public review corpus and three named public peers   stated by seller
      20h:  wait-state map built from a redacted export of the prospect's CRM stages                           stated by seller
      60h:  60-day paid pilot on one sales team with a before/after forecast-accuracy readout                  stated by seller
  buyers_so_far:
    titles_that_signed:
      - [VP Revenue Operations, 9]                                                           KNOWN [https://wiki.latticerevenue.example/winloss/2026-summary]
      - [Chief Revenue Officer, 5]                                                           KNOWN [https://wiki.latticerevenue.example/winloss/2026-summary]
    titles_that_blocked:
      - [VP Sales, "owned the forecast personally and read the tool as an audit"]            KNOWN [https://wiki.latticerevenue.example/winloss/2026-summary#losses]
      - [Head of IT, "unsupported CRM, no migration planned"]                                KNOWN [https://wiki.latticerevenue.example/winloss/2026-summary#losses]
  team:
    sellers:            3 account executives (two senior, one second-year); 1 solutions engineer   KNOWN [https://wiki.latticerevenue.example/gtm/capacity-plan-q4-2026]
    capacity:           12 hours per week for demonstration artifacts across the team [design target until measured]
    convergence_pool:   SE (same day), product manager (48 h), customer success lead (48 h), finance for pilot pricing (5 business days)   KNOWN [https://wiki.latticerevenue.example/gtm/capacity-plan-q4-2026]
  limitations:
    - Reads CRM activity and call data; does not replace a planning model, so a board-grade forecast still needs one     stated by seller
    - Two CRM platforms supported natively; any other CRM needs a migration first                                       stated by seller
    - Shows value only where the median cycle exceeds about 60 days; short-cycle motions see little                     stated by seller
  as_of:                2026-11-03
  sources:              pricing rate card, win/loss summary, capacity plan (wiki, URLs above); product and limitation fields stated by seller
unknown:
  - Gross retention and net revenue retention (not supplied)
  - Implementation failure count (not supplied)
```

---

## What this record does downstream

- `/fds:icp` reads `product`, `commercial.acv_band` and `buyers_so_far` and does not interview the seller for them; the ICP in `examples/icp-definition.md` qualifies against this record.
- `/fds:thesis` reads `proof.demonstrations` to shape the Bridge (the 4-hour artifact at Familiarity 2; the 20-hour and 60-hour artifacts only at Familiarity 3) and `limitations` to write the Trust Protocol section.
- `/fds:score` reads `team.capacity` to decide whether a demonstration artifact can be promised inside the response window.
- `/fds:coach` reads `buyers_so_far.titles_that_blocked` when a deal stalls on a persona this seller has lost to before.
