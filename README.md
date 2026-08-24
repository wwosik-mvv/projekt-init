# my-project-pattern

The canonical shape of my projects, as reusable building blocks.

Point an AI agent at this repo and tell it to set up a new repository from it. The agent
reads [AGENTS.md](AGENTS.md) → [bootstrap/new-repo.md](bootstrap/new-repo.md), asks which
components and which language, and produces a repo that already carries its own conventions —
no re-explaining them per project.

## What's here

| Path | Purpose |
| ---- | ------- |
| [bootstrap/](bootstrap/) | The procedure an agent follows to create a new repo, plus recipes and placeholder reference. |
| [components/](components/) | The building blocks. One folder per component: its files, its documentation fragments, its metadata. |
| [languages/](languages/) | Per-language conventions: translated names, casing, section headings, commit language. |

## Design in one paragraph

Projects are **assembled from components**, not stamped from whole-project templates. Each
component owns everything it contributes: verbatim files, and fragments that get slotted into
the shared documents (`AGENTS.md`, `ai/standards.md`, `.gitignore`, `run.ps1`). Templates are
stored **already written in each target language** — nothing is machine-translated at creation
time, only placeholder tokens are substituted. A generated repo carries a **self-contained**
copy of the conventions that apply to it, so it never depends on this repo being reachable.

## Language model

The project language applies to prose, plans, documentation, UI text, commit messages, and
domain vocabulary in code. It does **not** apply to the repo's technical skeleton.

- **Fixed English names, translated contents:** `ai/`, `spec/`, `docs/`, `.github/`,
  `AGENTS.md`, `CLAUDE.md`, `README.md`. The folders keep these exact names in every
  language; the files inside them, their subfolder names, and all their prose are in the
  project language.
- **English throughout, including content:** `src/`, `tools/`, `deploy/`, `logs/`, `data/`,
  `.tmp/`, `run.ps1`, `run.sh`, and every configuration file.
- **In code:** domain vocabulary follows the project language; technical, framework, and
  structural identifiers stay English.

Full per-language tables are in [languages/](languages/).

## Changing a template

Templates in `components/*/files/<lang>/` and `components/*/fragments/<lang>/` are **parallel
copies, not translations generated on demand**. A change to one language variant must be
applied to all of them in the same edit — there is no tooling that checks this.
