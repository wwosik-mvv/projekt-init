# Component: tools-npm

A place for ready-made npm packages used as tools, so they are not reimplemented in .NET.

- **id:** `tools-npm`
- **requires:** `core`, `tools-dotnet`
- **conflicts:** —

## Files

| Path |
| ---- |
| `tools/npm/package.json` |
| `tools/npm/README.md` |

Neutral, like the rest of `tools/`. `pnpm` is the package manager; `tools/npm` is excluded from
the launcher's tool listing because its contents are third-party commands, not single-file .NET
tools.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `gitignore-extra` | `gitignore.txt` (neutral) |
