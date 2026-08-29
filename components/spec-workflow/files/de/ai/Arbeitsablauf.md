# Wie in diesem Repo gearbeitet wird

Idee → Plan → Iteration → Umsetzung → Verifikation → Ablage. Jeden Übergang stößt der Mensch an;
nichts rückt von allein weiter.

## 1. Ideen — `spec/00-ideensammlung/`

Vom Menschen geschrieben, eine Datei je Idee oder Thema, frei formuliert. Eine Idee, die aus
einem externen Ticketsystem übernommen wurde, behält ihre ursprüngliche Referenznummer (z. B.
`{{RefPrefix}}001235`), damit der Weg zurück nie verloren geht.

## 2. Plan — `spec/50-entwurf/`

Wird darum gebeten, aus einer Idee einen Plan zu machen, entsteht in `spec/50-entwurf/` eine
Datei `NNNNN Titel.md` — oder `NNNNN {{RefPrefix}}nnnn Titel.md`, wenn die externe Referenz
bekannt ist; die Referenz steht dann zwischen Nummer und Titel.

Die fünfstellige Nummer ist über das gesamte `spec/` fortlaufend: die höchste bereits vergebene
Nummer in irgendeinem der Ordner plus eins.

Als Grundgerüst dient [../spec/_vorlage.md](../spec/_vorlage.md). Jeder Plan endet mit:

- **Offene Fragen** — jede Frage gefolgt von einer leeren Zitatzeile als Platz für die Antwort.
- **Notizen** — freier Raum für Anmerkungen des Menschen, die keine Antworten auf diese Fragen
  sind.

## 3. Iterieren

Der Mensch trägt Antworten ein; der Plan wird in derselben Datei überarbeitet. Das wird
wiederholt, bis der Mensch den Plan akzeptiert. Ein nicht akzeptierter Plan wird nicht umgesetzt.

## 4. Umsetzen

Sobald der Plan akzeptiert ist und die Umsetzung angefragt wird:

1. Den Plan umsetzen.
2. Die Plandatei von `spec/50-entwurf/` nach `spec/60-prüfung/` **verschieben** — gleicher
   Dateiname.
3. Ein Kapitel **Implementierungsnotizen** anhängen: unterwegs getroffene Entscheidungen,
   Kompromisse, Abweichungen vom Plan, Warnungen, worauf bei der Prüfung zu achten ist, offene
   Punkte für später.
4. Umsetzung und verschobene Plandatei zusammen **committen**.
5. **Rebasen und pushen** — das zählt als größere Aufgabe. Konflikte auflösen und nachfragen,
   wenn die richtige Auflösung nicht offensichtlich ist.
6. Im Chat **nur** melden, dass die Aufgabe erledigt ist. **Keine Zusammenfassung** — die
   Einzelheiten stehen in der Datei.

## 5. Verifizieren

Der Mensch verifiziert. Nach Freigabe wird die Datei nach `spec/70-fertig/` **verschoben**.

<!-- slot: workflow-refs -->

## Analysen — `spec/10-analysen/`

Wird eine Analyse angefragt, landet das Ergebnis in einer Datei unter `spec/10-analysen/` mit
dem Namen `JJJJ-MM-TT <slug>.md` — **niemals** im Chat. Im Chat wird nur gemeldet, dass sie
fertig ist und wo sie liegt.

Analysen gehen Plänen häufig voraus: eine Analyse stellt fest, was ist; ein Plan schlägt vor,
was sich ändern soll.

## Feste Regeln

- **Fertige Arbeit committen**, und nach einer erledigten Aufgabe rebasen und pushen — siehe
  den Git-Abschnitt in [Standards.md](Standards.md).
- Temporäre Dateien und Scratch-Dateien gehören ins `.tmp/` im Repo-Root, nie ins System-Temp
  oder nach AppData.
- Das gesamte Projektgedächtnis bleibt gemeinsam in `ai/`.
<!-- slot: workflow-extra -->
