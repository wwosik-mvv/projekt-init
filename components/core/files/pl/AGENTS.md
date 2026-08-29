# {{ProjectName}}

{{ProjectDescription}}

<!-- slot: stack -->

Zacznij tutaj, potem idź za odnośnikami:

- [ai/standardy.md](ai/standardy.md) — konwencje, których trzyma się to repo.
- [ai/pamięć.md](ai/pamięć.md) — zgromadzone fakty o tym kodzie.
<!-- slot: ai-pointers -->
- [docs/](docs/) — dokumentacja tego, jak aplikacja działa naprawdę.

<!-- slot: layout -->

## Język

Językiem tego repo jest **polski**. Dotyczy to całej prozy, planów, dokumentacji, tekstów
interfejsu i wiadomości commitów.

Szkielet techniczny jest angielski w każdym projekcie z tej rodziny i nie jest wyborem
językowym: `src/`, `tools/`, `deploy/`, `logs/`, `data/`, `.tmp/`, `run.ps1`, `run.sh` oraz
wszystkie pliki konfiguracyjne, razem z ich zawartością. Nazwy folderów `ai/`, `spec/`, `docs/`,
`.github/` i pliki `AGENTS.md`, `CLAUDE.md`, `README.md` też są stałe — ale wszystko w środku
jest w języku projektu.

W kodzie i w bazie danych **wszystko jest po angielsku** — identyfikatory, nazwy tabel
i kolumn, komentarze, komunikaty logów, łącznie ze słownictwem dziedzinowym. Po polsku jest
tylko to, co czyta użytkownik.

## Zasady bezwzględne

- **Skończoną pracę domyślnie commituj.** Kiedy zadanie jest zrobione, zacommituj to, co
  zmieniło — nie zostawiaj jej w working tree do znalezienia przez człowieka. Szczegóły
  w [ai/standardy.md](ai/standardy.md).
- **Po większym zadaniu: rebase, potem push.** Konflikty rozwiązuj po drodze, a gdy właściwe
  rozwiązanie nie jest oczywiste — pytaj.
- **Pliki tymczasowe i robocze trafiają do `.tmp/`** w katalogu głównym repo (ignorowanego przez
  gita) — nigdy do systemowego katalogu tymczasowego ani do AppData.
- **Cała pamięć projektu jest wspólna, w `ai/`** — nigdy w lokalnej pamięci żadnego narzędzia na
  żadnym komputerze, żeby każdy agent czytał to samo.
<!-- slot: hard-rules-extra -->

<!-- slot: commands -->
