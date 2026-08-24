### Aplikacje webowe

- API wystawiamy w developmencie po **lokalnym HTTPS** — nigdy po zwykłym HTTP.
- **Minimal API**, nie kontrolery.
- **OpenAPI** jest zawsze włączone, a **Scalar** serwuje podgląd API.
- Endpoint `/health` istnieje zawsze.
- Walidacja ma zwracać **wszystkie** błędy pól naraz, a nie po kolei:
  - Najpierw sparsuj żądanie do DTO, waliduj dopiero potem — błąd parsowania przerywa i zwraca
    tylko pierwszy problem.
  - Dlatego **nie używamy `required`** na właściwościach DTO: brakujące pole stałoby się
    problemem parsowania zamiast walidacji.
  - Preferuj walidację atrybutami; `IValidatableObject` uruchamia się dopiero po tym, jak
    walidacja atrybutami przejdzie.
  - Zamiast tablic używaj kolekcji `IReadOnly` — walidacja w .NET 10 wciąż ma problem
    z tablicami. `MinLength` na kolekcjach działa.
- Nieudana walidacja zwraca **HTTP 422**, nie 400, żeby odróżnić problemy biznesowe od
  technicznych.
