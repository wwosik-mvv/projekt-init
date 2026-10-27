# Deutsch

## Dateibenennung

**Dateien** in `ai/` werden großgeschrieben, der deutschen Substantivschreibung folgend:
`Arbeitsablauf.md`, `Standards.md`, `Gedächtnis.md`.

**Ordner** werden kleingeschrieben und mit Bindestrichen getrennt: `10-analysen/`,
`20-benutzerhandbuch/`. Sie tragen ein Zahlenpräfix, das die Reihenfolge festlegt, und lesen
sich klein besser.

Umlaute und Eszett sind in Datei- und Ordnernamen erlaubt (`Gedächtnis.md`, `60-prüfung/`) —
UTF-8 funktioniert auf Linux und GitHub problemlos. Leerzeichen dagegen nicht, außer in Plan-
und Analysedateien, die weiter unten ihr eigenes Muster haben.

## `ai/` — Inhalt

Der Ordnername bleibt `ai/`. Die Dateien darin:

| Rolle | Dateiname |
| ----- | --------- |
| Wie in diesem Repo gearbeitet wird | `Arbeitsablauf.md` |
| Die Konventionen, denen dieses Repo folgt | `Standards.md` |
| Gesammelte Fakten und getroffene Entscheidungen zur Codebasis | `Gedächtnis.md` |
| UI-Konventionen (nur mit UI) | `UI.md` |
| Frontend-Konventionen (nur mit SPA) | `Frontend.md` |
| Konventionen zum Schreiben der Doku (nur mit `docs-arc42`) | `Dokumentation.md` |

Hier keine Zahlenpräfixe — `AGENTS.md` verlinkt diese Dateien einzeln, eine Reihenfolge ist
also nicht gemeint.

Es gibt bewusst keine eigene `Architektur.md`: getroffene technische Entscheidungen sind Fakten
über die Codebasis und gehören in `Gedächtnis.md`, damit es immer nur eine Stelle zum Nachsehen
gibt.

## `spec/` — Inhalt

Der Ordnername bleibt `spec/`. Die Unterordner sind nummeriert, damit die Reihenfolge des
Ablaufs unabhängig von der Sprache lesbar bleibt; die Lücken sind Absicht:

| Präfix | Ordner | Inhalt |
| ------ | ------ | ------ |
| `00` | `00-ideensammlung/` | Rohe Ideen, vom Menschen geschrieben. Eine Datei je Idee oder Thema. Eingefügte User Stories behalten ihre Referenznummer. |
| `10` | `10-analysen/` | Angeforderte Analysen. Das Ergebnis landet hier in Dateien, nie im Chat. |
| `50` | `50-entwurf/` | Offene Feature-Epics, Meilensteine und Stories, die auf Umsetzung warten. |
| `55` | `55-in-arbeit/<agent-id>/` | Von einem Agent geclaimte Stories. |
| `60` | `60-prüfung/` | Umgesetzte Stories, die auf Verifikation durch den Menschen warten. Jede trägt *Implementierungsnotizen*. |
| `70` | `70-fertig/<epic-id>-<slug>/` | Verifizierte Stories zusammen mit ihrem abgeschlossenen Feature-Epic. |

Dateibenennung darin:

| Ordner | Muster | Beispiel |
| ------ | ------ | -------- |
| `00-ideensammlung/` | `<slug>.md`, frei | `live-zusammenarbeit.md` |
| `10-analysen/` | `JJJJ-MM-TT <slug>.md` | `2026-08-22 backend-api-vertragsinventar.md` |
| `50-entwurf/` | `E01-<slug>.md` Epic; `E01-S01-<slug>.md` Feature-Story; `T01-S01-<slug>.md` technische Story; `M01-<slug>.md` Meilenstein | `E02-anfrageeingang.md`, `E02-S01-id-erzeugung.md`, `T01-S01-speicher.md`, `M01-mvp.md` |
| `55-in-arbeit/`, `60-prüfung/` | Dieselbe Story-ID und derselbe Dateiname; in `55` unter dem Agent-Ordner | `E02-S01-id-erzeugung.md` |
| `70-fertig/` | `<epic-id>-<epic-slug>/<story-id>-<story-slug>.md`; die Epic-Datei zieht mit um; technische Stories nutzen `T01-technisch/` | `E02-anfrageeingang/E02-S01-id-erzeugung.md` |

