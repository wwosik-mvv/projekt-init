# Recipes

A recipe is a named component list — nothing more. The human may also pick components à la
carte; recipes just save the common combinations. `core` is implicit in all of them.

Copy components in the order listed: it is also the order their fragments are inserted into
slots, so it determines how the generated documents read.

## `dotnet-razor` — .NET backend with server-rendered UI

Single .NET app, Razor Pages UI, no separate frontend project. The
[planowanie-wycieczek](../README.md) shape.

```
core, spec-workflow, dotnet-solution, dotnet-web-api, dotnet-razor-pages,
tools-dotnet
```

## `dotnet-spa` — .NET backend with an SPA frontend

API-first backend plus a separate SPA under `{{FrontendRoot}}`.

```
core, spec-workflow, dotnet-solution, dotnet-web-api, spa-frontend,
tools-dotnet, tools-npm
```

## `enterprise-monorepo` — work project

Monorepo layout with root-level `backend/` and `frontend/`, per-area `AGENTS.md`, Azure DevOps
pipelines, Terraform, and JIRA-referenced plans.

```
core, spec-workflow, monorepo-layout, dotnet-solution, dotnet-web-api,
spa-frontend, tools-dotnet, tools-npm, ci-azure-devops, infra-terraform,
jira-refs, docs-arc42
```

## Choosing à la carte

Common adjustments that do not need a new recipe:

- **Background worker or bot** — `dotnet-razor` minus `dotnet-web-api` and
  `dotnet-razor-pages`. With no HTTP surface there is no OpenAPI and no Scalar; a component
  owning a non-web `Program.cs` is not in the catalog yet.
- **Notes or data repo, no code** — `core` plus `formatting-prettier`, and usually without
  `spec-workflow`: a repo of personal or reference data has no feature lifecycle.
- **Documentation set** — add `docs-arc42` to any recipe.
