## Werkzeuge

- Werkzeuge, die **speziell für dieses Repo** geschrieben werden, sind **Single-File-Apps unter
  .NET 10**, aufgerufen als `dotnet run tools/<name>/<name>.cs` (setzt voraus, dass .NET 10
  installiert ist). NuGet-Abhängigkeiten stehen als `#:package`-Direktiven am Dateianfang.
- **Kein PowerShell, kein Python.** Das einzige `.ps1` im Repo ist der Launcher selbst.
- Erledigt ein fertiges **npm-Paket** die Aufgabe bereits, wird es unverändert unter `tools/npm`
  mit **pnpm** verwendet — nicht in .NET nachgebaut.
- Bestehende Drittanbieter-Werkzeuge müssen nicht umgeschrieben werden.
- **Einmalige Wegwerf-Werkzeuge** und Scratch-Daten gehören ins `.tmp/`, nicht nach `tools/`.
  `tools/` ist für das, was bleibt.
- `tools/`, `run.ps1` und `run.sh` sind **durchgehend englisch** — Code, Kommentare und Ausgabe —
  unabhängig davon, in welcher Sprache der Rest des Repos ist.

Beide Launcher müssen im Gleichschritt bleiben: ein Verb, das in `run.ps1` dazukommt, kommt in
derselben Änderung auch in `run.sh` dazu.