Das Präfix der Referenz ist das Token `{{RefPrefix}}` — standardmäßig `W-`, mit `jira-refs` der
JIRA-Projektschlüssel.

Storynummern zählen innerhalb des Feature-Epics oder technischen Containers. Die nächste freie
`E`-/`M`-ID und Storynummer verwenden; technische Container enthalten höchstens 99 Stories
(`T01-S99`, dann `T02-S01`). Eine externe Referenz steht nach der Story-ID und vor dem Slug; ihr
Präfix ist `{{RefPrefix}}` (standardmäßig `W-`, mit `jira-refs` der JIRA-Projektschlüssel). Der
Storydateiname ändert sich beim Verschieben zwischen Ordnern nicht.

Die Vorlage für Pläne heißt `spec/_vorlage.md`.

## `docs/` — Inhalt

Der Ordnername bleibt `docs/`. Die Unterordner sind wie in `spec/` nummeriert und existieren nur
mit der Komponente `docs-arc42`:

| Präfix | Ordner |
| ------ | ------ |
| `10` | `10-technische-dokumentation/` |
| `20` | `20-benutzerhandbuch/` |
| `30` | `30-wissensdatenbank/` |

## Standardüberschriften

Wörtlich so zu verwenden — in Plandateien und in den erzeugten `AGENTS.md` / `ai/*.md` —, damit
eine Überschrift in jedem Repo dasselbe bedeutet:

| Rolle | Überschrift |
| ----- | ----------- |
| Plan: was und wozu | `Zusammenfassung` |
| Plan: bestehendes Verhalten und Einschränkungen | `Kontext` |
| Plan: geordnete Schritte | `Vorgeschlagener Ansatz` |
| Plan: überprüfbare Ergebnisse | `Akzeptanzkriterien` |
| Plan: Fragen an den Menschen, jeweils mit Platz für die Antwort | `Offene Fragen` |
| Plan: freier Raum für Anmerkungen des Menschen | `Notizen` |
| Plan: nach der Umsetzung angehängt | `Implementierungsnotizen` |
| AGENTS.md: die Sprachregeln dieses Repos | `Sprache` |
| AGENTS.md: das Nichtverhandelbare | `Feste Regeln` |

Der Antwortplatz unter jeder offenen Frage ist eine leere Zitatzeile:

```markdown
1. Soll eine Reise in v1 mehrere Teilnehmer unterstützen?

>

2. Wo werden erzeugte PDFs abgelegt?

>
```

## Prosa

- Auf Deutsch, einschließlich `README.md`, `AGENTS.md`, allem unter `ai/`, `spec/` und `docs/`
  sowie sämtlichen Texten in der Benutzeroberfläche.
- Commit-Nachrichten auf Deutsch.
- In Oberflächentexten wird direkte Anrede vermieden, wo es geht (`Reise anlegen`, nicht
  `Legen Sie eine Reise an`); wo sie unvermeidlich ist, wird gesiezt.

## Code

Code, Bezeichner, Ordnernamen im Code, Kommentare, Log-Meldungen sowie **Tabellen- und
Spaltennamen in der Datenbank** sind **ausnahmslos englisch** — Fachvokabular eingeschlossen.
Also `Contract` und die Tabelle `contracts`, nicht `Vertrag` und `vertraege`. Die Trennlinie
verläuft zwischen Code und dem, was ein Benutzer liest, nicht zwischen Fachlichem und
Technischem.

Alles, was der Benutzer liest — Überschriften, Beschriftungen, Schaltflächen,
Validierungsmeldungen, Leerzustände, Fehlertexte —, ist auf Deutsch.
