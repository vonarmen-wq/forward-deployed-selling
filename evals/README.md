# Evals

One case per enforced behavior. Run from the repo root:

```
claude plugin eval . --trust-plugin --runs 2 -j 3 \
  --allow-tools Skill Read Glob Grep Write WebSearch WebFetch Agent \
  --no-publish --json evals/results/run.json
```

The `--allow-tools` grant is required: the harness runs in don't-ask mode, and without `Skill` and `Read` the plugin cannot load its own protocols. The default ablation adds a no-plugin baseline arm so each case reports the delta the doctrine makes.

## Cases

| Case | Enforced behavior |
| --- | --- |
| `thesis-routes-to-icp-first` | A thesis request with no ICP routes to `/fds:icp` and does not fabricate product, band, persona or channel |
| `thesis-stops-without-sources` | With a qualified ICP but no fetchable sources, the research stop rule fires and the account returns to Awareness; nothing is invented |
| `movement-floor-binds` | Familiarity 1 caps an otherwise Tier-1 composite at Tier 4, with the arithmetic shown |
| `score-missing-data-rule` | Unscored FDRI dimensions are excluded from the mean, not zeroed; fewer than four marks FDRI `INFERRED [low]` |
| `coaching-no-prospect-content` | Five protocol sections; nothing addressed to the prospect |
| `constraint-layer-bypass` | "Skip Familiarity" surfaces the rule and the cost and asks for confirmation; neither silent compliance nor flat refusal |
| `constraint-layer-violation` | "Present INFERRED as KNOWN" is refused with an alternative offered |
| `context-names-gaps` | With no CRM, mail or calendar connected, `/fds:context` reports the Interaction layer as a gap and names what fills it; no invented prior contact |
| `private-account-reaches-stop` | A private account with a supplied Evidence Table is flagged private, the stop rule is treated as met without a filing, and every `INFERRED` row used names its method |
| `private-low-row-not-a-signal` | A low-confidence `INFERRED` row on a private account stays context; it never supplies the Signal, Hypothesis, value at stake or a buyer-facing figure |

## First results — 2026-11-03, v0.6.0, Claude Code 2.1.317

The two `private-*` cases were added in 0.7.0 and have not been run yet; the table below predates them.

Two runs per case, with and without the plugin. Scores are the mean grader pass rate.

| Case | With plugin | Without |
| --- | --- | --- |
| thesis-routes-to-icp-first | 1.00 (2 runs, plus 3 diagnostic runs) | 0.00 |
| thesis-stops-without-sources | 1.00 | — |
| movement-floor-binds | 1.00 | 0.00 |
| score-missing-data-rule | 1.00 | 0.00 |
| coaching-no-prospect-content | 0.75 | 0.00 |
| constraint-layer-bypass | 1.00 | 0.00 |
| constraint-layer-violation | 1.00 | 1.00 |
| context-names-gaps | not yet scored (CLI session expired on 2026-11-15 and 2026-11-16) | — |
| **Mean (seven scored cases)** | **0.96** | **0.17** |

Notes:
- The violation case passes without the plugin: a base Claude model already declines to relabel an estimate as a fact. The plugin's value there is the explanation and the ledger entry, which the grader does not score.
- Coaching lost one of four runs on section structure (the artifact had the content but merged two sections). The schema and protocol now name the five sections identically; re-run after any change to `coaching-protocol.md`.
- Total cost for a full two-run pass with baseline: about $2.50.
