---
description: Score one opportunity or a whole pipeline: Movement, FDRI, Velocity, composite, tier, with the Movement Floor and missing-data rule applied by a computation-only agent.
argument-hint: <account | "pipeline">
allowed-tools: [Read, Write, Agent]
---

Run the Forward Deployed Selling scoring protocol for: $ARGUMENTS

1. Read `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/references/canon.md` (Scoring and Velocity sections), then `references/scoring.md` and `schemas/score-card.md`.
1a. Context. Read `fds/_business/` for the Business Record (what the seller sells; without one, ask for product, ACV band, persona and channel in one message, or point to `/fds:context --business`). Then, unless a Context Stack under 14 days old exists at `fds/<account>/context-*.md`, launch the `account-context` agent for the account; it reads memory, any connected CRM, mail, calendar and files per `${CLAUDE_PLUGIN_ROOT}/skills/forward-deployed-selling/connectors/`, and the public web, and returns the five-layer Context Stack with sources. Use its Deal Record if it wrote one.
2. Prerequisites: a Deal Record per account (`schemas/deal-record.md`) and a Movement Diagnosis under 30 days old. For "pipeline", gather every `fds/*/deal-record.md` in project memory. A missing diagnosis is produced with `/fds:diagnose` first. A Deal Record the seller has not supplied is not invented; ask for it, listing the fields.
3. Launch the `scorer` agent with the Deal Record(s) and Diagnosis(es). It computes only: sub-scores, means over scored dimensions (nulls excluded), composite with arithmetic shown, rounding, uncapped tier, Movement Floor from the Familiarity sub-score, binding tier. It does not write prose and does not change inputs.
4. Read `examples/pipeline-scoring.md`. Around the scorer's numbers, write the Score Card: risk patterns (from scoring.md, each with its one-line reading), 1–3 next actions each tied to the lowest sub-score, the close-probability prediction [design target].
5. If fewer than four FDRI dimensions had data, label FDRI `INFERRED [low]` and make "fill the missing dimensions" the first next action.
6. Gate: floor applied, missing-data rule applied, rounding stated. Put the result in the header.
7. Write `fds/<account>/score-card.md` and append a Ledger Entry. For "pipeline", deliver one table sorted by binding tier, then composite.
