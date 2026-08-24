# Konwencje tego repozytorium

Ten plik jest samowystarczalny: wszystko, czego potrzebuje agent, jest tutaj — nie za
odnośnikiem do innego repo ani do lokalnego dysku.

## Repozytorium

- Cała aplikacja mieści się w **jednym repo gita**.
- Cała pamięć projektu jest **wspólna**, w `ai/` — nigdy lokalna dla urządzenia.
- **Pliki tymczasowe i robocze** trafiają do `.tmp/` w katalogu głównym (ignorowanego przez
  gita) — nigdy do systemowego katalogu tymczasowego, nigdy do AppData.
- Dane programu leżą w ignorowanym przez gita katalogu `data/`.
- Logi rolują się codziennie do ignorowanego przez gita `logs/` w katalogu głównym.
- `AGENTS.md` pozostaje krótki i odsyła do `ai/`; `CLAUDE.md` odsyła wyłącznie do `AGENTS.md`.

## Struktura katalogów

| Ścieżka | Przeznaczenie |
| ------- | ------------- |
| `ai/` | Instrukcje dla AI i wspólna pamięć projektu |
| `docs/` | Dokumentacja tego, jak program naprawdę działa |
| `data/` | Dane programu (ignorowane przez gita) |
| `logs/` | Logi rolowane dziennie (ignorowane przez gita) |
| `.tmp/` | Katalog roboczy (ignorowany przez gita) |
<!-- slot: folders -->

<!-- slot: tooling -->

<!-- slot: stack-standards -->

<!-- slot: deployment -->

<!-- slot: docs-standards -->

<!-- slot: formatting -->

## Odstępstwa

Miejsca, w których to repo odbiega od powyższych konwencji — bo jest od nich starsze albo bo coś
konkretnego tego wymagało. To, co tu wpisane, jest celowe: nie „naprawiaj" tego bez pytania.

| Konwencja | Co robi to repo zamiast tego | Dlaczego |
| --------- | ---------------------------- | -------- |
| — | — | — |
