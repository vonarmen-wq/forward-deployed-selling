# Contributing

## Status

0.6.0. Angel Armendariz is sole maintainer; changes flow through him. Issues and discussion are welcome. Pull requests are reviewed, and a PR that adds or changes a protocol must come with an eval case that fails before the change and passes after.

## The rules that keep the repo coherent

1. **Define once.** Any label, band, threshold, formula or gate lives in `skills/forward-deployed-selling/references/canon.md`. Protocols link; they do not restate.
2. **Declare what you consume and emit.** Every protocol's frontmatter names its input and output records from `schemas/`.
3. **Numeric gates.** Every protocol ends with a `## Gate` section with a pass count.
4. **No roadmap in the doctrine.** Version talk goes in `CHANGELOG.md` and `KNOWN_ISSUES.md`, nowhere else.
5. **Synthetic examples.** Invented companies, `.example` URLs, every number labeled.
6. **Voice.** Declarative, role-based, labeled. Read `ARCHITECTURE.md` → Voice.

## Testing

```
claude plugin validate . --strict
claude plugin eval .
```

`evals/` holds one case per enforced behavior. Add a case under `evals/<kebab-name>/` with a `prompt.md` and at least one grader in `graders/`. The layout is the one `claude plugin eval` reads.

## Versioning

Semver in `.claude-plugin/plugin.json`. Patch for wording and example fixes; minor for a new or changed protocol, command, agent or hook; major when canon changes a definition that existing ledgers depend on.

## License and attribution

Apache 2.0 (`LICENSE`, `NOTICE`). The "Forward Deployed Selling" name and "FDS Certified" mark are protected; commercial use of the methodology name requires separate licensing per [forwarddeployedselling.com/license](https://forwarddeployedselling.com/license).

## Reporting issues

File an issue for: a protocol contradicting `canon.md`; an example that no longer matches its protocol; an eval that is flaky; a design target that field experience contradicts (include your N).
