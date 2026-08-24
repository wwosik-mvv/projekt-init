## Narzędzia

- Narzędzia pisane **specjalnie dla tego repo** to **jednoplikowe aplikacje .NET 10**,
  uruchamiane jako `dotnet run tools/<nazwa>/<nazwa>.cs` (zakładamy, że .NET 10 jest
  zainstalowany). Zależności NuGet idą w dyrektywach `#:package` na górze pliku.
- **Nie PowerShell, nie Python.** Jedyny `.ps1` w repo to sam launcher.
- Jeśli gotowy **pakiet npm** już to robi, użyj go bez zmian w `tools/npm` z **pnpm** — nie pisz
  tego od nowa w .NET.
- Istniejące narzędzia zewnętrzne nie wymagają przepisywania.
- **Jednorazowe narzędzia** i dane robocze trafiają do `.tmp/`, nie do `tools/`. `tools/` jest
  na to, co zostaje.
- `tools/`, `run.ps1` i `run.sh` są **w całości po angielsku** — kod, komentarze i komunikaty —
  niezależnie od języka reszty repo.

Oba launchery muszą pozostawać zgodne: czasownik dodany do `run.ps1` trafia w tej samej zmianie
także do `run.sh`.
