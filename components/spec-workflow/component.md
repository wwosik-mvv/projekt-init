# Component: spec-workflow

The spec-driven task lifecycle: ideas become plans, plans get iterated, implemented, verified,
and archived. Separate from `core` so a repo with no feature lifecycle — a notes or reference
data repo — can leave it out.

- **id:** `spec-workflow`
- **requires:** `core`
- **conflicts:** —

## Token defaults

| Token | Default | Overridden by |
| ----- | ------- | ------------- |
| `{{RefPrefix}}` | `W-` | `jira-refs` sets `{{TrackerKey}}-` |

## Files

| Path | Language |
| ---- | -------- |
| `ai/workflow.md` | localized |
| `spec/README.md` | localized |
| `spec/_template.md` | localized |
| `spec/00-brainstorming/`, `10-analysis/`, `50-todo/`, `60-verify/`, `70-completed/` | localized folder names, `.gitkeep` in each |

Paths in this table use their **English** names; `ai/workflow.md`, `spec/_template.md` and the
lifecycle folders are all renamed per language (`ai/Arbeitsablauf.md`, `spec/_vorlage.md`,
`spec/50-entwurf/` in German). The numeric prefixes never change, so the lifecycle sorts in
order whatever the language. Names and file-naming patterns come from `languages/<lang>.md` —
that file is the authority.

## Slots it owns

| Document | Slots |
| -------- | ----- |
| `ai/workflow.md` | `workflow-refs`, `workflow-extra` |

`workflow-refs` is where a work-item tracker component explains how its references appear in
plan filenames and plan bodies.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `ai-pointers` | `ai-pointers.md` |
| `hard-rules-extra` | `hard-rules.md` |
| `folders` | `folders.md` |
