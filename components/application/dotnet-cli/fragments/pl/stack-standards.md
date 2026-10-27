### Aplikacje wiersza poleceń

- Projekt CLI (`{{RootNamespace}}.Cli`) to cienka powłoka: parsowanie, wyjście, kody wyjścia.
  Logika leży w projekcie biblioteki i tam jest testowana.
- Polecenia powstają w `CliApp.Create()` z użyciem **System.CommandLine**; `Program.cs` tylko je
  wywołuje.
- Wyniki zapisuj do `parseResult.InvocationConfiguration.Output`, nigdy bezpośrednio do
  `Console`, żeby testy mogły je przechwycić.
- Kod wyjścia `0` przy sukcesie, różny od zera przy błędzie. Błędy trafiają do strumienia błędów,
  nie na standardowe wyjście.
- Tekst dla człowieka uruchamiającego narzędzie jest w języku projektu; kod, opcje i nazwy poleceń
  zostają po angielsku.
