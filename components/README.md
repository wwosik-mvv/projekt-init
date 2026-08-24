# Components

One folder per component. A project is assembled from a set of them —
see [../bootstrap/recipes.md](../bootstrap/recipes.md).

## Layout of a component

```
<id>/
  component.md        metadata, in English: requires, conflicts, files, slots, fragments
  files/_/…           verbatim files, language-neutral
  files/<lang>/…      verbatim files, already written in that language
  fragments/_/…       slot fragments, language-neutral
  fragments/<lang>/…  slot fragments, already written in that language
```

Paths under `files/` are relative to the target repo root, and may contain placeholder tokens
in directory and file names.

## The catalog

| Component | What it adds |
| --------- | ------------ |
| [core](core/) | Entry points, `ai/`, hard rules. Always included; owns the repo-level slotted documents. |
| [spec-workflow](spec-workflow/) | The idea → plan → implement → verify → archive lifecycle and the `spec/` tree. |
| [dotnet-solution](dotnet-solution/) | .NET solution skeleton: `.slnx`, central packages, `.editorconfig`, `nuget.config`, sibling tests. |
| [dotnet-web-api](dotnet-web-api/) | ASP.NET Core host, Serilog, local HTTPS, minimal APIs, OpenAPI + Scalar. Owns `Program.cs`. |
| [dotnet-razor-pages](dotnet-razor-pages/) | Server-rendered UI: Razor Pages and SignalR. |
| [spa-frontend](spa-frontend/) | Angular SPA under the frontend root, pnpm, generated API client. |
| [tools-dotnet](tools-dotnet/) | `tools/` plus the `run.ps1` / `run.sh` launcher (verbs first, then tool dispatch). |
| [tools-npm](tools-npm/) | `tools/npm` for ready-made npm packages used as-is. |
| [ci-azure-devops](ci-azure-devops/) | Azure DevOps pipelines. |
| [infra-terraform](infra-terraform/) | Terraform conventions for cloud infrastructure. |
| [monorepo-layout](monorepo-layout/) | Root-level `backend/` and `frontend/` with per-area `AGENTS.md`. |
| [jira-refs](jira-refs/) | JIRA ticket keys in plan filenames and a JIRA story chapter in plans. |
| [docs-arc42](docs-arc42/) | Structured `docs/`: arc42 documentation, user manual, knowledge base. |
| [formatting-prettier](formatting-prettier/) | Prettier for Markdown, enforced by a pre-commit hook. |

## Slots

A slot is a named insertion point in a document owned by some component. Any component may fill
any slot; a slot nobody fills is deleted during assembly.

| Slot | Document | Owner |
| ---- | -------- | ----- |
| `stack`, `ai-pointers`, `layout`, `hard-rules-extra`, `commands` | `AGENTS.md` | core |
| `readme-stack`, `readme-running`, `readme-deployment` | `README.md` | core |
| `folders`, `tooling`, `stack-standards`, `deployment`, `docs-standards`, `formatting` | `ai/standards.md` | core |
| `gitignore-extra` | `.gitignore` | core |
| `workflow-refs`, `workflow-extra` | `ai/workflow.md` | spec-workflow |
| `packages` | `Directory.Packages.props` | dotnet-solution |
| `package-refs` | the server `.csproj` | dotnet-solution |
| `program-usings`, `program-services`, `program-middleware-early`, `program-middleware`, `program-endpoints` | `Program.cs` | dotnet-web-api |
| `run-verbs-list`, `run-verbs-ps1` | `run.ps1` | tools-dotnet |
| `run-verbs-list-sh`, `run-verbs-sh` | `run.sh` | tools-dotnet |

## Adding a component

1. Write `component.md` first — deciding `requires` and `conflicts` usually settles what the
   component actually is.
2. Never duplicate a rule that already lives in another component. If two components need the
   same rule, it belongs in the one they both require.
3. Add its language variants in the same change. There is no tooling that catches a missing one.
4. List it in the table above and, if it belongs to one, in a recipe.
