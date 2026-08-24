## Tooling

- Tools written **specifically for this repo** are **single-file .NET 10 apps**, run as
  `dotnet run tools/<name>/<name>.cs` (assume .NET 10 is installed). NuGet dependencies go in
  `#:package` directives at the top of the file.
- **Not PowerShell, not Python.** The only `.ps1` in the repo is the launcher itself.
- If a ready-made **npm package** already does the job, use it as-is under `tools/npm` with
  **pnpm** — do not reimplement it in .NET.
- Existing third-party tools do not need rewriting.
- **One-off, throwaway** tools and scratch data go in `.tmp/`, not `tools/`. `tools/` is for
  things that get kept.
- `tools/`, `run.ps1` and `run.sh` are **English throughout** — code, comments, and output —
  whatever language the rest of the repo is in.

Both launchers must stay in step: a verb added to `run.ps1` is added to `run.sh` in the same
change.
