## Build and deployment

Builds run in Azure DevOps, in the project `{{AzureProject}}`, from the definitions in
`azure-devops/`. Every push to `main` restores, builds, and tests.

Deployment targets belong to the organization's infrastructure, not to this repo. Do not invent
deployment steps: if a stage is missing, that is a question for the human, not a gap to fill.
