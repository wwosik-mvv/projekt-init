# Component: infra-bicep

Bicep conventions for the project's Azure infrastructure. This is an alternative to Terraform;
it provides guidance without templating project-specific resources.

- **id:** `infra-bicep`
- **requires:** `core`
- **conflicts:** `infra-terraform` — choose one infrastructure-as-code option

## Files

| Path | Language |
| ---- | -------- |
| `infrastructure/README.md` | neutral |

No `.bicep` files are templated: resource topology and deployment scope are project-specific.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `folders` | `folders.md` (localized) |