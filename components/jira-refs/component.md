# Component: jira-refs

Ties plans to JIRA tickets: the ticket key in the plan filename, a JIRA-ready story chapter in
the plan body, and the rules for keeping the two in step.

- **id:** `jira-refs`
- **requires:** `core`, `spec-workflow`
- **conflicts:** —

## Tokens

| Token | Default |
| ----- | ------- |
| `{{TrackerKey}}` | none — must be answered (e.g. `VXB`) |
| `{{TrackerBaseUrl}}` | none — must be answered |
| `{{RefPrefix}}` | `{{TrackerKey}}-` (overrides the `spec-workflow` default) |

## Files

None.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `workflow-refs` | `workflow-refs.md` (localized) |

## No tool is shipped

A JIRA CLI (`tools/jira/jira.cs`) is worth having in a project that uses this component, but it
depends on the instance's fields, workflow states, and authentication, so this catalog does not
ship a guess at one. Write it when the project actually needs it, following the `tools-dotnet`
rules, and record its usage in `ai/memory.md`.
