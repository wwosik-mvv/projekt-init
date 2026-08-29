# Setting up a new repository from this catalog

Follow these steps in order. Everything you need is in this repo; nothing is fetched from
elsewhere.

## Step 1 — Intake

You need five answers. Take whatever the human already told you and **only ask for what is
still missing** — do not re-ask what was stated in the request.

| # | Needed | Notes |
| - | ------ | ----- |
| 1 | **Project language** | `en`, `de`, or `pl`. Decides which `files/<lang>/` and `fragments/<lang>/` variants you copy. |
| 2 | **Recipe or component list** | Offer the recipes in [recipes.md](recipes.md); the human may also name components à la carte. |
| 3 | **Project name** | Human-readable title, e.g. `Planowanie Wycieczek`. |
| 4 | **Root namespace** | PascalCase, e.g. `PlanowanieWycieczek`. Derive it from the name and confirm. |
| 5 | **Target directory** | Where the repo goes. If it already exists and is non-empty, stop and ask. |

Derive the rest (slug, hostname, ports) per [placeholders.md](placeholders.md) and state your
derived values before writing anything. Ask about the deployment target only if the selected
components include one.

## Step 2 — Resolve components

1. Start from the recipe's component list, or the human's à-la-carte list.
2. `core` is always included, whether or not it was named.
3. Read each selected component's `component.md`. Add anything in its `requires`. If two
   selected components list each other under `conflicts`, stop and ask which one wins.
4. Print the final resolved list before copying. Note any component whose `files/<lang>/` is
   missing for the chosen language — that is a gap in the catalog, not something for you to
   translate on the fly. Say so and ask how to proceed.

## Step 3 — Copy files

For each resolved component, in the order the components are listed in
[recipes.md](recipes.md):

- Copy `files/_/**` verbatim (language-neutral: `src/`, `tools/`, configs).
- Copy `files/<lang>/**` verbatim (localized: everything under `ai/`, `spec/`, `docs/`).
- Paths inside `files/` are relative to the target repo root. Placeholders may appear **in
  path names** as well as in file contents.
- If two components would write the same path, that is a catalog bug — report it, do not
  silently pick one.
- **Skip `bin/` and `obj/`.** The `.csproj` files under `components/` are templates, but an
  IDE's C# language server will restore and build them in place. Anything it leaves behind is
  not part of the template.

## Step 4 — Assemble the slotted documents

Some components own **slotted documents** — files with marker lines that other components fill.
`core` owns the repo-level ones (`AGENTS.md`, `README.md`, `ai/standards.md`, `.gitignore`);
stack components own their own (`Program.cs`, `Directory.Packages.props`, the `.csproj`).

A marker is always the words `slot: <name>` inside a comment in that file's own syntax, so a
template file stays valid in its own right:

```
<!-- slot: layout -->        markdown, XML, HTML
// slot: program-services    C#, JavaScript, TypeScript
# slot: gitignore-extra      .gitignore, YAML, PowerShell
```

For every slot, in every slotted document:

1. Collect the fragments that components mapped to that slot (each `component.md` declares its
   `slot: fragment` mappings).
2. Insert them in resolved-component order, replacing the marker line.
3. **Remove every marker line**, including markers no component filled. A marker left in a
   generated repo is a bug.
4. Collapse the blank lines around the insertion so the result reads as one document, not as
   stitched-together sections.

Fragments are already written in the target language. Never translate, rewrite, or "improve"
their prose — the only edits you make are placeholder substitution and the whitespace fix
above.

## Step 5 — Substitute placeholders

Replace every `{{Token}}` in file contents **and in file and directory names**, per
[placeholders.md](placeholders.md). Then grep the whole target repo for `{{` — a leftover token
is a bug.

## Step 6 — Finish and verify

1. Create the git-ignored directories the components expect (`.tmp/`, `data/`, `logs/`) with a
   `.gitkeep` where an empty directory must survive in git — never for `data/` or `logs/`,
   which stay untracked entirely.
2. Leave `spec/` lifecycle folders in place with `.gitkeep` files so the structure survives a
   clone.
3. `git init` if the target is not already a repo, then **commit the scaffold** as the initial
   commit. Do not push: a fresh repo has no remote yet, and choosing one is the human's call.
4. Run the verification checklist below and report the result.

## Verification checklist

- [ ] No `{{` tokens anywhere in the target repo.
- [ ] No `slot:` markers anywhere in the target repo — grep for `slot:` and expect nothing.
- [ ] `AGENTS.md` states the project language and lists what stays English.
- [ ] `CLAUDE.md` forwards to `AGENTS.md` and contains nothing else.
- [ ] `ai/` contains the self-contained conventions — no link back to this catalog as the
      source of truth, and no absolute path to any local drive.
- [ ] Folder and file names match the chosen language's table in `languages/<lang>.md`.
- [ ] `src/`, `tools/`, `run.ps1`, `run.sh` and all config files are English.
- [ ] The solution builds, if a .NET component was selected.
- [ ] The scaffold is committed, and the working tree is clean.

## What you do not do

- Do not translate templates. Language variants are pre-written; a missing one is a gap to
  report.
- Do not add conventions that are not in the selected components. If the human wants a new
  one, it belongs in this catalog first.
- Do not summarize the generated repo's conventions back into chat — they are in the repo.
