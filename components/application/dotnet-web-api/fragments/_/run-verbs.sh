    run) exec dotnet run --project "$repo_root/{{BackendRoot}}/{{RootNamespace}}.Server/{{RootNamespace}}.Server.csproj" --launch-profile https ;;
    watch) exec dotnet watch --project "$repo_root/{{BackendRoot}}/{{RootNamespace}}.Server/{{RootNamespace}}.Server.csproj" --launch-profile https ;;
