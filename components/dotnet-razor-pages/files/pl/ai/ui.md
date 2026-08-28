# Konwencje UI

Interfejs to renderowane po stronie serwera Razor Pages. Interaktywność to zwykły post
formularza albo nawigacja po stronach. Aktualizacje na żywo nie są podpięte: jeśli jakaś funkcja
naprawdę ich potrzebuje, dodaj SignalR w ramach tej funkcji i zapisz decyzję
w [pamięć.md](pamięć.md).

## Struktura

- Jedna strona na URL w `Pages/`, z code-behind obok (`Index.cshtml` + `Index.cshtml.cs`).
- Wspólny layout i współdzielone partiale w `Pages/Shared/`. Partial używany tylko przez jedną
  stronę leży obok tej strony, nie w `Shared/`.
- Klasy `PageModel` nie zawierają logiki biznesowej — wołają serwisy i przygotowują dane dla
  widoku.

## Markup i style

- Najpierw semantyczny HTML. `div` to to, co zostaje, gdy nic bardziej konkretnego nie pasuje.
- Style w `wwwroot/css/site.css`, przez własne właściwości CSS zdefiniowane na górze pliku.
  Jasny i ciemny motyw muszą oba działać — `color-scheme` i `prefers-color-scheme` są już
  podpięte.
- Domyślnie nie dokładamy żadnego frameworka CSS ani JS. Jeśli któryś stanie się konieczny,
  zapisz decyzję wraz z uzasadnieniem w [pamięć.md](pamięć.md).
- Żadnych stylów inline i żadnego JavaScriptu w markupie poza sekcją `Scripts`.

## Język

Markup, tag helpery, deklaracje `@model`, nazwy klas i składowych oraz komentarze są **po
angielsku**, łącznie ze słownictwem dziedzinowym. Wszystko, co czyta użytkownik — nagłówki,
etykiety, przyciski, komunikaty walidacji, stany puste, teksty błędów — jest po polsku. Zobacz
[AGENTS.md](../AGENTS.md).

## Formułowanie tekstów

- Prosto i wprost. Bez wykrzykników, bez waty słownej.
- Przyciski mówią, co robią (`Zapisz wycieczkę`, nie `Wyślij`).
- Stan pusty tłumaczy, co by się tu pojawiło i jak dodać pierwszą rzecz.
- Komunikat błędu mówi, co się nie udało i co zrobić dalej — nigdy tylko tyle, że coś poszło
  źle.
