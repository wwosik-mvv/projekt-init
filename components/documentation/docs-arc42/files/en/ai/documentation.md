# Writing documentation

The documentation set lives under `docs/`, in three parts with three different audiences. Write
for the audience of the part you are in — mixing them is the most common mistake.

| Folder | Audience | Answers |
| ------ | -------- | ------- |
| `10-technical-documentation/` | Developers | How is the system built, and why that way |
| `20-user-manual/` | Users | How do I do this task |
| `30-knowledge-base/` | Anyone | What is true about the domain, independent of this app |

## Rules

- **Document what is, not what is planned.** Plans belong in `spec/`. A documentation file that
  describes an unbuilt feature is a bug.
- Update documentation **in the same change** as the code it describes. Documentation that has
  drifted is worse than none, because it is trusted.
- Prefer a diagram to three paragraphs describing the same structure. Diagrams go in the file
  as Mermaid, so they stay diffable — not as exported images.
- Link between the three parts rather than repeating content across them.
- Every file starts with a heading that says what it covers, so search results are legible.

## Language

All of `docs/` is in the project language, including headings, diagram labels, and file names.
Identifiers quoted from the code keep their original spelling.
