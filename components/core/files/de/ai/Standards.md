# Konventionen dieses Repos

Diese Datei ist in sich geschlossen: alles, was ein Agent braucht, steht hier — nicht hinter
einem Verweis auf ein anderes Repo oder ein lokales Laufwerk.

## Repository

- Die gesamte Anwendung liegt in **einem Git-Repo**.
- Das gesamte Projektgedächtnis ist **gemeinsam** in `ai/` — nie geräte-lokal.
- **Temporäre Dateien und Scratch-Dateien** gehören ins `.tmp/` im Repo-Root (git-ignoriert) —
  nie ins System-Temp, nie nach AppData.
- Programmdaten liegen im git-ignorierten `data/`.
- Logs rollen täglich ins git-ignorierte `logs/` im Repo-Root.
- `AGENTS.md` bleibt klein und verweist nach `ai/`; `CLAUDE.md` verweist ausschließlich auf
  `AGENTS.md`.

## Ordnerstruktur

| Pfad | Zweck |
| ---- | ----- |
| `ai/` | KI-Vorgaben und gemeinsames Projektgedächtnis |
| `docs/` | Dokumentation, wie das Programm tatsächlich funktioniert |
| `data/` | Programmdaten (git-ignoriert) |
| `logs/` | Täglich rollierende Logs (git-ignoriert) |
| `.tmp/` | Scratchpad (git-ignoriert) |
<!-- slot: folders -->

<!-- slot: tooling -->

<!-- slot: stack-standards -->

<!-- slot: deployment -->

<!-- slot: docs-standards -->

<!-- slot: formatting -->

## Abweichungen

Wo dieses Repo von den obigen Konventionen abweicht — weil es älter ist als sie, oder weil etwas
Konkretes es erfordert hat. Was hier steht, ist Absicht: nicht ohne Rückfrage „reparieren".

| Konvention | Was dieses Repo stattdessen tut | Warum |
| ---------- | ------------------------------- | ----- |
| — | — | — |
