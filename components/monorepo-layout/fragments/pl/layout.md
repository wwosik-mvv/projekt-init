## Układ kodu

To monorepo: każdy obszar leży w katalogu głównym i ma własny `AGENTS.md`, żeby otwarcie samego
tego folderu w edytorze też dawało agentowi orientację.

| Folder | Obszar |
| ------ | ------ |
| `{{BackendRoot}}/` | Backend .NET — zobacz [{{BackendRoot}}/AGENTS.md]({{BackendRoot}}/AGENTS.md) |
| `{{FrontendRoot}}/` | Frontend SPA — zobacz [{{FrontendRoot}}/AGENTS.md]({{FrontendRoot}}/AGENTS.md) |

`AGENTS.md` danego obszaru zawiera tylko to, co dotyczy tego obszaru. Wszystko, co obowiązuje
w całym repo, zostaje w `ai/`, żeby wspólna konwencja miała dokładnie jedno miejsce.
