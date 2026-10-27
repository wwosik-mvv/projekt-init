## .NET conventions

- Always the **newest** .NET version.
- The solution is `{{BackendRoot}}/{{RootNamespace}}.slnx`, with each project in its own
  subfolder.
- **Central package management** via `{{BackendRoot}}/Directory.Packages.props` — a package version
  is declared exactly once there, and projects reference packages without a version.
- The shared **`.editorconfig`** at the repo root is not project-specific: do not edit it to
  suit this repo.
- A **local `nuget.config`** pins the package sources, with `<clear />` first so no machine-wide
  source leaks in.
- **Tests live in the same solution**, as a sibling project next to the code they test
  (`{{RootNamespace}}.Tests` next to `{{RootNamespace}}`) — never a separate solution.

### Libraries

- The library project is packable and generates an XML documentation file: every public type and
  member carries a `<summary>`.
- Keep the public API surface small — `public` is a promise to consumers; default to `internal`.
- A library does not log through a concrete logger, read configuration files, or touch the
  console. Take `ILogger` or plain parameters from the caller instead.
