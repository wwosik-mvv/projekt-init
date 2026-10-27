using {{RootNamespace}}.Cli;

return await CliApp.Create().Parse(args).InvokeAsync();
