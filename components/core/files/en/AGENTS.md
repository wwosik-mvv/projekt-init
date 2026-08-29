# {{ProjectName}}

{{ProjectDescription}}

<!-- slot: stack -->

Start here, then follow the pointers:

- [ai/standards.md](ai/standards.md) — the conventions this repo follows.
- [ai/memory.md](ai/memory.md) — accumulated facts about this codebase.
<!-- slot: ai-pointers -->
- [docs/](docs/) — documentation of how the app actually works today.

<!-- slot: layout -->

## Language

This repo's language is **English**. That covers all prose, plans, documentation, UI text, and
commit messages.

The technical skeleton is English in every project of this family and is not a language choice:
`src/`, `tools/`, `deploy/`, `logs/`, `data/`, `.tmp/`, `run.ps1`, `run.sh`, and all
configuration files, contents included. The folder names `ai/`, `spec/`, `docs/`, `.github/`
and the files `AGENTS.md`, `CLAUDE.md`, `README.md` are also fixed — but everything inside
them is in the project language.

In code and in the database everything is English — identifiers, table and column names,
comments, log messages, domain vocabulary included. Only the strings a user reads are in the
project language, which here is also English.

## Hard rules

- **Commit finished work by default.** When a task is done, commit what it touched — do not
  leave it in the working tree for the human to find. Details in
  [ai/standards.md](ai/standards.md).
- **After a major task: rebase, then push.** Resolve conflicts on the way, and ask whenever the
  right resolution is not obvious.
- **Temporary and scratch files go in `.tmp/`** at the repo root (git-ignored) — never the
  system temp directory, never AppData.
- **All project memory is shared in `ai/`** — never in a tool's device-local memory, so every
  agent on every machine reads the same thing.
<!-- slot: hard-rules-extra -->

<!-- slot: commands -->
