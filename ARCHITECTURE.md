# Architecture

What lives in the repository, how it loads, and the one rule that keeps it consistent.

## Layout

```
.claude-plugin/plugin.json        Manifest. The version number lives here and nowhere else.

skills/forward-deployed-selling/
  SKILL.md                        The router, loaded whenever the skill triggers. It holds the
                                  architecture, the decision hierarchy, the command table, the
                                  constraint layers and the Output Standards, and points to the
                                  files that hold the rules.
  references/canon.md             Every definition, label, band, threshold, formula and gate.
                                  It wins any disagreement with any other file.
  schemas/                        The typed records each protocol consumes and emits.
  connectors/                     Field maps from CRM, mail, calendar, file and knowledge sources
                                  into those records, plus a discovery procedure for any source
                                  without a map.
  capabilities/                   Targeting and operational protocols: ICP, GTM, value
                                  proposition, coaching, disqualification, revision, convergence.
  references/                     Operational protocols: thesis, profiles, movements, velocity,
                                  scoring.
  examples/                       One synthetic worked example per artifact type, plus
                                  getting-started.md, which addresses the reader directly.
  foundations.md                  The essays on why the doctrine is shaped this way. They are
  foundations-appendix.md         read for teaching and writing, not for artifact generation.

commands/                         Thirteen /fds:* commands. Each loads canon plus one protocol,
                                  checks prerequisites, runs the gate and writes the ledger.
agents/                           account-context (memory, connectors and web → Context Stack),
                                  account-researcher (fetch-only), scorer (compute-only),
                                  doctrine-reviewer (grades what it did not write).
hooks/                            A Stop hook that blocks unlabeled figures in artifacts and a
                                  UserPromptSubmit hook that injects the Doctrine Constraint Layer.
evals/                            One case per enforced behavior; `claude plugin eval` runs them.
CHANGELOG.md · KNOWN_ISSUES.md · CONTRIBUTING.md · LICENSE · NOTICE
```

## How it loads

Token cost scales with the task. The router loads when the skill triggers. A command then loads `canon.md`, its one protocol, its schema and its matching example, and nothing more. Each agent runs in its own context and returns a structured block, so the researcher's fetched pages and the reviewer's reasoning stay out of the seller's conversation.

## The consistency rule

A term is defined once, in `canon.md`, and every protocol that needs it links there. A protocol that restates a definition is a defect to file, because restatement is how v0.5 drifted into three label formats, two deal-size tables and two cycle-compression figures. This is the one rule a contributor has to carry.

## Enforcement, by mechanism

| Commitment | Held by |
| --- | --- |
| No unsourced figures | Stop hook, then the reviewer agent |
| No fabricated sources | The researcher returns only pages it fetched |
| Pride Test and Output Standards | The reviewer agent, which did not write the artifact |
| Targeting and diagnosis before any buyer-facing output | Each command checks the schemas for the records it consumes |
| Value actions only once Familiarity is reached | The action-class rule in canon, checked by every command |
| Doctrine Constraint Layer | UserPromptSubmit hook |
| Private context stays private | The Interaction layer comes from connectors or the seller only; connector reads are read-only and scoped to one account |
| Audit trail | One ledger line per artifact, in project memory |

## Voice

Protocols, schemas and examples name roles (the agent, the seller, the machine) and state rules in declarative sentences with labeled figures. The README and `examples/getting-started.md` address the reader as "you", because each is read by the person deciding whether to install or what to type first.
