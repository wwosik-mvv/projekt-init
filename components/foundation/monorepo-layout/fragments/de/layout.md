## Aufbau der Codebasis

Dies ist ein Monorepo: jeder Bereich liegt im Repo-Root und hat eine eigene `AGENTS.md`, damit
auch das Öffnen dieses einen Ordners im Editor einem Agenten Orientierung gibt.

| Ordner | Bereich |
| ------ | ------- |
| `{{BackendRoot}}/` | .NET-Backend — siehe [{{BackendRoot}}/AGENTS.md]({{BackendRoot}}/AGENTS.md) |
| `{{FrontendRoot}}/` | SPA-Frontend — siehe [{{FrontendRoot}}/AGENTS.md]({{FrontendRoot}}/AGENTS.md) |

Die `AGENTS.md` eines Bereichs enthält nur, was für diesen Bereich gilt. Alles Repo-weite bleibt
in `ai/`, damit eine gemeinsame Konvention genau eine Heimat hat.
