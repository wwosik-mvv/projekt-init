## Konwencje .NET

- Zawsze **najnowsza** wersja .NET.
- Solucja to `{{BackendRoot}}/{{RootNamespace}}.slnx`, każdy projekt we własnym
  podkatalogu.
- **Centralne zarządzanie pakietami** przez `{{BackendRoot}}/Directory.Packages.props` — wersja
  pakietu jest zadeklarowana dokładnie raz, a projekty referują pakiety bez wersji.
- Wspólny **`.editorconfig`** w katalogu głównym nie jest specyficzny dla projektu: nie
  przerabiaj go pod to repo.
- **Lokalny `nuget.config`** ustala źródła pakietów, z `<clear />` na początku, żeby nie
  przeciekło żadne źródło skonfigurowane globalnie na maszynie.
- **Testy leżą w tej samej solucji**, jako projekt sąsiadujący z testowanym kodem
  (`{{RootNamespace}}.Tests` obok `{{RootNamespace}}`) — nigdy w osobnej solucji.

### Biblioteki

- Projekt biblioteki jest pakowalny i generuje plik dokumentacji XML: każdy publiczny typ i
  składowa ma `<summary>`.
- Publiczne API trzymaj małe — `public` to obietnica wobec użytkowników; domyślnie `internal`.
- Biblioteka nie loguje przez konkretny logger, nie czyta plików konfiguracyjnych i nie dotyka
  konsoli. Zamiast tego przyjmuje `ILogger` albo zwykłe parametry od wywołującego.
