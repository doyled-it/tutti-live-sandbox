# tutti-live-sandbox

A throwaway, deliberately **polyglot** repository for exercising the Tutti engine end
to end against a real GitHub repo and a real `claude`. It doubles as the reference
shape for Tutti's opinionated scaffold: four languages (Python, Rust, TypeScript, Go),
each with a real formatter/linter/test gate, wired into one canonical gate command and
per-language CI.

Autonomous work merges into the `staging` branch, never `main`. Safe to reset or
delete at any time.

See [`AGENTS.md`](AGENTS.md) for the layout and the one command that gates every change.
