# Component: spa-frontend

A single-page frontend under `{{FrontendRoot}}`, talking to the backend over its OpenAPI-described
API. Angular by default, since that is what the existing projects use.

- **id:** `spa-frontend`
- **requires:** `core`, `dotnet-web-api`
- **conflicts:** —

## Files

| Path | Language |
| ---- | -------- |
| `ai/frontend.md` | localized |

**No SPA scaffold is templated here.** A framework's own CLI generates a better and more
current skeleton than any copy in this catalog would be. During bootstrap, generate it in place:

```
cd src
pnpm dlx @angular/cli@latest new frontend --directory frontend --package-manager pnpm --style css --ssr false
```

Then delete the `.git` the CLI creates, and check the generated `.gitignore` against the repo
root one — keep the frontend-specific entries, drop duplicates.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `stack` | `stack.md` (localized) |
| `readme-stack` | `readme-stack.md` (localized) |
| `readme-running` | `readme-running.md` (localized) |
| `stack-standards` | `stack-standards.md` (localized) |
| `ai-pointers` | `ai-pointers.md` (localized) |
| `folders` | `folders.md` (localized) |
| `gitignore-extra` | `gitignore.txt` (neutral) |
