## .NET-Konventionen

- Immer die **neueste** .NET-Version.
- Die Solution ist `{{BackendRoot}}/{{RootNamespace}}.slnx`, jedes Projekt in einem
  eigenen Unterordner.
- **Zentrales Paketmanagement** über `{{BackendRoot}}/Directory.Packages.props` — eine
  Paketversion steht dort genau einmal, und die Projekte referenzieren Pakete ohne Version.
- Die gemeinsame **`.editorconfig`** im Repo-Root ist nicht projektspezifisch: sie wird nicht
  passend zu diesem Repo umgebaut.
- Eine **lokale `nuget.config`** legt die Paketquellen fest, mit `<clear />` an erster Stelle,
  damit keine rechnerweite Quelle hineinrutscht.
- **Tests liegen in derselben Solution**, als Schwesterprojekt neben dem getesteten Code
  (`{{RootNamespace}}.Tests` neben `{{RootNamespace}}`) — nie in einer eigenen Solution.

### Bibliotheken

- Das Bibliotheksprojekt ist paketierbar und erzeugt eine XML-Dokumentationsdatei: jeder
  öffentliche Typ und jedes öffentliche Member trägt ein `<summary>`.
- Die öffentliche API klein halten — `public` ist ein Versprechen an die Nutzer; Standard ist
  `internal`.
- Eine Bibliothek loggt nicht über einen konkreten Logger, liest keine Konfigurationsdateien und
  fasst die Konsole nicht an. Stattdessen nimmt sie `ILogger` oder einfache Parameter vom Aufrufer.
