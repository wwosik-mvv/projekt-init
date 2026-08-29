# spec

Spezifikationen und der Aufgaben-Lebenszyklus. Der Ablauf steht in
[../ai/Arbeitsablauf.md](../ai/Arbeitsablauf.md); diese Datei ist die Karte der Ordner.

| Ordner | Inhalt |
| ------ | ------ |
| `00-ideensammlung/` | Rohe Ideen, vom Menschen geschrieben. Eine Datei je Idee oder Thema; eingefügte User Stories behalten ihre Referenznummer. |
| `10-analysen/` | Angeforderte Analysen, `JJJJ-MM-TT <slug>.md`. Das Ergebnis landet hier in Dateien, nie im Chat. |
| `50-entwurf/` | Konkrete, ausiterierte Pläne, die auf die Umsetzung warten. |
| `60-prüfung/` | Umgesetzte Aufgaben, die auf die Verifikation durch den Menschen warten. Jede trägt ein Kapitel *Implementierungsnotizen*. |
| `70-fertig/` | Verifiziert und freigegeben. |

Die Zahlenpräfixe gibt es, damit der Ablauf unabhängig von der Projektsprache in der richtigen
Reihenfolge steht. Die Lücken sind Absicht — eine neue Stufe lässt sich einfügen, ohne alles
umzunummerieren.

Plandateien heißen `NNNNN Titel.md`, oder `NNNNN {{RefPrefix}}nnnn Titel.md`, wenn eine externe
Referenz bekannt ist. Die Nummer ist über das gesamte `spec/` fortlaufend, und der Dateiname
ändert sich beim Verschieben zwischen den Ordnern nicht.

- Fertige Arbeit committen; nach einer erledigten Aufgabe rebasen und pushen.
- Analysen nie im Chat schreiben; die Datei schreiben.
