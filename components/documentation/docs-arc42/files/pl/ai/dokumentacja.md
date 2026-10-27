# Pisanie dokumentacji

Dokumentacja leży w `docs/`, w trzech częściach z trzema różnymi odbiorcami. Pisz dla odbiorcy
tej części, w której jesteś — mieszanie ich to najczęstszy błąd.

| Folder | Odbiorca | Odpowiada na |
| ------ | -------- | ------------ |
| `10-dokumentacja-techniczna/` | Programiści | Jak system jest zbudowany i dlaczego tak |
| `20-podręcznik-użytkownika/` | Użytkownicy | Jak wykonać to zadanie |
| `30-baza-wiedzy/` | Ktokolwiek | Co jest prawdą w dziedzinie, niezależnie od tej aplikacji |

## Zasady

- **Dokumentujemy to, co jest, a nie to, co zaplanowane.** Plany należą do `spec/`. Plik
  dokumentacji opisujący niezbudowaną funkcję to błąd.
- Dokumentację aktualizuj **w tej samej zmianie** co kod, który opisuje. Dokumentacja, która
  odjechała od kodu, jest gorsza niż jej brak, bo się jej ufa.
- Diagram jest lepszy niż trzy akapity opisujące tę samą strukturę. Diagramy idą do pliku jako
  Mermaid, żeby dało się je diffować — nie jako wyeksportowane obrazki.
- Między trzema częściami linkuj, zamiast powtarzać treść.
- Każdy plik zaczyna się nagłówkiem mówiącym, czego dotyczy, żeby wyniki wyszukiwania były
  czytelne.

## Język

Całe `docs/` jest w języku projektu, łącznie z nagłówkami, etykietami na diagramach i nazwami
plików. Identyfikatory cytowane z kodu zachowują oryginalną pisownię.
