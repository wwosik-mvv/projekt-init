    'build' { dotnet build (Join-Path $repoRoot '{{BackendRoot}}/{{RootNamespace}}.slnx'); exit $LASTEXITCODE }
    'test' { dotnet test (Join-Path $repoRoot '{{BackendRoot}}/{{RootNamespace}}.slnx'); exit $LASTEXITCODE }
