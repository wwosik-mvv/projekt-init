# Component: tools-dotnet

The `tools/` folder and the human-facing launcher, `run.ps1` / `run.sh`. Resolves the split
between the two launcher styles in use across older repos: **reserved verbs first, then tool
dispatch**. `./run.ps1 test` runs the tests; `./run.ps1 jira get X-1` runs `tools/jira/jira.cs`.

- **id:** `tools-dotnet`
- **requires:** `core`
- **conflicts:** —

## Files

All neutral — `tools/`, `run.ps1` and `run.sh` are English in every project, contents included.

| Path |
| ---- |
| `run.ps1` |
| `run.sh` |
| `tools/README.md` |

## Slots it owns

| Document | Slots |
| -------- | ----- |
| `run.ps1` | `run-verbs-ps1` |
| `run.sh` | `run-verbs-sh` |

A component that adds a verb fills both, so the two launchers never drift apart. Verbs are
matched before tool names, so a tool must not be named after a reserved verb.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `folders` | `folders.md` (localized) |
| `tooling` | `tooling.md` (localized) |
| `commands` | `commands.md` (localized) |
