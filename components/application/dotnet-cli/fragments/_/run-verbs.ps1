    'run' { dotnet run --project (Join-Path $repoRoot '{{BackendRoot}}/{{RootNamespace}}.Cli/{{RootNamespace}}.Cli.csproj') -- @Rest; exit $LASTEXITCODE }
