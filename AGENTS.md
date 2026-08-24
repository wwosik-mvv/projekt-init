# AGENTS.md — my-project-pattern

This repo is a **project scaffold catalog**, not an application. You were most likely pointed
here for one of two reasons.

## 1. You were asked to set up a new repository "like my other projects"

Read [bootstrap/new-repo.md](bootstrap/new-repo.md) and follow it. Do not improvise the
structure from what you see here — the procedure covers intake, component selection, copying,
slot assembly, and placeholder substitution, in that order.

**Do not copy this repo's own `AGENTS.md`, `README.md`, or `CLAUDE.md` into the target repo.**
Those describe the catalog. The target repo's versions come from
[components/core/](components/core/).

## 2. You were asked to change the pattern itself

- A convention that applies to every project belongs in the `core` component.
- A convention that applies only to projects using a particular stack, tool, or deployment
  model belongs in that component — never in `core`.
- **Every template exists once per supported language.** They are parallel copies, kept in
  step by hand. If you edit `files/en/` or `fragments/en/`, you edit the `de/` and `pl/`
  variants in the same change, or the catalog is broken. Nothing checks this for you.
- Names, casing, and standard section headings per language are defined in
  [languages/](languages/) — that file is the authority, the components follow it.

## Repository conventions here

- This repo's own prose (this file, `README.md`, `bootstrap/`, `languages/`, every
  `component.md`) is **English**, whatever language the templates it holds are written in.
- Language-neutral template files live in `files/_/`; localized ones in `files/<lang>/`.
- Never commit or stage changes — the human handles all git operations.
