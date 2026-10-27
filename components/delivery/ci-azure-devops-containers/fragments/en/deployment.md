The pipeline builds the repository's Dockerfile, pushes an image tagged with the Azure DevOps build
ID to ACR, then updates an existing Azure Container App. Configure these pipeline variables:

- `acrLoginServer` — ACR login server, such as `example.azurecr.io`.
- `containerRepository` — image repository name.
- `dockerfilePath` and `dockerBuildContext` — Dockerfile and build context paths.
- `azureResourceGroup` and `containerAppName` — existing Container App target.

The Docker Registry and Azure Resource Manager service connections are selected during scaffold
setup and substituted into the pipeline as literal task inputs.
Configure the Container App to pull from ACR, preferably with a managed identity. Grant the Azure
service connection only the permissions needed to update the app. Store credentials in service
connections or secret variables, never in the repository. This pipeline does not provision ACR or
the Container App.