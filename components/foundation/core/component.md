# Component: core

Always included. Provides the repo's entry points, the shared AI memory folder, and the
non-negotiable rules that hold in every project regardless of stack.

- **id:** `core`
- **requires:** —
- **conflicts:** —

## Files

| Path | Language |
| ---- | -------- |
| `AGENTS.md` | localized |
| `CLAUDE.md` | localized |
| `README.md` | localized |
| `ai/standards.md` | localized |
| `ai/memory.md` | localized |
| `docs/README.md` | localized |
| `.gitignore` | neutral |

Paths in this table use their **English** names. `AGENTS.md`, `CLAUDE.md` and `README.md` keep
those names in every language; the files inside `ai/` and `docs/` are renamed per language —
`ai/standards.md` is `ai/Standards.md` in German and `ai/standardy.md` in Polish. The names come
from `languages/<lang>.md`, which is the authority.

## Slotted documents it owns

`core` owns the repo-level slotted documents. Other components fill these slots; a slot no
component fills is deleted during assembly. Stack components own slotted documents of their own
(`Program.cs`, `Directory.Packages.props`, the `.csproj`) — see their `component.md`.

| Document | Slots, in order |
| -------- | --------------- |
| `AGENTS.md` | `stack`, `ai-pointers`, `layout`, `hard-rules-extra`, `commands` |
| `README.md` | `readme-stack`, `readme-running`, `readme-deployment` |
| `ai/standards.md` | `folders`, `tooling`, `stack-standards`, `deployment`, `docs-standards`, `formatting` |
| `.gitignore` | `gitignore-extra` |

## Fragments it contributes

None — `core` is the base every other component writes into.
