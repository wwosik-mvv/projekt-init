# spec

Specyfikacje i cykl życia zadań. Sam proces opisuje
[../ai/proces-pracy.md](../ai/proces-pracy.md); ten plik jest mapą folderów.

| Folder | Zawiera |
| ------ | ------- |
| `00-pomysły/` | Surowe pomysły, pisane przez człowieka. Jeden plik na pomysł lub temat; wklejone user story zachowują swój numer referencyjny. |
| `10-analizy/` | Zamówione analizy, `RRRR-MM-DD <slug>.md`. Wynik trafia tutaj do plików, nigdy na czat. |
| `50-do-zrobienia/` | Konkretne, przeiterowane plany czekające na realizację. |
| `60-do-sprawdzenia/` | Zrealizowane zadania czekające na weryfikację przez człowieka. Każde ma rozdział *Notatki z implementacji*. |
| `70-wykonane/` | Zweryfikowane i zaakceptowane. |

Prefiksy liczbowe są po to, żeby cykl czytało się w kolejności niezależnie od języka projektu.
Luki są celowe — nowy etap da się wstawić bez przenumerowywania reszty.

Pliki planów nazywają się `NNNNN Tytuł.md`, albo `NNNNN {{RefPrefix}}nnnn Tytuł.md`, gdy znany
jest zewnętrzny numer. Numer jest ciągły w obrębie całego `spec/`, a nazwa pliku nie zmienia się
przy przenoszeniu między folderami.

- Commituj skończoną pracę; po zakończonym zadaniu zrób rebase i push.
- Nigdy nie pisz analizy na czacie; napisz plik.
