# Component: dotnet-razor-pages

Server-rendered UI: Razor Pages, and no separate frontend project. The `vxb` shape.

- **id:** `dotnet-razor-pages`
- **requires:** `core`, `dotnet-solution`, `dotnet-web-api`
- **conflicts:** —

Can coexist with `spa-frontend` (an SPA alongside server-rendered admin pages), but that is
unusual — pick one UI approach unless there is a reason.

**SignalR is not included.** Most server-rendered pages never need it, and an unused
`AddSignalR()` is a dependency nobody chose. Add it in the project when a feature actually needs
live updates, and record that decision in the project's memory file.

## Token overrides

| Token | Value |
| ----- | ----- |
| `{{BackendRoot}}` | `backend` |
| `{{ProjectToRepoRoot}}` | `../..` |

With no frontend project there is nothing for a `src/` level to group, so the backend sits at
the repo root. Every other component builds its paths from these tokens, so nothing else
changes. `dotnet-razor-pages` comes after `dotnet-solution` and `dotnet-web-api` in resolved
order, so its overrides win.

## Files

| Path | Language |
| ---- | -------- |
| `{{BackendRoot}}/{{RootNamespace}}.Server/Pages/**` | **localized** — Razor views carry user-facing text |
| `{{BackendRoot}}/{{RootNamespace}}.Server/wwwroot/css/site.css` | neutral |
| `ai/ui.md` | localized |

Razor views are the exception to "`src/` is English": their markup, `@model` declarations and
code-behind are English, the visible text is in the project language. See
`languages/README.md`.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `stack` | `stack.md` (localized) |
| `readme-stack` | `readme-stack.md` (localized) |
| `ai-pointers` | `ai-pointers.md` (localized) |
| `program-services` | `program-services.cs` (neutral) |
| `program-middleware-early` | `program-middleware-early.cs` (neutral) — static files, before routing |
| `program-middleware` | `program-middleware.cs` (neutral) — authorization, after routing |
| `program-endpoints` | `program-endpoints.cs` (neutral) |
