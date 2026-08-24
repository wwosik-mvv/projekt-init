# Component: ci-azure-devops

Azure DevOps pipelines for work projects, which deploy through their organization's own
infrastructure rather than to a home server.

- **id:** `ci-azure-devops`
- **requires:** `core`
- **conflicts:** any other component owning the build or deployment pipeline

## Tokens

| Token | Default |
| ----- | ------- |
| `{{AzureProject}}` | none — must be answered |

## Files

| Path | Language |
| ---- | -------- |
| `azure-devops/build.yml` | neutral |
| `azure-devops/README.md` | localized |

Pipeline YAML is configuration, so it is English like every other config file.

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `folders` | `folders.md` (localized) |
| `deployment` | `deployment.md` (localized) |
