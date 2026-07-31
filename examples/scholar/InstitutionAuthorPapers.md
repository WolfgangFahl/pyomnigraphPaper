## InstitutionAuthorPapers

### query
```sparql
PREFIX gndo: <https://d-nb.info/standards/elementset/gnd#>
SELECT ?author ?author_name ?work ?title WHERE {
  ?author gndo:affiliation <https://d-nb.info/gnd/36225-6> ;
          gndo:preferredNameForThePerson ?author_name .
  ?work (gndo:firstAuthor|gndo:author) ?author ;
        gndo:preferredNameForTheWork ?title .
}
ORDER BY ?author_name ?title
LIMIT 10

```
[try it!](https://gnd.network/?query=PREFIX%20gndo%3A%20%3Chttps%3A//d-nb.info/standards/elementset/gnd%23%3E%0ASELECT%20%3Fauthor%20%3Fauthor_name%20%3Fwork%20%3Ftitle%20WHERE%20%7B%0A%20%20%3Fauthor%20gndo%3Aaffiliation%20%3Chttps%3A//d-nb.info/gnd/36225-6%3E%20%3B%0A%20%20%20%20%20%20%20%20%20%20gndo%3ApreferredNameForThePerson%20%3Fauthor_name%20.%0A%20%20%3Fwork%20%28gndo%3AfirstAuthor%7Cgndo%3Aauthor%29%20%3Fauthor%20%3B%0A%20%20%20%20%20%20%20%20gndo%3ApreferredNameForTheWork%20%3Ftitle%20.%0A%7D%0AORDER%20BY%20%3Fauthor_name%20%3Ftitle%0ALIMIT%2010%0A)
## result
| author                           | author_name              | work                             | title                                                                                              |
|----------------------------------|--------------------------|----------------------------------|----------------------------------------------------------------------------------------------------|
| https://d-nb.info/gnd/132941600  | Engels, David            | https://d-nb.info/gnd/1385788054 | Défendre l'Europe civilisationnelle                                                                |
| https://d-nb.info/gnd/119206889  | Hausmann, Frank-Rutger   | https://d-nb.info/gnd/4361542-9  | Bibliographie der deutschen Übersetzungen aus dem Italienischen von den Anfängen bis zur Gegenwart |
| https://d-nb.info/gnd/1044947276 | Horch, Hans Otto         | https://d-nb.info/gnd/1156041082 | "ins süße Benn-Engramm"?                                                                           |
| https://d-nb.info/gnd/123212898  | Hromkovič, Juraj         | https://d-nb.info/gnd/1164410962 | Einfach Informatik (Lehrmittel)                                                                    |
| https://d-nb.info/gnd/112590187  | Kapellmann, Klaus Dieter | https://d-nb.info/gnd/1357909314 | Vergütung, Nachträge und Behinderungsfolgen beim Bauvertrag                                        |
| https://d-nb.info/gnd/172206111  | Kesting, Hanno           | https://d-nb.info/gnd/1283388448 | Der neue Leviathan                                                                                 |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1268740020 | Das ist der Stand der Dinge                                                                        |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1166166937 | Diktate                                                                                            |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1166167011 | Diktate (Hörspielmanuskript)                                                                       |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1268739995 | Ende gut, Frage                                                                                    |
