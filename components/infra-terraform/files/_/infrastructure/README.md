# infrastructure

Terraform definitions for this project's cloud resources.

## Conventions

- **State is remote**, never local and never committed. `.terraform/` and `*.tfstate*` are
  git-ignored.
- **No secrets in `.tf` files or in variables files.** Secrets come from the platform's own
  secret store, referenced by name.
- One directory per environment, sharing modules — not one branch per environment.
- `terraform fmt` and `terraform validate` pass before anything is committed.
- Never run `terraform apply` on the human's behalf. Produce and explain a plan; applying is
  theirs.

This folder is English throughout, like all configuration in this repo.
