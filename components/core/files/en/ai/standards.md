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

## Git

- **Commit finished work by default.** When a task is done, commit it. Work left sitting in the
  working tree is work the human has to notice, review and commit by hand.
- **Commit what the task touched, and nothing else.** An unrelated fix is its own commit.
- Commit messages are in the project language, like the rest of the prose.
- **Never commit secrets, build output, or anything `.gitignore` covers.** If something ignored
  genuinely needs to be tracked, that is a question for the human, not a decision to make.
- **Do not commit a broken tree.** If the build or the tests fail, say so and stop — a red commit
  costs more than it saves.
- Never skip hooks (`--no-verify`) or bypass signing. A failing hook is a problem to fix, not to
  work around.

### After a major task

A major task is a plan implemented and moved to `spec/60-verify/` — or, without that workflow,
any self-contained piece of work the human asked for. Not every commit along the way.

1. **Rebase** onto the tracked upstream branch (`git pull --rebase`).
2. **Resolve conflicts.** If the correct resolution is not obvious, **stop and ask** — never
   guess at intent that is not yours.
3. **Push.**

`git pull --rebase` replays your unpushed commits on top of upstream, so an ordinary `git push`
follows. Rebasing commits that were *already* pushed rewrites history: the push then needs
`--force-with-lease`, which is fine on a branch only you push to, and a question to ask on any
branch shared with someone else. Never plain `--force`.

## Deviations

Where this repo departs from the conventions above — because it predates them, or because
something specific to it demanded it. Anything listed here is deliberate: do not "fix" it
without asking.

| Convention | What this repo does instead | Why |
| ---------- | --------------------------- | --- |
| — | — | — |
