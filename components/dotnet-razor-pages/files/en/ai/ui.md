# UI conventions

The UI is server-rendered Razor Pages. Interactivity that needs live updates goes through
SignalR; anything else is a normal form post or a page navigation.

## Structure

- One page per URL under `Pages/`, with its code-behind next to it (`Index.cshtml` +
  `Index.cshtml.cs`).
- Shared layout and partials in `Pages/Shared/`. A partial that is only used by one page lives
  next to that page, not in `Shared/`.
- `PageModel` classes hold no business logic — they call into services and shape data for the
  view.

## Markup and styling

- Semantic HTML first. A `div` is what is left when nothing more specific fits.
- Styles in `wwwroot/css/site.css`, using the CSS custom properties defined at the top. Both
  light and dark schemes must work — `color-scheme` and `prefers-color-scheme` are already
  wired up.
- No CSS or JS framework is pulled in by default. If one becomes necessary, record the decision
  in [memory.md](memory.md) with the reason.
- No inline styles, and no JavaScript in the markup beyond a `Scripts` section.

## Language

Markup, tag helpers, `@model` declarations, class and member names, and comments are **English**.
Everything the user reads — headings, labels, buttons, validation messages, empty states,
error text — is in the project language. See [AGENTS.md](../AGENTS.md).

## Wording

- Address the user directly and plainly. No exclamation marks, no filler.
- Buttons say what they do (`Save trip`, not `Submit`).
- An empty state explains what would appear there and how to create the first one.
- An error message says what failed and what to do next — never just that something went wrong.
