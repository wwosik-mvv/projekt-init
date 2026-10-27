Die Pipeline baut das Dockerfile des Repos, überträgt ein mit der Azure-DevOps-Build-ID markiertes
Image nach ACR und aktualisiert anschließend eine vorhandene Azure Container App. Diese
Pipelinevariablen müssen konfiguriert werden:

- `acrLoginServer` — ACR-Loginserver, zum Beispiel `example.azurecr.io`.
- `containerRepository` — Name des Image-Repositories.
- `dockerfilePath` und `dockerBuildContext` — Pfade zu Dockerfile und Build-Kontext.
- `azureResourceGroup` und `containerAppName` — Ziel einer vorhandenen Container App.

Die Docker-Registry- und Azure-Resource-Manager-Service-Connections werden beim Scaffold-Aufbau
ausgewählt und als literale Task-Eingaben in die Pipeline eingesetzt.
Die Container App muss für den Image-Pull aus ACR konfiguriert sein, vorzugsweise mit einer Managed
Identity. Die Azure-Service-Connection erhält nur die zum Aktualisieren der App nötigen Rechte.
Zugangsdaten gehören in Service-Connections oder geheime Variablen, niemals ins Repo. Diese
Pipeline provisioniert weder ACR noch die Container App.