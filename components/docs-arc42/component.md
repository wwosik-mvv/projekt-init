# Component: docs-arc42

A structured documentation set under `docs/`: arc42 architecture documentation, a user manual,
and a business knowledge base — the `vxb` shape. Without this component, `docs/` is a single
free-form folder.

- **id:** `docs-arc42`
- **requires:** `core`
- **conflicts:** —

## Files

All localized — documentation is prose.

| Path |
| ---- |
| `docs/10-technical-documentation/README.md` |
| `docs/20-user-manual/README.md` |
| `docs/30-knowledge-base/README.md` |
| `ai/documentation.md` |

Subfolder names are numbered like `spec/`, so the reading order holds in any language. The
names themselves come from `languages/<lang>.md`.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `ai-pointers` | `ai-pointers.md` |
| `docs-standards` | `docs-standards.md` |
