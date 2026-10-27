### Web applications

- APIs are exposed over **local HTTPS** in development — never plain HTTP.
- **Minimal APIs**, not controllers.
- **OpenAPI** is always on, and **Scalar** serves the API reference UI.
- A `/health` endpoint always exists.
- Validation aims to return **every** field error at once rather than one at a time:
  - Parse the request into the DTO first, validate afterwards — a parsing failure aborts and
    reports only the first problem.
  - Therefore **do not use `required`** on DTO properties: a missing field would become a
    parsing error instead of a validation error.
  - Prefer attribute validation; `IValidatableObject` only runs once attribute validation has
    passed.
  - Use read-only collections rather than arrays — .NET 10 validation still has trouble
    validating arrays. `MinLength` does work on collections.
- Failed validation returns **HTTP 422**, not 400, so business problems are distinguishable
  from technical ones.
