## Referencje JIRA

Stories w tym repo zwykle odpowiadają zgłoszeniu w JIRA w projekcie `{{TrackerKey}}`
(`{{TrackerBaseUrl}}`).

**W nazwie pliku** klucz zgłoszenia stoi po ID story, przed slugiem:

```
E02-S05-{{TrackerKey}}-533-polimorfizm-wiadomości-oparty-na-refleksji.md
```

**W planie**, na prośbę, wstaw rozdział `## Historyjka JIRA` **bezpośrednio po
`## Podsumowanie`**, przed wszystkimi innymi rozdziałami. Wyprowadź go z podsumowania
i kryteriów akceptacji planu, zawsze wypisując wszystkie trzy etykiety:

- `Tytuł:`
- `Podsumowanie:`
- `Kryteria akceptacji:` a po nich punkty

Rozdział zaczyna się linią z zaślepką:

```
> JIRA: _(numer zgłoszenia uzupełniany po utworzeniu)_
```

Kiedy człowiek poda później utworzone ID zgłoszenia, zrób wszystkie trzy rzeczy w jednej
zmianie: podmień zaślepkę, dopisz ID do nagłówka H1 story i zmień nazwę pliku story tak, żeby ID
stało po ID story, a przed slugiem.
