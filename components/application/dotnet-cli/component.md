# Component: dotnet-cli

A .NET command-line app on top of the library: a `System.CommandLine` project packaged as a
.NET tool, plus its test project. The CLI is a thin shell; logic lives in the library.

- **id:** `dotnet-cli`
- **requires:** `core`, `dotnet-library`
- **conflicts:** any other component that owns an executable entry point (`dotnet-web-api`)

## Files

| Path | Language |
| ---- | -------- |
| `{{BackendRoot}}/{{RootNamespace}}.Cli/{{RootNamespace}}.Cli.csproj` | neutral |
| `{{BackendRoot}}/{{RootNamespace}}.Cli/Program.cs` | neutral |
| `{{BackendRoot}}/{{RootNamespace}}.Cli/CliApp.cs` | localized — carries the user-facing strings |
| `{{BackendRoot}}/{{RootNamespace}}.Cli.Tests/{{RootNamespace}}.Cli.Tests.csproj` | neutral |
| `{{BackendRoot}}/{{RootNamespace}}.Cli.Tests/CliAppTests.cs` | neutral |

The executable and tool command are named `{{ProjectSlug}}`.

## Slots it owns

None. It fills slots owned by `dotnet-library`.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `solution-projects` | `solution-projects.xml` (neutral) |
| `packages` | `packages.xml` (neutral — System.CommandLine) |
| `stack` | `stack.md` (localized) |
| `readme-running` | `readme-running.md` (localized) |
| `stack-standards` | `stack-standards.md` (localized) |
| `run-verbs-ps1` | `run-verbs.ps1` (neutral — `run`) |
| `run-verbs-sh` | `run-verbs.sh` (neutral) |
| `run-verbs-list` | `run-verbs-list.ps1` (neutral) |
| `run-verbs-list-sh` | `run-verbs-list.sh` (neutral) |

The `run-verbs-*` fragments only apply when `tools-dotnet` is also selected; without it
there is no launcher to fill.
