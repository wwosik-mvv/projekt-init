## Codebase layout

This is a monorepo: each area sits at the repo root and carries its own `AGENTS.md`, so opening
that folder alone in an editor still gives an agent its bearings.

| Folder | Area |
| ------ | ---- |
| `{{BackendRoot}}/` | .NET backend — see [{{BackendRoot}}/AGENTS.md]({{BackendRoot}}/AGENTS.md) |
| `{{FrontendRoot}}/` | SPA frontend — see [{{FrontendRoot}}/AGENTS.md]({{FrontendRoot}}/AGENTS.md) |

An area's `AGENTS.md` holds only what is true of that area. Anything repo-wide stays in `ai/`,
so there is exactly one place a shared convention can live.
