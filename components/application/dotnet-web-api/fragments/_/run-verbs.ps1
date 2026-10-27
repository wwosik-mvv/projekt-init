    'run' { dotnet run --project (Join-Path $repoRoot '{{BackendRoot}}/{{RootNamespace}}.Server/{{RootNamespace}}.Server.csproj') --launch-profile https; exit $LASTEXITCODE }
    'watch' { dotnet watch --project (Join-Path $repoRoot '{{BackendRoot}}/{{RootNamespace}}.Server/{{RootNamespace}}.Server.csproj') --launch-profile https; exit $LASTEXITCODE }
