    build) exec dotnet build "$repo_root/{{BackendRoot}}/{{RootNamespace}}.slnx" ;;
    test) exec dotnet test "$repo_root/{{BackendRoot}}/{{RootNamespace}}.slnx" ;;
