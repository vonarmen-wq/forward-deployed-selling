# Architecture

What lives in the repository, how it loads, and the one rule that keeps it consistent.

## Layout

```
.claude-plugin/plugin.json        Manifest. Version lives here and nowhere else.

skills/forward-deployed-selling/
  SKILL.md                        The router. Loaded whenever the skill triggers. Architecture,
                                  decision hierarchy, command table, constraint layers, Output
                                  Standards. Under 500 lines; it points, it does not restate.
  references/canon.md             Every definition, label, band, threshold, formula and gate.
                                  Wins any disagreement with any other file.
  schemas/                        Typed records each protocol consumes and emits.
  connectors/                     Field maps from CRM, mail, calendar and file stores to those records.
  capabilities/                   Targeting and operational protocols (ICP, GTM, framing,
                                  coaching, disqualification, revision, convergence).
  references/                     Operational protocols (thesis, profiles, movements, velocity,
                                  scoring).
  examples/                       One synthetic worked example per artifact type, plus
                                  getting-started.md. Read before producing the same kind.
  foundations.md                  Why the doctrine is shaped this way. Essays. Not for artifact
  foundations-appendix.md         generation.

commands/                         Twelve /fds:* commands. Each loads canon + one protocol,
                                  checks prerequisites, runs the gate, writes the ledger.
agents/                           account-context (memory + connectors + web → Context Stack),
                                  account-researcher (fetch-only), scorer (compute-only),
                                  doctrine-reviewer (grades what it did not write).
hooks/                            Stop: blocks unlabeled numerals in artifacts.
                                  UserPromptSubmit: injects the Doctrine Constraint Layer.
evals/                            One case per enforced behavior; `claude plugin eval` runs them.
CHANGELOG.md · KNOWN_ISSUES.md · CONTRIBUTING.md · LICENSE · NOTICE
```

## How it loads

Token cost scales with the task. The router loads on trigger. A command loads `canon.md`, its one protocol, its schema and its matching example. Agents run in their own context and return a structured block. Nothing else enters the conversation.

## The consistency rule

A term is defined once, in `canon.md`. A protocol that needs a definition links to it. A protocol that restates a definition is a bug; file it. This is what stopped v0.5's drift (three label formats, two deal-size tables, two cycle-compression figures), and it is the only rule contributors have to internalize.

## Enforcement, by mechanism

| Commitment | Held by |
| --- | --- |
| No unsourced numbers | Stop hook + reviewer |
| No fabricated sources | researcher returns only fetched URLs |
| Pride Test and Output Standards | reviewer agent |
| Targeting and movement before operation | command prerequisite checks against schemas |
| Compress, don't skip | Movement Floor on the Familiarity sub-score |
| Doctrine Constraint Layer | UserPromptSubmit hook |
| Audit trail | ledger line per artifact, in project memory |
| Private context stays private | Interaction layer from connectors or the seller only; connector reads are read-only and account-scoped |

## Voice

Roles, not personalities: the agent, the seller, the machine. Declarative sentences; rules, not suggestions; labeled numbers. The README is the one exception, because it addresses the person deciding whether to install.
