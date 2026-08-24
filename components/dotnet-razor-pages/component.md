# Component: dotnet-razor-pages

Server-rendered UI: Razor Pages plus SignalR for live interactivity, and no separate frontend
project. The `planowanie-wycieczek` shape.

- **id:** `dotnet-razor-pages`
- **requires:** `core`, `dotnet-solution`, `dotnet-web-api`
- **conflicts:** —

Can coexist with `spa-frontend` (an SPA alongside server-rendered admin pages), but that is
unusual — pick one UI approach unless there is a reason.

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
