# azure-devops

Pipeline definitions for this repo, in the Azure DevOps project `{{AzureProject}}`.

- `build.yml` — restore, build, test on every push to `main`.

Deployment stages are added per environment once the target infrastructure exists. Pipeline YAML
is configuration and is therefore written in English, like every other config file in this repo.

Deployment targets belong to the organization's infrastructure, not to this repo.
