### Frontend

- **pnpm** is the package manager. No `npm install`, no `yarn` — a second lockfile is a bug.
- The API client is **generated from the backend's OpenAPI document**, never hand-written, so a
  contract change surfaces as a compile error.
- The frontend never reaches around its own API layer: no `fetch` calls scattered through
  components.
