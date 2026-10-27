# Konwencje frontendu

SPA w Angularze w `{{FrontendRoot}}`, korzystająca z opisanego przez OpenAPI API backendu.

## Zarządzanie pakietami

**Tylko pnpm.** Jeśli w tym repo pojawi się `package-lock.json` albo `yarn.lock`, to błąd —
usuń go i używaj `pnpm`.

## Dostęp do API

- Typowany klient jest **generowany z dokumentu OpenAPI backendu**. Nigdy nie pisz ręcznie DTO,
  które już jest w kontrakcie, i nie wołaj endpointu nietypowanym `fetch`.
- Regeneracja klienta po zmianie w backendzie jest częścią tej zmiany, a nie osobnym zadaniem na
  później.
- Komponenty nie wołają HTTP bezpośrednio: idą przez serwis.

## Struktura

- Feature-first: wszystko, co należy do jednej funkcji, leży razem, zamiast być rozbite na
  globalne `components/`, `services/`, `models/`.
- Wspólne elementy używane przez więcej niż jedną funkcję przenosimy do części współdzielonej —
  nie wcześniej.

## Język

Kod, identyfikatory, nazwy folderów i komentarze są **po angielsku**, łącznie ze słownictwem
dziedzinowym. Każdy tekst czytany przez użytkownika jest w języku projektu i trzymany poza logiką
komponentów, żeby dało się go znaleźć i zmienić w jednym miejscu.

## Style

- Zwykły CSS z własnymi właściwościami, chyba że uzgodniono bibliotekę UI i zapisano to
  w [pamięć.md](pamięć.md).
- Jasny i ciemny motyw oba działają. Żadnych kolorów wpisanych na sztywno w komponentach.
