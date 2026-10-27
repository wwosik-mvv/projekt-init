## Uruchamianie lokalnie

```
./run.ps1        # albo ./run.sh — uruchamia serwer deweloperski po https
./run.ps1 test
./run.ps1 build
./run.ps1 watch
```

Raz na maszynie zaufaj lokalnemu certyfikatowi deweloperskiemu HTTPS:

```
dotnet dev-certs https --trust
```

Podgląd API jest pod `/scalar`, dokument OpenAPI pod `/openapi/v1.json`, a health check pod
`/health`.
