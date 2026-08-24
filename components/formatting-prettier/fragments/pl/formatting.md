## Formatowanie

Markdown formatuje **Prettier**, skonfigurowany w polu `"prettier"` w `package.json` w katalogu
głównym i uruchamiany automatycznie przez hook `pre-commit` (husky + lint-staged).

Nie trzeba formatować ręcznie — hook to zrobi. Jeśli edytujesz pliki poza normalnym flow gita,
uruchom `npm run format`, zanim człowiek zrobi commit.

Nie przeformatowuj pliku, którego poza tym nie zmieniasz: diff złożony z samego formatowania,
schowany w zmianie funkcjonalnej, zasłania właściwą pracę.
