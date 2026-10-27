# infrastructure

Bicep definitions for this project's Azure resources.

## Conventions

- Keep reusable modules separate from environment entry points. Use a structure such as
  `modules/` and `environments/<environment>/`; choose deployment scopes to match the resources.
- Keep environment-specific, non-secret values in parameter files. Never commit credentials or
  secret values; resolve them through the platform's secret store or secure deployment parameters.
- Run `az bicep build` and the matching Azure deployment `what-if` command before deployment.
- Never deploy infrastructure on the human's behalf. Produce and explain the validation or
  `what-if` result; the human decides whether to apply it.

This folder is English throughout, like all configuration in this repo.