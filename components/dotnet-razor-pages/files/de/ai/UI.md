# UI-Konventionen

Die Oberfläche besteht aus serverseitig gerenderten Razor Pages. Interaktivität ist ein
normales Formular-Post oder eine Seitennavigation. Live-Aktualisierung ist nicht verdrahtet:
braucht ein Feature sie wirklich, kommt SignalR als Teil dieses Features dazu und die
Entscheidung wird in [Gedächtnis.md](Gedächtnis.md) festgehalten.

## Aufbau

- Eine Seite je URL unter `Pages/`, mit dem Code-Behind daneben (`Index.cshtml` +
  `Index.cshtml.cs`).
- Gemeinsames Layout und geteilte Partials in `Pages/Shared/`. Ein Partial, das nur eine einzige
  Seite verwendet, liegt neben dieser Seite, nicht in `Shared/`.
- `PageModel`-Klassen enthalten keine Fachlogik — sie rufen Services auf und bereiten Daten für
  die View auf.

## Markup und Styling

- Zuerst semantisches HTML. Ein `div` ist das, was übrig bleibt, wenn nichts Passenderes greift.
- Styles in `wwwroot/css/site.css`, über die CSS-Custom-Properties am Dateianfang. Heller und
  dunkler Modus müssen beide funktionieren — `color-scheme` und `prefers-color-scheme` sind
  bereits verdrahtet.
- Standardmäßig wird kein CSS- oder JS-Framework eingebunden. Wird eines nötig, wird die
  Entscheidung mit Begründung in [Gedächtnis.md](Gedächtnis.md) festgehalten.
- Keine Inline-Styles, und kein JavaScript im Markup außerhalb eines `Scripts`-Abschnitts.

## Sprache

Markup, Tag Helper, `@model`-Deklarationen, Klassen- und Membernamen sowie Kommentare sind
**englisch**, Fachvokabular eingeschlossen. Alles, was der Benutzer liest — Überschriften,
Beschriftungen, Schaltflächen, Validierungsmeldungen, Leerzustände, Fehlertexte —, ist auf
Deutsch. Siehe [AGENTS.md](../AGENTS.md).

## Formulierungen

- Schlicht und direkt. Keine Ausrufezeichen, keine Füllwörter.
- Schaltflächen sagen, was sie tun (`Reise speichern`, nicht `Absenden`).
- Ein Leerzustand erklärt, was hier stehen würde und wie man das Erste anlegt.
- Eine Fehlermeldung sagt, was fehlgeschlagen ist und was als Nächstes zu tun ist — nie bloß,
  dass etwas schiefging.
