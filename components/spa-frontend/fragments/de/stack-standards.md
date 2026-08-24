### Frontend

- **pnpm** ist der Paketmanager. Kein `npm install`, kein `yarn` — eine zweite Lockdatei ist ein
  Fehler.
- Der API-Client wird **aus dem OpenAPI-Dokument des Backends generiert**, nie von Hand
  geschrieben, damit eine Vertragsänderung als Compile-Fehler auffällt.
- Das Frontend greift nie an seiner eigenen API-Schicht vorbei: keine `fetch`-Aufrufe verstreut
  in Komponenten.
