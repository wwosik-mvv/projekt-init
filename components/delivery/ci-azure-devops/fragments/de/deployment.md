## Build und Deployment

Builds laufen in Azure DevOps, im Projekt `{{AzureProject}}`, nach den Definitionen unter
`azure-devops/`. Jeder Push auf `main` restauriert, baut und testet.

Die Deployment-Ziele gehören zur Infrastruktur der Organisation, nicht zu diesem Repo. Erfinde
keine Deployment-Schritte: fehlt eine Stufe, ist das eine Frage an den Menschen und keine Lücke
zum Auffüllen.
