# {{ProjectName}}

{{ProjectDescription}}

<!-- slot: stack -->

Hier beginnen, dann den Verweisen folgen:

- [ai/Standards.md](ai/Standards.md) — die Konventionen, denen dieses Repo folgt.
- [ai/Gedächtnis.md](ai/Gedächtnis.md) — gesammelte Fakten zu dieser Codebasis.
<!-- slot: ai-pointers -->
- [docs/](docs/) — Dokumentation, wie die Anwendung heute tatsächlich funktioniert.

<!-- slot: layout -->

## Sprache

Die Sprache dieses Repos ist **Deutsch**. Das gilt für sämtliche Prosa, Pläne, Dokumentation,
Oberflächentexte und Commit-Nachrichten.

Das technische Gerüst ist in jedem Projekt dieser Familie englisch und keine Sprachentscheidung:
`src/`, `tools/`, `deploy/`, `logs/`, `data/`, `.tmp/`, `run.ps1`, `run.sh` und alle
Konfigurationsdateien, Inhalt eingeschlossen. Auch die Ordnernamen `ai/`, `spec/`, `docs/`,
`.github/` und die Dateien `AGENTS.md`, `CLAUDE.md`, `README.md` stehen fest — aber alles
darin ist in der Projektsprache.

Im Code und in der Datenbank ist **alles englisch** — Bezeichner, Tabellen- und Spaltennamen,
Kommentare, Log-Meldungen, Fachvokabular eingeschlossen. Nur was der Benutzer liest, ist
deutsch.

## Feste Regeln

- **Fertige Arbeit wird standardmäßig committet.** Ist eine Aufgabe erledigt, wird committet,
  was sie berührt hat — nichts bleibt im Working Tree liegen, damit der Mensch es findet.
  Einzelheiten in [ai/Standards.md](ai/Standards.md).
- **Nach einer größeren Aufgabe: rebasen, dann pushen.** Konflikte werden dabei aufgelöst; ist
  die richtige Auflösung nicht offensichtlich, wird nachgefragt.
- **Temporäre Dateien und Scratch-Dateien gehören ins `.tmp/`** im Repo-Root (git-ignoriert) —
  niemals ins System-Temp, niemals nach AppData.
- **Das gesamte Projektgedächtnis liegt gemeinsam in `ai/`** — nie im geräte-lokalen Gedächtnis
  eines Werkzeugs, damit jeder Agent auf jedem Rechner dasselbe liest.
<!-- slot: hard-rules-extra -->

<!-- slot: commands -->
