# Component: formatting-prettier

Automatic Markdown formatting through Prettier, applied by a pre-commit hook so nobody
formats by hand and no change is half-formatted.

- **id:** `formatting-prettier`
- **requires:** `core`
- **conflicts:** —

## Files

All neutral — configuration.

| Path |
| ---- |
| `package.json` |
| `.husky/pre-commit` |

`package.json` at the repo root exists only for formatting. Tool dependencies live in
`tools/npm/package.json` instead, so the two never fight over one dependency list.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `formatting` | `formatting.md` (localized) |
| `gitignore-extra` | `gitignore.txt` (neutral) |
