## Running locally

```
./run.ps1        # or ./run.sh — starts the dev server over https
./run.ps1 test
./run.ps1 build
./run.ps1 watch
```

First time on a machine, trust the local development HTTPS certificate:

```
dotnet dev-certs https --trust
```

The API reference is at `/scalar` and the OpenAPI document at `/openapi/v1.json`; health is at
`/health`.
