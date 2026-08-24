## JIRA references

Plans in this repo usually correspond to a JIRA ticket in project `{{TrackerKey}}`
(`{{TrackerBaseUrl}}`).

**In the filename**, the ticket key sits between the sequence number and the title:

```
00010 {{TrackerKey}}-533 Reflection-based message polymorphism.md
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
placeholder, add the id to the plan's H1 title, and rename the plan file so the id sits between
the number and the title.
