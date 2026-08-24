# tools/npm

Third-party npm packages used as-is, rather than reimplemented as single-file .NET tools.

```
cd tools/npm
pnpm install
pnpm exec <command> [args...]
```

**pnpm only** — a `package-lock.json` here is a bug. Add a dependency with
`pnpm add -D <package>`, and record in the repo's `ai/memory.md` what it is for, so the next
agent does not have to guess why it is here.

Anything written specifically for this repo belongs in `tools/<name>/<name>.cs` instead.
