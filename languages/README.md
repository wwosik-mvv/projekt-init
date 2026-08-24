# Languages

One file per supported project language. Each defines the names, casing, and standard section
headings that the components' `files/<lang>/` and `fragments/<lang>/` variants use.

These files are the **authority**: if a template disagrees with the language file, the template
is wrong. Adding a language means writing its file here first, then adding the matching
variants to every component.

| File | Language | Status |
| ---- | -------- | ------ |
| [en.md](en.md) | English | complete |
| [de.md](de.md) | German | complete |
| [pl.md](pl.md) | Polish | complete |

## What never varies by language

Fixed folder and file names, identical in every language:

```
ai/  spec/  docs/  .github/  AGENTS.md  CLAUDE.md  README.md
src/  tools/  deploy/  logs/  data/  .tmp/  run.ps1  run.sh
```

The first group has translated *contents* — the files inside, the subfolder names, and all
prose. The second group is English through and through, contents included, because those paths
are baked into Dockerfiles, `.gitignore`, CI definitions, and .NET conventions, and translating
them would buy nothing.

Configuration files (`.editorconfig`, `nuget.config`, `Directory.Packages.props`,
`docker-compose.yml`, workflow YAML, `package.json`) are English everywhere, including their
comments.

## The one exception inside the code folders

The code folders (`src/`, or `backend/` and `frontend/` in a monorepo) are English in their
structure, identifiers, and comments — but **text shown to the user is in the project
language**. A German app says `Reise anlegen` on the button, not `Create trip`.
So:

- Code, folder names, class and member names, comments, log messages: English. Domain
  vocabulary within those names follows the project language (`Vertrag`, not `Contract`, in a
  German project) — the split is domain versus technical, not code versus prose.
- User-facing strings — view templates, validation messages, e-mails, CLI output aimed at the
  human: project language.

In this catalog that means template files which carry user-facing text (Razor views, for
instance) live in `files/<lang>/`, while all other code lives in `files/_/`.
