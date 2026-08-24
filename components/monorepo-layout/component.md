# Component: monorepo-layout

Moves the code to root-level `backend/` and `frontend/` instead of `src/server` and
`src/frontend`, and gives each area its own `AGENTS.md` so opening that folder alone in an
editor still works. The `vxb` and `pukas2` shape.

- **id:** `monorepo-layout`
- **requires:** `core`
- **conflicts:** —

## Token overrides

| Token | Value |
| ----- | ----- |
| `{{BackendRoot}}` | `backend` |
| `{{FrontendRoot}}` | `frontend` |

These are the only mechanism this component needs: every other component builds its paths from
those tokens, so nothing else changes.

## Files

| Path | Language |
| ---- | -------- |
| `{{BackendRoot}}/AGENTS.md` | localized |
| `{{FrontendRoot}}/AGENTS.md` | localized (only with `spa-frontend`) |

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `layout` | `layout.md` (localized) |
