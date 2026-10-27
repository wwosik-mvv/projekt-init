## .NET-Konventionen

- Immer die **neueste** .NET-Version.
- Die Server-Solution ist `{{BackendRoot}}/{{RootNamespace}}.slnx`, jedes Projekt in einem
  eigenen Unterordner.
- **Zentrales Paketmanagement** über `{{BackendRoot}}/Directory.Packages.props` — eine
  Paketversion steht dort genau einmal, und die Projekte referenzieren Pakete ohne Version.
- Die gemeinsame **`.editorconfig`** im Repo-Root ist nicht projektspezifisch: sie wird nicht
  passend zu diesem Repo umgebaut.
- Eine **lokale `nuget.config`** legt die Paketquellen fest, mit `<clear />` an erster Stelle,
  damit keine rechnerweite Quelle hineinrutscht.
- **Tests liegen in derselben Solution**, als Schwesterprojekt neben dem getesteten Code
  (`{{RootNamespace}}.Server.Tests` neben `{{RootNamespace}}.Server`) — nie in einer eigenen
  Solution.
- **Serilog** überall, mit zwei Sinks: farbige Konsole und täglich rollierende Dateien in das
  git-ignorierte `logs/` im Repo-Root.
- Pfade für persistente Daten werden einmal beim Start über `AppPaths`
  (`Configuration/AppPaths.cs`) aufgelöst, konfigurierbar über `AppPaths:DataDirectory` und
  `AppPaths:LogsDirectory`. Nichts sonst baut sich einen Pfad nach `data/` oder `logs/`
  von Hand zusammen.
