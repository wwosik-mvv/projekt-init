### Frontend

- **pnpm** jest menedżerem pakietów. Żadnego `npm install`, żadnego `yarn` — drugi plik lockowy
  to błąd.
- Klient API jest **generowany z dokumentu OpenAPI backendu**, nigdy pisany ręcznie, żeby zmiana
  kontraktu wychodziła jako błąd kompilacji.
- Frontend nigdy nie omija własnej warstwy API: żadnych wywołań `fetch` rozsianych po
  komponentach.
