# English

## File naming

Lowercase, hyphenated, no spaces: `workflow.md`, `standards.md`, `project-memory.md`.

Exception — **plan and analysis files**, which are titled documents rather than convention
files, use the numbered patterns given below with spaces and sentence-case titles.

## `ai/` — contents

The folder name stays `ai/`. The files inside:

| Role | Filename |
| ---- | -------- |
| How work happens in this repo | `workflow.md` |
| The conventions this repo follows | `standards.md` |
| Accumulated facts and settled decisions about the codebase | `memory.md` |
| UI conventions (only if there is a UI) | `ui.md` |
| Documentation-writing conventions (only with `docs-arc42`) | `documentation.md` |

No numeric prefixes here — `AGENTS.md` links these files explicitly, so no ordering is implied.

There is deliberately no separate `architecture.md`: settled technical decisions are facts about
the codebase and belong in `memory.md`, so there is only ever one place to look.

## `spec/` — contents

The folder name stays `spec/`. Its subfolders are numbered so the lifecycle order is readable
regardless of language, with gaps left for later insertions:

| Prefix | Folder | Holds |
| ------ | ------ | ----- |
| `00` | `00-brainstorming/` | Raw ideas, written by the human. One file per idea or theme. Pasted external user stories keep their reference. |
| `10` | `10-analysis/` | Requested analyses. Output goes here in files, never into chat. |
| `50` | `50-todo/` | Concrete, iterated feature plans awaiting implementation. |
| `60` | `60-verify/` | Implemented tasks awaiting human verification. Each carries an *Implementation notes* chapter. |
| `70` | `70-completed/` | Verified and approved. |

File naming inside them:

| Folder | Pattern | Example |
| ------ | ------- | ------- |
| `00-brainstorming/` | `<slug>.md`, free-form | `live-collaboration.md` |
| `10-analysis/` | `YYYY-MM-DD <slug>.md` | `2026-08-22 backend-api-contract-inventory.md` |
| `50-todo/`, `60-verify/`, `70-completed/` | `NNNNN Title.md`, or `NNNNN <ref> Title.md` when an external reference is known | `00001 Trip day planner.md`, `00010 W-3212 Live itinerary sync.md` |

The reference's prefix is the `{{RefPrefix}}` token — `W-` by default, the JIRA project key
when `jira-refs` is selected.

The five-digit number is sequential across the whole of `spec/` — take the highest already used
in any of the folders and add one. The file keeps its name as it moves between folders.

## `docs/` — contents

The folder name stays `docs/`. Subfolders are numbered, like `spec/`, and only exist when the
`docs-arc42` component is selected:

| Prefix | Folder |
| ------ | ------ |
| `10` | `10-technical-documentation/` |
| `20` | `20-user-manual/` |
| `30` | `30-knowledge-base/` |

## Standard section headings

Used verbatim in plan files and in the generated `AGENTS.md` / `ai/*.md`, so that a heading
means the same thing in every repo:

| Role | Heading |
| ---- | ------- |
| Plan: what and why | `Summary` |
| Plan: existing behaviour and constraints | `Context` |
| Plan: ordered steps | `Proposed approach` |
| Plan: checkable outcomes | `Acceptance criteria` |
| Plan: questions for the human, each followed by an answer slot | `Open questions` |
| Plan: free space for the human's remarks | `Notes` |
| Plan: appended after implementation | `Implementation notes` |
| AGENTS.md: the language rules for this repo | `Language` |
| AGENTS.md: the non-negotiables | `Hard rules` |

Answer slot under each open question is a blank blockquote line:

```markdown
1. Should a trip support more than one participant in v1?

>

2. Where do generated PDFs get stored?

>
```

## Prose

- Written in English, including `README.md`, `AGENTS.md`, everything under `ai/`, `spec/`, and
  `docs/`, and all UI text.
- Commit messages in English.

## Code

Everything is English: domain vocabulary, technical identifiers, comments, log messages. In an
English project there is no split to manage — the distinction only matters in `de.md` and
`pl.md`, where domain vocabulary follows the project language while technical, framework, and
structural identifiers stay English.
