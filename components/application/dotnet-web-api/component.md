# Component: dotnet-web-api

Turns the solution into an ASP.NET Core web application: the host, Serilog wiring, local HTTPS,
minimal APIs, OpenAPI and Scalar. Owns `Program.cs`, so exactly one host-owning component may
be selected.

- **id:** `dotnet-web-api`
- **requires:** `core`, `dotnet-solution`
- **conflicts:** any other component that owns `Program.cs`

## Token defaults

| Token | Value |
| ----- | ----- |
| `{{ProjectSdk}}` | `Microsoft.NET.Sdk.Web` (overrides the `dotnet-solution` default) |

## Files

| Path | Language |
| ---- | -------- |
| `{{BackendRoot}}/{{RootNamespace}}.Server/Program.cs` | neutral |
| `{{BackendRoot}}/{{RootNamespace}}.Server/Properties/launchSettings.json` | neutral |

## Slots it owns

| Document | Slots, in order |
| -------- | --------------- |
| `Program.cs` | `program-usings`, `program-services`, `program-middleware-early`, `program-middleware`, `program-endpoints` |

`program-middleware-early` sits before `UseRouting()` — static files and anything else that must
run ahead of routing. `program-middleware` sits after it, where authorization belongs. The base
deliberately does not call `UseAuthorization()`: without authorization services registered, that
throws at startup, so the component that registers them adds the call.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `stack` | `stack.md` (localized) |
| `readme-stack` | `readme-stack.md` (localized) |
| `readme-running` | `readme-running.md` (localized) |
| `stack-standards` | `stack-standards.md` (localized) |
| `packages` | `packages.xml` (neutral) |
| `package-refs` | `package-refs.xml` (neutral) |
| `run-verbs-ps1` | `run-verbs.ps1` (neutral) |
| `run-verbs-sh` | `run-verbs.sh` (neutral) |
| `run-verbs-list` | `run-verbs-list.ps1` (neutral) |
| `run-verbs-list-sh` | `run-verbs-list.sh` (neutral) |

The `run-verbs-*` fragments only apply when `tools-dotnet` is also selected; without it
there is no launcher to fill.
