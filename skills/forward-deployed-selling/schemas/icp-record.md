# ICP Record

Emitted by `/fds:icp`. Required by every account-level command.

```
icp:
  name:                 short handle, e.g. "mid-market-payers-claims"
  qualified_on:         YYYY-MM-DD
  product:              one line, what is sold
  market:
    industry:           canon.md industry class (drives response-window multiplier)
    segment:            SMB | Mid-market | Enterprise | Strategic   (canon.md band)
    geography:          
    size_signal:        the observable that defines "in market" (revenue band, headcount, system in use)
    exclusions:         what looks in-market but is not, with the signal that reveals it
  persona:
    functions:          [User, Buyer, Sponsor, Enabler] with the title that usually fills each
    incentive:          the one thing the Buyer is measured on that this product moves
    constraints:        monetary / time / risk / feasibility, one line each
  channel:
    primary:            warm-intro | email | linkedin | event | partner | inbound
    why:                the evidence that this channel reaches this persona
  disqualifiers:        3–5 signals that end pursuit early
  gate:                 n/5, with any failed check named
  addressable_universe: [design target] estimated count, and the 10% target list
```
