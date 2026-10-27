# Component: dotnet-library

A standalone .NET class library: solution file, central package management, shared editor
config, local NuGet source, the library project and its sibling test project. For repos that
publish a library and have no server. It is the .NET skeleton for such repos, in place of
`dotnet-solution`.

- **id:** `dotnet-library`
- **requires:** `core`
- **conflicts:** `dotnet-solution`, `dotnet-web-api`, `dotnet-razor-pages` — they own a server
  project and `Program.cs`, which a library repo does not have

## Token defaults

| Token | Value |
| ----- | ----- |
| `{{BackendRoot}}` | `src` (overrides the `src/server` default; `monorepo-layout` still wins with `backend`) |

## Files

All language-neutral (`files/_/`) — `src/` is English in every project.

| Path |
| ---- |
| `.editorconfig` |
| `nuget.config` |
| `{{BackendRoot}}/{{RootNamespace}}.slnx` |
| `{{BackendRoot}}/Directory.Packages.props` |
| `{{BackendRoot}}/{{RootNamespace}}/{{RootNamespace}}.csproj` |
| `{{BackendRoot}}/{{RootNamespace}}/WordCounter.cs` |
| `{{BackendRoot}}/{{RootNamespace}}.Tests/{{RootNamespace}}.Tests.csproj` |
| `{{BackendRoot}}/{{RootNamespace}}.Tests/WordCounterTests.cs` |

`.editorconfig` and `nuget.config` are byte-for-byte copies of the `dotnet-solution` ones — the
two components conflict, so they never write the same path. Keep both pairs identical.

`WordCounter` is a placeholder public API; the human replaces it.

## Slots it owns

| Document | Slots |
| -------- | ----- |
| `{{BackendRoot}}/{{RootNamespace}}.slnx` | `solution-projects` |
| `{{BackendRoot}}/Directory.Packages.props` | `packages` |

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `stack` | `stack.md` (localized) |
| `readme-stack` | `readme-stack.md` (localized) |
| `readme-running` | `readme-running.md` (localized) |
| `folders` | `folders.md` (localized) |
| `stack-standards` | `stack-standards.md` (localized) |
| `gitignore-extra` | `gitignore.txt` (neutral) |
| `run-verbs-ps1` | `run-verbs.ps1` (neutral — `build`, `test`) |
| `run-verbs-sh` | `run-verbs.sh` (neutral) |
| `run-verbs-list` | `run-verbs-list.ps1` (neutral) |
| `run-verbs-list-sh` | `run-verbs-list.sh` (neutral) |

The `run-verbs-*` fragments only apply when `tools-dotnet` is also selected; without it
there is no launcher to fill.
