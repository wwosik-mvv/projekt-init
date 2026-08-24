# Conventions this repo follows

This file is self-contained: everything an agent needs is here, not behind a link to another
repo or a local drive.

## Repository

- The whole application lives in **one git repo**.
- All project memory is **shared** in `ai/` — never device-local.
- **Temporary and scratch files** go in the repo-root `.tmp/` (git-ignored) — never system temp,
  never AppData.
- Program data lives in a git-ignored `data/` directory.
- Logs roll daily into the git-ignored repo-root `logs/`.
- `AGENTS.md` stays small and points into `ai/`; `CLAUDE.md` only forwards to `AGENTS.md`.

## Folder structure

| Path | Purpose |
| ---- | ------- |
| `ai/` | AI instructions and shared project memory |
| `docs/` | Documentation of how the program actually works |
| `data/` | Program data (git-ignored) |
| `logs/` | Daily rolling logs (git-ignored) |
| `.tmp/` | Scratchpad (git-ignored) |
<!-- slot: folders -->

<!-- slot: tooling -->

<!-- slot: stack-standards -->

<!-- slot: deployment -->

<!-- slot: docs-standards -->

<!-- slot: formatting -->

## Deviations

Where this repo departs from the conventions above — because it predates them, or because
something specific to it demanded it. Anything listed here is deliberate: do not "fix" it
without asking.

| Convention | What this repo does instead | Why |
| ---------- | --------------------------- | --- |
| — | — | — |
