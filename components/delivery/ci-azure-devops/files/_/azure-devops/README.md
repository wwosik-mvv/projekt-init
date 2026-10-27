# azure-devops

Pipeline definitions for this repo, in the Azure DevOps project `{{AzureProject}}`.

- `build.yml` — restore, build, test on every push to `main`.

If `ci-azure-devops-containers` is selected, the pipeline also builds and pushes a container image
and updates an existing Azure Container App after tests pass. Configure its required pipeline
variables and service connections here before running it; see the component's deployment guidance.

Deployment stages are added per environment once the target infrastructure exists. Pipeline YAML
is configuration and is therefore written in English, like every other config file in this repo.

Deployment targets belong to the organization's infrastructure, not to this repo.
