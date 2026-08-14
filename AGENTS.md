# AGENTS.md

This is a polyglot repository. Four languages live side by side, each self-contained
in its own directory with its own real formatter, linter, type checker, and tests.

## The one command that gates every change

```
bash scripts/test-all.sh
```

Run it before you open a PR. It must exit 0. CI runs the same per-language checks.
If it fails, read the failing suite's output, fix that language's code, and re-run.
Do not touch a language subtree you were not asked to change.

## Layout

| Dir   | Language   | Package manager | Gate for that language                                   |
|-------|------------|-----------------|----------------------------------------------------------|
| `py/` | Python     | uv              | `ruff format --check` + `ruff check` + `mypy --strict` + `pytest` |
| `rs/` | Rust       | cargo           | `cargo fmt --check` + `cargo clippy -D warnings` + `cargo test`   |
| `ts/` | TypeScript | bun             | `tsc --noEmit` + `bun test`                              |
| `go/` | Go         | go modules      | `gofmt -l` + `go vet` + `go test`                        |

## Conventions

- Formatting is enforced, not debated. Run the formatter, do not hand-tune style.
- Keep files small and focused: one unit of behavior per file where reasonable.
- Every new function ships with tests in that language's test file/module.
- Work merges into the `staging` branch, never `main`.
