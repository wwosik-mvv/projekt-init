## Formatierung

Markdown wird von **Prettier** formatiert, konfiguriert im Feld `"prettier"` der `package.json`
im Repo-Root und automatisch angewandt durch einen `pre-commit`-Hook (husky + lint-staged).

Von Hand formatieren ist nicht nötig — das erledigt der Hook. Wer Dateien außerhalb des
normalen Git-Flows bearbeitet, führt vor dem Commit des Menschen `npm run format` aus.

Eine Datei, die du sonst nicht anfasst, wird nicht neu formatiert: ein reiner Format-Diff mitten
in einer fachlichen Änderung verdeckt die eigentliche Arbeit.
