## Konwencje .NET

- Zawsze **najnowsza** wersja .NET.
- Solucja serwera to `{{BackendRoot}}/{{RootNamespace}}.slnx`, każdy projekt we własnym
  podkatalogu.
- **Centralne zarządzanie pakietami** przez `{{BackendRoot}}/Directory.Packages.props` — wersja
  pakietu jest zadeklarowana dokładnie raz, a projekty referują pakiety bez wersji.
- Wspólny **`.editorconfig`** w katalogu głównym nie jest specyficzny dla projektu: nie
  przerabiaj go pod to repo.
- **Lokalny `nuget.config`** ustala źródła pakietów, z `<clear />` na początku, żeby nie
  przeciekło żadne źródło skonfigurowane globalnie na maszynie.
- **Testy leżą w tej samej solucji**, jako projekt sąsiadujący z testowanym kodem
  (`{{RootNamespace}}.Server.Tests` obok `{{RootNamespace}}.Server`) — nigdy w osobnej solucji.
- **Serilog** wszędzie, z dwoma sinkami: kolorowa konsola oraz pliki rolowane dziennie do
  ignorowanego przez gita `logs/` w katalogu głównym.
- Ścieżki do danych trwałych rozwiązywane są raz przy starcie przez `AppPaths`
  (`Configuration/AppPaths.cs`), konfigurowalne przez `AppPaths:DataDirectory`
  i `AppPaths:LogsDirectory`. Nic innego nie składa ścieżki do `data/` ani `logs/` ręcznie.
