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

## Git

- **Skończoną pracę domyślnie commituj.** Kiedy zadanie jest zrobione, zacommituj je. Praca
  zostawiona w working tree to praca, którą człowiek musi sam zauważyć, przejrzeć i zacommitować
  ręcznie.
- **Commituj to, co zadanie zmieniło — i nic więcej.** Niezwiązana poprawka to osobny commit.
- Wiadomości commitów są w języku projektu, tak jak reszta prozy.
- **Nigdy nie commituj sekretów, wyników builda ani niczego, co obejmuje `.gitignore`.** Jeśli
  coś ignorowanego naprawdę musi trafić do repo, to pytanie do człowieka, a nie własna decyzja.
- **Nie commituj zepsutego stanu.** Jeśli build albo testy nie przechodzą, powiedz to i zatrzymaj
  się — czerwony commit kosztuje więcej, niż oszczędza.
- Nigdy nie pomijaj hooków (`--no-verify`) ani podpisywania. Hook, który nie przechodzi, to
  problem do naprawienia, a nie do obejścia.

### Po większym zadaniu

Większe zadanie to zrealizowany plan przeniesiony do `spec/60-do-sprawdzenia/` — albo, bez tego
procesu, każda samodzielna praca, o którą poprosił człowiek. Nie każdy commit po drodze.

1. **Rebase** na śledzoną gałąź upstream (`git pull --rebase`).
2. **Rozwiąż konflikty.** Jeśli właściwe rozwiązanie nie jest oczywiste, **zatrzymaj się
   i zapytaj** — nie zgaduj cudzych intencji.
3. **Push.**

`git pull --rebase` odtwarza twoje niewypchnięte commity na wierzchu upstreamu, więc wystarczy
zwykły `git push`. Rebase commitów, które **już** były wypchnięte, przepisuje historię: push
wymaga wtedy `--force-with-lease` — co jest w porządku na gałęzi, na którą pushujesz tylko ty,
i warte pytania na każdej gałęzi używanej przez kogoś jeszcze. Nigdy zwykłe `--force`.

## Odstępstwa

Miejsca, w których to repo odbiega od powyższych konwencji — bo jest od nich starsze albo bo coś
konkretnego tego wymagało. To, co tu wpisane, jest celowe: nie „naprawiaj" tego bez pytania.

| Konwencja | Co robi to repo zamiast tego | Dlaczego |
| --------- | ---------------------------- | -------- |
| — | — | — |
