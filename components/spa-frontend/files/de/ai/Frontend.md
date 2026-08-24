# Frontend-Konventionen

Eine Angular-SPA in `{{FrontendRoot}}`, die die über OpenAPI beschriebene API des Backends nutzt.

## Paketverwaltung

**Nur pnpm.** Taucht in diesem Repo eine `package-lock.json` oder `yarn.lock` auf, ist das ein
Fehler — löschen und `pnpm` verwenden.

## Zugriff auf die API

- Der typisierte Client wird **aus dem OpenAPI-Dokument des Backends generiert**. Ein DTO, das es
  im Vertrag bereits gibt, wird nie von Hand geschrieben, und kein Endpunkt wird mit einem
  untypisierten `fetch` aufgerufen.
- Den Client nach einer Backend-Änderung neu zu generieren, gehört zu dieser Änderung — es ist
  keine Folgeaufgabe.
- Komponenten rufen kein HTTP direkt auf: sie gehen über einen Service.

## Aufbau

- Feature-first: alles, was zu einem Feature gehört, liegt beisammen, statt über globale Ordner
  `components/`, `services/`, `models/` verteilt zu werden.
- Gemeinsame Bausteine, die mehr als ein Feature verwendet, wandern in einen geteilten Bereich —
  vorher nicht.

## Sprache

Code, Bezeichner, Ordnernamen und Kommentare sind **englisch**; Fachvokabular darin folgt der
Projektsprache. Jeder Text, den der Benutzer liest, ist in der Projektsprache und wird aus der
Komponentenlogik herausgehalten, damit er an einer Stelle auffindbar und änderbar bleibt.

## Styling

- Einfaches CSS mit Custom Properties, sofern keine UI-Bibliothek vereinbart und in
  [Gedächtnis.md](Gedächtnis.md) festgehalten wurde.
- Heller und dunkler Modus funktionieren beide. Keine fest verdrahteten Farben in Komponenten.
