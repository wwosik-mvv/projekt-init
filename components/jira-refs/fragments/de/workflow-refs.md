## JIRA-Referenzen

Pläne in diesem Repo entsprechen in der Regel einem JIRA-Ticket im Projekt `{{TrackerKey}}`
(`{{TrackerBaseUrl}}`).

**Im Dateinamen** steht der Ticket-Schlüssel zwischen laufender Nummer und Titel:

```
00010 {{TrackerKey}}-533 Reflexionsbasierte Nachrichten-Polymorphie.md
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
Platzhalter ersetzen, die ID in den H1-Titel des Plans aufnehmen und die Plandatei umbenennen,
sodass die ID zwischen Nummer und Titel steht.
