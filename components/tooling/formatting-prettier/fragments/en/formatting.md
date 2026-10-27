## Formatting

Markdown is formatted by **Prettier**, configured in the `"prettier"` field of the root
`package.json`, and applied automatically by a `pre-commit` hook (husky + lint-staged).

There is no need to format by hand — the hook does it. If you edit files outside the normal git
flow, run `npm run format` before the human commits.

Do not reformat a file you did not otherwise change: a formatting-only diff buried in a feature
change hides the actual work.
