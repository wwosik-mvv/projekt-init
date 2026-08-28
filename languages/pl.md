# Polski

## Nazewnictwo plików

Małe litery, myślniki zamiast spacji: `proces-pracy.md`, `standardy.md`, `pamięć.md`,
`10-analizy/`.

Polskie znaki diakrytyczne w nazwach plików i folderów są w porządku (`pamięć.md`,
`00-pomysły/`) — UTF-8 działa bez problemu na Linuksie i GitHubie. Spacje nie, z wyjątkiem
plików planów i analiz, które mają własny wzorzec opisany niżej.

## `ai/` — zawartość

Nazwa folderu pozostaje `ai/`. Pliki w środku:

| Rola | Nazwa pliku |
| ---- | ----------- |
| Jak wygląda praca w tym repo | `proces-pracy.md` |
| Konwencje, których trzyma się to repo | `standardy.md` |
| Zgromadzone fakty i podjęte decyzje o kodzie | `pamięć.md` |
| Konwencje UI (tylko gdy jest UI) | `ui.md` |
| Konwencje frontendu (tylko gdy jest SPA) | `frontend.md` |
| Zasady pisania dokumentacji (tylko z `docs-arc42`) | `dokumentacja.md` |

Tutaj bez prefiksów liczbowych — `AGENTS.md` linkuje te pliki pojedynczo, więc żadna kolejność
nie jest sugerowana.

Świadomie nie ma osobnego pliku `architektura.md`: podjęte decyzje techniczne są faktami
o kodzie i należą do `pamięć.md`, żeby zawsze było tylko jedno miejsce do sprawdzenia.

## `spec/` — zawartość

Nazwa folderu pozostaje `spec/`. Podfoldery są numerowane, żeby kolejność cyklu dało się
odczytać niezależnie od języka; luki w numeracji są celowe:

| Prefiks | Folder | Zawiera |
| ------- | ------ | ------- |
| `00` | `00-pomysły/` | Surowe pomysły, pisane przez człowieka. Jeden plik na pomysł lub temat. Wklejone user story zachowują swój numer referencyjny. |
| `10` | `10-analizy/` | Zamówione analizy. Wynik trafia tutaj do pliku, nigdy do czatu. |
| `50` | `50-do-zrobienia/` | Konkretne, przeiterowane plany czekające na realizację. |
| `60` | `60-do-sprawdzenia/` | Zrealizowane zadania czekające na weryfikację przez człowieka. Każde ma rozdział *Notatki z implementacji*. |
| `70` | `70-wykonane/` | Zweryfikowane i zaakceptowane. |

Nazewnictwo plików w środku:

| Folder | Wzorzec | Przykład |
| ------ | ------- | -------- |
| `00-pomysły/` | `<slug>.md`, dowolnie | `współpraca-na-żywo.md` |
| `10-analizy/` | `RRRR-MM-DD <slug>.md` | `2026-08-22 inwentaryzacja-kontraktów-api.md` |
| `50-do-zrobienia/`, `60-do-sprawdzenia/`, `70-wykonane/` | `NNNNN Tytuł.md`, albo `NNNNN <referencja> Tytuł.md`, gdy znany jest zewnętrzny numer | `00001 Planer dnia wycieczki.md`, `00010 W-3212 Synchronizacja planu na żywo.md` |

Prefiks referencji to token `{{RefPrefix}}` — domyślnie `W-`, a przy komponencie `jira-refs`
klucz projektu JIRA.

Pięciocyfrowy numer jest ciągły w obrębie całego `spec/`: najwyższy już użyty w którymkolwiek
z folderów plus jeden. Nazwa pliku nie zmienia się przy przenoszeniu między folderami.

Szablon planu nazywa się `spec/_szablon.md`.

## `docs/` — zawartość

Nazwa folderu pozostaje `docs/`. Podfoldery są numerowane tak jak w `spec/` i istnieją tylko
przy komponencie `docs-arc42`:

| Prefiks | Folder |
| ------- | ------ |
| `10` | `10-dokumentacja-techniczna/` |
| `20` | `20-podręcznik-użytkownika/` |
| `30` | `30-baza-wiedzy/` |

## Standardowe nagłówki

Używane dosłownie — w plikach planów oraz w generowanych `AGENTS.md` / `ai/*.md` — żeby nagłówek
znaczył to samo w każdym repo:

| Rola | Nagłówek |
| ---- | -------- |
| Plan: co i po co | `Podsumowanie` |
| Plan: istniejące zachowanie i ograniczenia | `Kontekst` |
| Plan: uporządkowane kroki | `Proponowane podejście` |
| Plan: sprawdzalne rezultaty | `Kryteria akceptacji` |
| Plan: pytania do człowieka, każde z miejscem na odpowiedź | `Otwarte pytania` |
| Plan: wolne miejsce na uwagi człowieka | `Uwagi` |
| Plan: dopisywane po realizacji | `Notatki z implementacji` |
| AGENTS.md: zasady językowe tego repo | `Język` |
| AGENTS.md: rzeczy niepodlegające dyskusji | `Zasady bezwzględne` |

Miejsce na odpowiedź pod każdym otwartym pytaniem to pusta linia cytatu:

```markdown
1. Czy wycieczka ma w v1 obsługiwać wielu uczestników?

>

2. Gdzie mają trafiać generowane pliki PDF?

>
```

## Proza

- Po polsku, w tym `README.md`, `AGENTS.md`, wszystko w `ai/`, `spec/` i `docs/` oraz wszystkie
  teksty w interfejsie użytkownika.
- Wiadomości commitów po polsku.
- W tekstach interfejsu unikamy bezpośredniego zwracania się do użytkownika tam, gdzie się da
  (`Zapisz wycieczkę`, nie `Zapisz swoją wycieczkę`).

## Kod

Kod, identyfikatory, nazwy folderów w kodzie, komentarze, komunikaty logów oraz **nazwy tabel
i kolumn w bazie danych** są **bez wyjątku po angielsku** — łącznie ze słownictwem dziedzinowym.
Czyli `Contract` i tabela `contracts`, a nie `Umowa` i `umowy`. Granica biegnie między kodem
a tym, co czyta użytkownik, nie między tym, co dziedzinowe, a tym, co techniczne.

Wszystko, co czyta użytkownik — nagłówki, etykiety, przyciski, komunikaty walidacji, stany puste,
teksty błędów — jest po polsku.
