# Frontend conventions

An Angular SPA in `{{FrontendRoot}}`, talking to the backend over its OpenAPI-described API.

## Package management

**pnpm only.** A `package-lock.json` or `yarn.lock` appearing in this repo is a bug — delete it
and use `pnpm`.

## API access

- The typed client is **generated from the backend's OpenAPI document**. Never hand-write a
  DTO that already exists in the contract, and never call an endpoint with an untyped `fetch`.
- Regenerating the client after a backend change is part of that change, not a follow-up task.
- Components do not call HTTP directly: they go through a service.

## Structure

- Feature-first: everything belonging to one feature lives together, rather than being split
  across global `components/`, `services/`, `models/` folders.
- Shared building blocks used by more than one feature move to a shared area — not before.

## Language

Code, identifiers, folder names, and comments are **English**, domain vocabulary included.
Every string the user reads is in the project language, kept out of component logic so it can be
found and changed in one place.

## Styling

- Plain CSS with custom properties, unless a UI library has been agreed and recorded in
  [memory.md](memory.md).
- Light and dark schemes both work. No hard-coded colours in components.
