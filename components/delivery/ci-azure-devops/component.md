# Component: ci-azure-devops

Azure DevOps pipelines for work projects, which deploy through their organization's own
infrastructure rather than to a home server.

- **id:** `ci-azure-devops`
- **requires:** `core`
- **conflicts:** any other component replacing this build/deployment pipeline; slot-filling extensions are compatible

## Tokens

| Token | Default |
| ----- | ------- |
| `{{AzureProject}}` | none — must be answered |

## Files

| Path | Language |
| ---- | -------- |
| `azure-devops/build.yml` | neutral |
| `azure-devops/README.md` | neutral |

Pipeline YAML is configuration, so it is English like every other config file.

## Slots it owns

| Document | Slots |
| -------- | ----- |
| `azure-devops/build.yml` | `container-deployment` |

The slot is empty unless a pipeline extension fills it.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `folders` | `folders.md` (localized) |
| `deployment` | `deployment.md` (localized) |
