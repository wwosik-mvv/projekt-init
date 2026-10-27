## .NET conventions

- Always the **newest** .NET version.
- The server solution is `{{BackendRoot}}/{{RootNamespace}}.slnx`, with each project in its own
  subfolder.
- **Central package management** via `{{BackendRoot}}/Directory.Packages.props` — a package version
  is declared exactly once there, and projects reference packages without a version.
- The shared **`.editorconfig`** at the repo root is not project-specific: do not edit it to
  suit this repo.
- A **local `nuget.config`** pins the package sources, with `<clear />` first so no machine-wide
  source leaks in.
- **Tests live in the same solution**, as a sibling project next to the code they test
  (`{{RootNamespace}}.Server.Tests` next to `{{RootNamespace}}.Server`) — never a separate
  solution.
- **Serilog** everywhere, with two sinks: a coloured console, and daily rolling files into the
  git-ignored repo-root `logs/`.
- Paths for persistent state are resolved once at startup through `AppPaths`
  (`Configuration/AppPaths.cs`), configurable via `AppPaths:DataDirectory` and
  `AppPaths:LogsDirectory`. Nothing else builds a path to `data/` or `logs/` by hand.
