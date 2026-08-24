## Build i wdrożenie

Buildy działają w Azure DevOps, w projekcie `{{AzureProject}}`, według definicji w
`azure-devops/`. Każdy push do `main` robi restore, build i testy.

Cele wdrożeniowe należą do infrastruktury organizacji, nie do tego repo. Nie wymyślaj kroków
wdrożenia: jeśli brakuje etapu, to pytanie do człowieka, a nie luka do wypełnienia.
