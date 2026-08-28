# Placeholder tokens

Every template in this catalog is parameterized with `{{Token}}` markers. Substitution is
purely mechanical — it happens in file contents **and** in file and directory names.

## Always required

| Token | Meaning | Example |
| ----- | ------- | ------- |
| `{{ProjectName}}` | Human-readable title, in the project language. Used in headings and prose. | `Planowanie Wycieczek` |
| `{{ProjectSlug}}` | Lowercase, hyphenated. Repo name, container name, hostname label. Diacritics stripped. | `planowanie-wycieczek` |
| `{{RootNamespace}}` | PascalCase, ASCII only. .NET root namespace and assembly prefix. | `PlanowanieWycieczek` |
| `{{ProjectDescription}}` | One or two sentences, in the project language. Goes in `README.md` and `AGENTS.md`. | — |
| `{{Language}}` | `en`, `de`, or `pl`. Recorded in the generated `AGENTS.md`. | `de` |

### Deriving them

`{{ProjectSlug}}` from `{{ProjectName}}`: lowercase, spaces → hyphens, diacritics folded to
ASCII (`Trenażer Brydżowy` → `trenazer-brydzowy`), because it becomes a hostname and a
container name. `{{RootNamespace}}` likewise folds to ASCII and drops separators. Note the
asymmetry: prose and `.md` filenames keep their diacritics, slugs and namespaces do not.

## Layout tokens

The code folders are tokenized so the monorepo layout is a component choice rather than a
separate set of templates.

| Token | Default | Overridden by |
| ----- | ------- | ------------- |
| `{{BackendRoot}}` | `src/server` | `monorepo-layout` and `dotnet-razor-pages` both set `backend` |
| `{{FrontendRoot}}` | `src/frontend` | `monorepo-layout` sets `frontend` |
| `{{ProjectSdk}}` | `Microsoft.NET.Sdk.Worker` | `dotnet-web-api` sets `Microsoft.NET.Sdk.Web` |
| `{{ProjectToRepoRoot}}` | **derived** — see below | never set by hand |

`{{ProjectToRepoRoot}}` is the relative path from the server project folder back up to the repo
root, used by `appsettings.json` to locate `data/` and `logs/` during local development. Compute
it, never guess it: one `..` per path segment in `{{BackendRoot}}`, plus one more for the project
folder itself.

| `{{BackendRoot}}` | Project folder | `{{ProjectToRepoRoot}}` |
| ----------------- | -------------- | ----------------------- |
| `src/server` | `src/server/X.Server/` | `../../..` |
| `backend` | `backend/X.Server/` | `../..` |

Getting this wrong is quiet rather than loud: the app creates `data/` and `logs/` in the wrong
place instead of failing, so check it once against the running app.

A component may override a token's default. Where two do, the one later in the resolved
component order wins — so declare the override in the more specific component, and state it in
its `component.md`.

## Required by specific components

| Token | Required by | Meaning | Default |
| ----- | ----------- | ------- | ------- |
| `{{RefPrefix}}` | `spec-workflow` | Prefix of external work-item references in plan filenames. | `W-` |
| `{{TrackerKey}}` | `jira-refs` | JIRA project key. | — |
| `{{TrackerBaseUrl}}` | `jira-refs` | JIRA base URL. | — |
| `{{AzureProject}}` | `ci-azure-devops` | Azure DevOps project name. | — |

## Rules

- A token with a documented default may be filled in without asking.
- A token with no default must be answered by the human before you write the file that needs
  it — never invent a hostname, key, or URL.
- After substitution, grep the target repo for `{{`. Any hit is a bug.
- A deployment component that introduces its own templating syntax must document any `{{ }}`
  it legitimately leaves behind, so the check above stays meaningful.
