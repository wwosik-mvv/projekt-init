### Kommandozeilen-Apps

- Das CLI-Projekt (`{{RootNamespace}}.Cli`) ist eine dünne Hülle: Parsing, Ausgabe, Exitcodes.
  Die Logik liegt im Bibliotheksprojekt und wird dort getestet.
- Befehle entstehen in `CliApp.Create()` mit **System.CommandLine**; `Program.cs` ruft sie nur auf.
- Ergebnisse gehen nach `parseResult.InvocationConfiguration.Output`, nie direkt nach `Console`,
  damit Tests sie abfangen können.
- Exitcode `0` bei Erfolg, sonst ungleich null. Fehler gehen in den Fehlerstrom, nicht in die
  Standardausgabe.
- Text für den Menschen, der das Tool aufruft, steht in der Projektsprache; Code, Optionen und
  Befehlsnamen bleiben Englisch.
