# Dokumentation schreiben

Die Dokumentation liegt unter `docs/`, in drei Teilen mit drei verschiedenen Zielgruppen.
Schreibe für die Zielgruppe des Teils, in dem du bist — sie zu vermischen ist der häufigste
Fehler.

| Ordner | Zielgruppe | Beantwortet |
| ------ | ---------- | ----------- |
| `10-technische-dokumentation/` | Entwickler | Wie ist das System gebaut, und warum so |
| `20-benutzerhandbuch/` | Benutzer | Wie erledige ich diese Aufgabe |
| `30-wissensdatenbank/` | Alle | Was gilt fachlich, unabhängig von dieser Anwendung |

## Regeln

- **Dokumentiert wird, was ist, nicht was geplant ist.** Pläne gehören nach `spec/`. Eine
  Dokumentationsdatei, die ein noch nicht gebautes Feature beschreibt, ist ein Fehler.
- Dokumentation wird **in derselben Änderung** aktualisiert wie der Code, den sie beschreibt.
  Abgedriftete Dokumentation ist schlimmer als keine, weil ihr vertraut wird.
- Ein Diagramm ist drei Absätzen vorzuziehen, die dieselbe Struktur beschreiben. Diagramme stehen
  als Mermaid direkt in der Datei, damit sie diffbar bleiben — nicht als exportierte Bilder.
- Zwischen den drei Teilen wird verlinkt, statt Inhalte zu wiederholen.
- Jede Datei beginnt mit einer Überschrift, die sagt, worum es geht, damit Suchtreffer lesbar
  sind.

## Sprache

`docs/` ist vollständig in der Projektsprache, einschließlich Überschriften,
Diagrammbeschriftungen und Dateinamen. Aus dem Code zitierte Bezeichner behalten ihre
ursprüngliche Schreibweise.
