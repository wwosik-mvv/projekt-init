## Lokal starten

```
./run.ps1        # oder ./run.sh — startet den Entwicklungsserver über https
./run.ps1 test
./run.ps1 build
./run.ps1 watch
```

Einmal pro Rechner dem lokalen Entwicklungszertifikat vertrauen:

```
dotnet dev-certs https --trust
```

Die API-Referenz liegt unter `/scalar`, das OpenAPI-Dokument unter `/openapi/v1.json`, der
Health-Endpunkt unter `/health`.
