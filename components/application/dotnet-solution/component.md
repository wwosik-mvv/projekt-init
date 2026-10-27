# Component: dotnet-solution

The .NET solution skeleton: solution file, central package management, shared editor config,
local NuGet source, a server project, and its sibling test project. Stack-neutral — it does not
decide whether the app is a web app, a worker, or a console tool. The component that owns
`Program.cs` decides that.

- **id:** `dotnet-solution`
- **requires:** `core`
- **conflicts:** —

## Token defaults

| Token | Default | Overridden by |
| ----- | ------- | ------------- |
| `{{ProjectSdk}}` | `Microsoft.NET.Sdk.Worker` | `dotnet-web-api` sets `Microsoft.NET.Sdk.Web` |

## Files

All language-neutral (`files/_/`) — `src/` is English in every project.

| Path |
| ---- |
| `.editorconfig` |
| `nuget.config` |
| `{{BackendRoot}}/{{RootNamespace}}.slnx` |
| `{{BackendRoot}}/Directory.Packages.props` |
| `{{BackendRoot}}/{{RootNamespace}}.Server/{{RootNamespace}}.Server.csproj` |
| `{{BackendRoot}}/{{RootNamespace}}.Server/appsettings.json` |
| `{{BackendRoot}}/{{RootNamespace}}.Server/appsettings.Development.json` |
| `{{BackendRoot}}/{{RootNamespace}}.Server/Configuration/AppPaths.cs` |
| `{{BackendRoot}}/{{RootNamespace}}.Server.Tests/{{RootNamespace}}.Server.Tests.csproj` |
| `{{BackendRoot}}/{{RootNamespace}}.Server.Tests/AppPathsTests.cs` |

`.editorconfig` is copied byte-for-byte and never edited per project — it is the shared one for
this whole family of projects.

## Slots it owns

| Document | Slots |
| -------- | ----- |
| `{{BackendRoot}}/Directory.Packages.props` | `packages` |
| `{{BackendRoot}}/{{RootNamespace}}.Server/{{RootNamespace}}.Server.csproj` | `package-refs` |

Every component that needs a NuGet package fills both: a `<PackageVersion>` in `packages` and a
matching `<PackageReference>` in `package-refs`. Central package management means the version
lives in exactly one place.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `folders` | `folders.md` (localized) |
| `stack-standards` | `stack-standards.md` (localized) |
| `packages` | `packages.xml` (neutral — Serilog) |
| `package-refs` | `package-refs.xml` (neutral — Serilog) |
| `gitignore-extra` | `gitignore.txt` (neutral) |
| `run-verbs-ps1` | `run-verbs.ps1` (neutral) |
| `run-verbs-sh` | `run-verbs.sh` (neutral) |
| `run-verbs-list` | `run-verbs-list.ps1` (neutral) |
| `run-verbs-list-sh` | `run-verbs-list.sh` (neutral) |

The `run-verbs-*` fragments only apply when `tools-dotnet` is also selected; without it
there is no launcher to fill.
