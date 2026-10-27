# spec

Specifications and the task lifecycle. The process is described in
[../ai/workflow.md](../ai/workflow.md); this file is the map of the folders.

| Folder | Holds |
| ------ | ----- |
| `00-brainstorming/` | Raw ideas, written by the human. One file per idea or theme. |
| `10-analysis/` | Requested analyses, `YYYY-MM-DD <slug>.md`. Output goes here in files, never into chat. |
| `50-todo/` | Open feature epics, milestones, and stories awaiting implementation. |
| `55-in-progress/<agent-id>/` | Stories claimed by that agent. Do not touch another agent's folder or its story's code. |
| `60-verify/` | Implemented stories awaiting human verification. Each carries an *Implementation notes* chapter. |
| `70-completed/<epic-id>-<slug>/` | Verified stories, grouped with their completed feature epic. Technical stories use a `T` container folder. |

The numeric prefixes exist so the lifecycle reads in order whatever the project language is.
Gaps are deliberate — a new stage can be inserted without renumbering.

| Kind | ID and filename | File |
| ---- | --------------- | ---- |
| Feature epic | `E01-short-title.md` | Yes; groups a product/domain area's stories |
| Feature story | `E01-S01-short-title.md` | Yes; story number is counted within its epic |
| Technical story | `T01-S01-short-title.md` | Yes; `T01` is a container, not a file |
| Milestone | `M01-short-title.md` | Yes; groups stories from several epics |

Allocate the next free `E`/`M` id and the next free story number within its `E`/`T` container.
Technical containers hold up to 99 stories; after `T01-S99`, use `T02-S01`. If known, an
external reference goes after the story ID and before the slug. Story filenames stay unchanged
as they move between folders.

Each feature epic tracks its stories and their states in a scope table. A story belongs to one
feature epic or technical container; cross-epic delivery groupings belong in milestones.

- Claim a story before implementing it; claims are committed on `main`. Never touch a story
	claimed by another agent. See [../ai/workflow.md](../ai/workflow.md#claiming-a-story).
- Commit finished work; rebase and push once a task is complete.
- Never write an analysis into chat; write the file.
