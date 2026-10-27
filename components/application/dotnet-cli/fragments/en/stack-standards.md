### Command-line apps

- The CLI project (`{{RootNamespace}}.Cli`) is a thin shell: parsing, output, exit codes. Logic
  lives in the library project and is tested there.
- Commands are built in `CliApp.Create()` with **System.CommandLine**; `Program.cs` only invokes
  it.
- Write results to `parseResult.InvocationConfiguration.Output`, never `Console` directly, so
  tests can capture them.
- Exit code `0` on success, non-zero on failure. Errors go to the error stream, not standard
  output.
- Text meant for the human running the tool is in the project language; code, option names and
  command names stay English.
