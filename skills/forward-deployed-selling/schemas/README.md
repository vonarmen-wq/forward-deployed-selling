# Schemas

Each protocol declares what it `consumes` and what it `emits` in its frontmatter. Before running, a command checks that every consumed record exists and is current; a missing record is produced by its own command first. A record is a markdown block with the fields below, stored in project memory under `fds/<account>/<record>.md` (or returned inline when no memory is available).

| Record | Produced by | Current for |
| --- | --- | --- |
| ICP Record | `/fds:icp` | one quarter |
| GTM Record | `/fds:gtm` | one quarter, or until the ICP changes |
| Stakeholder Profile | `/fds:profile` | 90 days |
| Movement Diagnosis | `/fds:diagnose` | 30 days, or until a new signal |
| Evidence Table | `account-researcher` | until the next signal event |
| Thesis | `/fds:thesis` | until revised or dormant |
| Value Provocation | `/fds:frame` | tied to its Thesis version |
| Deal Record | seller or CRM | continuously updated |
| Score Card | `/fds:score` | 14 days |
| Velocity Profile | `/fds:velocity` | 14 days |
| Coaching Artifact | `/fds:coach` | per session |
| Disqualification Memo | `/fds:disqualify` | permanent |
| Mobilization Request | `/fds:converge` | until fulfilled |
| Ledger Entry | every command | permanent |

Field definitions: `icp-record.md`, `stakeholder-profile.md`, `deal-record.md`, `thesis.md`, `score-card.md`, `coaching-artifact.md`. Records not listed there (GTM Record, Movement Diagnosis, Evidence Table, Value Provocation, Velocity Profile, Disqualification Memo, Mobilization Request) use the output template in their protocol file. Ledger Entry is defined in `references/canon.md`.
