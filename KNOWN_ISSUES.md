# Known Issues

## Design targets pending field benchmark

Every figure below is the doctrine's intended operating profile, not a measurement. The ledger introduced in 0.6 (`canon.md` → Ledger record) records predictions and outcomes per artifact; when a claim has 30 or more ledger records, its `[design target]` label is replaced by `[field benchmark, N=…, period]`. Reviewed at every version increment.

| Where | Claim |
| --- | --- |
| `references/thesis-protocol.md` | Response 23% · meeting 12% · opportunity 8% · deal size 2.4× inbound · ~24 h machine time per 12 conversations |
| `references/canon.md` → Response window | All multiplier values; the 5-day floor is a rule, not a claim |
| `references/canon.md` → Deal-size bands | Typical cycle per band (60/120/240/360 days) |
| `references/canon.md` → Scoring; `references/scoring.md` | 60% capacity gain from 120→75 day compression; FDRI starting range 0.8–1.4 |
| `references/deal-velocity.md` | 120-day cycle / 30 active / 90 dead; high 70–90%, moderate 30–50%, low 10–20% compression; phase benchmark split 20/30/30/20 |
| `references/scoring.md` | Expected close rate by tier; portfolio distribution ranges |
| `references/movements.md` | Familiarity 90 days default, 30-day floor; hours per movement action |
| `SKILL.md` | Demonstration hour ranges by type |
| `capabilities/icp-definition-protocol.md` | 10% of the addressable universe as target list |

Operational SLAs in `canon.md` → Velocity are doctrine-defined thresholds, not performance claims, and are not marked.

## Open items for 0.7

- Field benchmarks from the ledger once N ≥ 30 per claim.
- Nightly `signal-watch` Routine that runs the researcher diff and fires `/fds:revise` on a material change.
- Claude Tag (Slack) entry point for `/fds:score` in deal channels.
- Connector maps are prose the agent follows; a field-level test against a live Salesforce or HubSpot sandbox has not been run. `connectors/generic.md` handles unmapped sources by field meaning and saves the map for correction.
- The `context-names-gaps` eval case has not been scored (CLI session expired); the other eight ran on 2026-11-03 and 2026-11-16.
- No worked example exists yet for the Disqualification Memo or the Mobilization Request; the commands point at the coaching example's handoff triggers.
- Whether plugin-shipped agents honor `memory: project` on every surface; if not, the ledger falls back to `fds/<account>/ledger.md` in the working directory.
