# Component: ci-azure-devops-containers

Extends the Azure DevOps build pipeline to build and push a container image to Azure Container
Registry (ACR), then update an existing Azure Container App after tests pass.

- **id:** `ci-azure-devops-containers`
- **requires:** `ci-azure-devops`
- **conflicts:** —

The repository must provide a Dockerfile. The ACR and Container App must already exist; this
component does not provision infrastructure.

## Tokens

| Token | Meaning | Example |
| ----- | ------- | ------- |
| `{{AcrServiceConnection}}` | Azure DevOps Docker Registry service connection with permission to push to ACR. | `acr-push` |
| `{{AzureServiceConnection}}` | Azure DevOps Azure Resource Manager service connection for the target subscription. | `azure-prod` |

## Slots it fills

| Document | Slot | Fragment |
| -------- | ---- | -------- |
| `azure-devops/build.yml` | `container-deployment` | `container-deployment.yml` (neutral) |

## Fragments

| Slot | Fragment |
| ---- | -------- |
| `deployment` | `deployment.md` (localized) |