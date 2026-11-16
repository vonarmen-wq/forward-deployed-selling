# Contributing

## Status

The current release is 0.6.0. Angel Armendariz is the sole maintainer and every change flows through him. Issues and discussion are welcome, and pull requests are reviewed; a pull request that adds or changes a protocol must come with an eval case that fails before the change and passes after it.

## The rules that keep the repository coherent

1. Any label, band, threshold, formula or gate is defined once, in `skills/forward-deployed-selling/references/canon.md`, and every protocol links to that definition rather than restating it.
2. Every protocol's frontmatter names the records it consumes and the record it emits, using the names in `schemas/`.
3. Every protocol ends with a `## Gate` section whose checks are numbered and whose pass count matches the Gates table in canon.
4. Version talk belongs in `CHANGELOG.md` and `KNOWN_ISSUES.md`; a protocol file never mentions a release.
5. Examples use invented companies, `.example` URLs and labeled figures, and each one passes the gates it claims to pass.
6. Protocols and examples use the declarative, role-based register described in `ARCHITECTURE.md` under Voice.

## Testing

```
claude plugin validate . --strict
claude plugin eval . --trust-plugin --runs 2 \
  --allow-tools Skill Read Glob Grep Write WebSearch WebFetch Agent --no-publish
```

The tool grant is required: without `Skill` and `Read` the plugin cannot load its own files during an eval. Add a case under `evals/<kebab-name>/` with a `prompt.md` and at least one grader in `graders/`; `evals/README.md` lists the existing cases and the first results.

## Versioning

Semver, in `.claude-plugin/plugin.json`. A patch release changes wording or examples; a minor release adds or changes a protocol, command, agent or hook; a major release changes a canon definition that existing ledgers depend on.

## License and attribution

Copyright 2026 Caerus Capital Group, LLC, under Apache 2.0 (`LICENSE`, `NOTICE`). Contributions are licensed to Caerus Capital Group, LLC on the same terms. The "Forward Deployed Selling" name and the "FDS Certified" mark are held by Caerus Capital Group, LLC, and commercial use of the methodology name requires a separate license from [forwarddeployedselling.com/license](https://forwarddeployedselling.com/license).

## Reporting issues

File an issue when a protocol contradicts `canon.md`, when an example no longer matches its protocol, when an eval is flaky, or when field experience contradicts a design target (include your N).
