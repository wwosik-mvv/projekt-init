# Component: infra-terraform

Terraform for the project's cloud infrastructure.

- **id:** `infra-terraform`
- **requires:** `core`
- **conflicts:** —

## Files

| Path | Language |
| ---- | -------- |
| `infrastructure/README.md` | localized |
| `.gitignore` additions | neutral |

No `.tf` files are templated: infrastructure is specific enough that a generic skeleton would
only be deleted. The README records the conventions the actual files must follow.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `folders` | `folders.md` (localized) |
| `gitignore-extra` | `gitignore.txt` (neutral) |
