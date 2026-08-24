### Webanwendungen

- APIs werden in der Entwicklung über **lokales HTTPS** bereitgestellt — nie über einfaches
  HTTP.
- **Minimal APIs**, keine Controller.
- **OpenAPI** ist immer aktiv, und **Scalar** liefert die API-Referenz-Oberfläche.
- Ein `/health`-Endpunkt existiert immer.
- Die Validierung soll **alle** Feldfehler auf einmal zurückgeben statt einen nach dem anderen:
  - Zuerst den Request in das DTO parsen, danach validieren — ein Parsing-Fehler bricht ab und
    meldet nur das erste Problem.
  - Deshalb **kein `required`** auf DTO-Properties: ein fehlendes Feld würde damit zu einem
    Parsing- statt zu einem Validierungsproblem.
  - Attribut-Validierung bevorzugen; `IValidatableObject` läuft erst, wenn die
    Attribut-Validierung erfolgreich war.
  - Statt Arrays `IReadOnly`-Collections verwenden — die .NET-10-Validierung hat mit Arrays
    weiterhin Probleme. `MinLength` funktioniert bei Collections.
- Fehlgeschlagene Validierung liefert **HTTP 422**, nicht 400, damit fachliche von technischen
  Problemen unterscheidbar bleiben.
