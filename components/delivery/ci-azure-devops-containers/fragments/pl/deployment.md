Pipeline buduje obraz na podstawie Dockerfile z repozytorium, przesyła go do ACR z tagiem równym ID
builda Azure DevOps, a następnie aktualizuje istniejącą aplikację Azure Container Apps. Skonfiguruj
następujące zmienne pipeline:

- `acrLoginServer` — serwer logowania ACR, na przykład `example.azurecr.io`.
- `containerRepository` — nazwa repozytorium obrazu.
- `dockerfilePath` i `dockerBuildContext` — ścieżki do Dockerfile i kontekstu builda.
- `azureResourceGroup` i `containerAppName` — istniejąca docelowa aplikacja Container App.

Połączenia Docker Registry i Azure Resource Manager wybiera się podczas tworzenia scaffolda i
zastępuje nimi wartości literalne w wejściach zadań pipeline.
Aplikacja Container App musi mieć skonfigurowane pobieranie obrazów z ACR, najlepiej z użyciem
managed identity. Połączenie Azure powinno mieć tylko uprawnienia potrzebne do aktualizacji
aplikacji. Dane dostępowe przechowuj w połączeniach service connection lub tajnych zmiennych, nigdy
w repozytorium. Pipeline nie tworzy ani ACR, ani aplikacji Container App.