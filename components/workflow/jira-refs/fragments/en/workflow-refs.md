## JIRA references

Stories in this repo usually correspond to a JIRA ticket in project `{{TrackerKey}}`
(`{{TrackerBaseUrl}}`).

**In the filename**, the ticket key sits after the story ID and before the slug:

```
E02-S05-{{TrackerKey}}-533-reflection-based-message-polymorphism.md
```

**In the plan**, when asked for a JIRA story, insert a `## JIRA story` chapter **directly after
`## Summary`**, before every other chapter. Derive it from the plan's summary and acceptance
criteria, and always spell out all three labels:

- `Title:`
- `Summary:`
- `Acceptance criteria:` followed by bullet points

Start the chapter with a placeholder line:

```
> JIRA: _(ticket number added once created)_
```

When the human later gives the created ticket id, do all three in one change: replace the
placeholder, add the id to the story's H1 title, and rename the story file so the id sits after
the story ID and before the slug.
