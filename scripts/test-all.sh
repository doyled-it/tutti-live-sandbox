#!/usr/bin/env bash
# The one canonical gate. Every language suite must pass, in order, fail-fast.
# CI runs the same per-language checks. Run this before opening a PR.
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "== Python (py/) =="
(
  cd "$root/py"
  uv run ruff format --check .
  uv run ruff check .
  uv run mypy --strict src
  uv run pytest
)

echo "== Rust (rs/) =="
(
  cd "$root/rs"
  cargo fmt --check
  cargo clippy --all-targets -- -D warnings
  cargo test
)

echo "== TypeScript (ts/) =="
(
  cd "$root/ts"
  bun install --silent
  bunx tsc --noEmit
  bun test
)

echo "== Go (go/) =="
(
  cd "$root/go"
  test -z "$(gofmt -l .)"
  go vet ./...
  go test ./...
)

echo
echo "All four suites passed."
