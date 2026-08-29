# Jak wygląda praca w tym repozytorium

Pomysł → plan → iteracja → realizacja → weryfikacja → archiwum. Każde przejście uruchamia
człowiek; nic nie przesuwa się samo.

## 1. Pomysły — `spec/00-pomysły/`

Pisane przez człowieka, jeden plik na pomysł lub temat, swobodnie. Pomysł przeniesiony
z zewnętrznego systemu zadań zachowuje swój oryginalny numer referencyjny (np.
`{{RefPrefix}}001235`), żeby droga powrotna nigdy nie zginęła.

## 2. Plan — `spec/50-do-zrobienia/`

Kiedy poproszę o zamianę pomysłu w plan, powstaje w `spec/50-do-zrobienia/` plik
`NNNNN Tytuł.md` — albo `NNNNN {{RefPrefix}}nnnn Tytuł.md`, gdy znany jest zewnętrzny numer;
referencja stoi wtedy między numerem a tytułem.

Pięciocyfrowy numer jest ciągły w obrębie całego `spec/`: najwyższy już użyty w którymkolwiek
z folderów plus jeden.

Szkieletem jest [../spec/_szablon.md](../spec/_szablon.md). Każdy plan kończy się rozdziałami:

- **Otwarte pytania** — po każdym pytaniu pusta linia cytatu jako miejsce na odpowiedź.
- **Uwagi** — wolne miejsce na komentarze człowieka, które nie są odpowiedziami na te pytania.

## 3. Iteracja

Człowiek wpisuje odpowiedzi; plan jest poprawiany w tym samym pliku. Powtarzamy, aż człowiek
zaakceptuje plan. Nie realizuj planu, który nie został zaakceptowany.

## 4. Realizacja

Kiedy plan jest zaakceptowany i pada prośba o realizację:

1. Zrealizuj plan.
2. **Przenieś** plik planu z `spec/50-do-zrobienia/` do `spec/60-do-sprawdzenia/` — ta sama
   nazwa.
3. Dopisz rozdział **Notatki z implementacji**: decyzje podjęte po drodze, kompromisy,
   odstępstwa od planu, ostrzeżenia, na co zwrócić uwagę przy weryfikacji, otwarte punkty na
   przyszłość.
4. **Zacommituj** implementację razem z przeniesionym plikiem planu.
5. **Zrób rebase i push** — to liczy się jako większe zadanie. Rozwiąż konflikty, pytając, gdy
   właściwe rozwiązanie nie jest oczywiste.
6. Na czacie napisz **tylko**, że zadanie jest skończone. **Bez podsumowania** — szczegóły są
   w pliku.

## 5. Weryfikacja

Człowiek weryfikuje. Po akceptacji **przenieś** plik do `spec/70-wykonane/`.

<!-- slot: workflow-refs -->

## Analizy — `spec/10-analizy/`

Kiedy padnie prośba o analizę, wynik trafia do pliku w `spec/10-analizy/` o nazwie
`RRRR-MM-DD <slug>.md` — **nigdy** na czat. Na czacie napisz tylko, że jest gotowa i gdzie leży.

Analizy często poprzedzają plany: analiza ustala, jak jest; plan proponuje, co zmienić.

## Zasady bezwzględne

- **Commituj skończoną pracę**, a po zakończonym zadaniu zrób rebase i push — zobacz sekcję
  Git w [standardy.md](standardy.md).
- Pliki tymczasowe i robocze trafiają do `.tmp/` w katalogu głównym repo, nigdy do systemowego
  katalogu tymczasowego ani do AppData.
- Cała pamięć projektu zostaje wspólna, w `ai/`.
<!-- slot: workflow-extra -->
