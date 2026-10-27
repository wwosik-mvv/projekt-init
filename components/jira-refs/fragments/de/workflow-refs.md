## JIRA-Referenzen

Stories in diesem Repo entsprechen in der Regel einem JIRA-Ticket im Projekt `{{TrackerKey}}`
(`{{TrackerBaseUrl}}`).

**Im Dateinamen** steht der Ticket-Schlüssel nach der Story-ID und vor dem Slug:

```
E02-S05-{{TrackerKey}}-533-reflexionsbasierte-nachrichten-polymorphie.md
```

**Im Plan** wird auf Anfrage ein Kapitel `## JIRA-Story` **direkt nach `## Zusammenfassung`**
eingefügt, vor allen anderen Kapiteln. Es wird aus Zusammenfassung und Akzeptanzkriterien des
Plans abgeleitet, und alle drei Labels werden immer ausgeschrieben:

- `Titel:`
- `Zusammenfassung:`
- `Akzeptanzkriterien:` gefolgt von Bulletpoints

Das Kapitel beginnt mit einer Platzhalterzeile:

```
> JIRA: _(Ticket-Nummer wird nach Anlage ergänzt)_
```

Nennt der Mensch später die angelegte Ticket-ID, geschieht alles drei in einer Änderung: den
Platzhalter ersetzen, die ID in den H1-Titel der Story aufnehmen und die Storydatei umbenennen,
sodass die ID nach der Story-ID und vor dem Slug steht.
