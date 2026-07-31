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
LIMIT 100

```
[try it!](https://gnd.network/?query=PREFIX%20gndo%3A%20%3Chttps%3A//d-nb.info/standards/elementset/gnd%23%3E%0ASELECT%20%3Fauthor%20%3Fauthor_name%20%3Fwork%20%3Ftitle%20WHERE%20%7B%0A%20%20%3Fauthor%20gndo%3Aaffiliation%20%3Chttps%3A//d-nb.info/gnd/36225-6%3E%20%3B%0A%20%20%20%20%20%20%20%20%20%20gndo%3ApreferredNameForThePerson%20%3Fauthor_name%20.%0A%20%20%3Fwork%20%28gndo%3AfirstAuthor%7Cgndo%3Aauthor%29%20%3Fauthor%20%3B%0A%20%20%20%20%20%20%20%20gndo%3ApreferredNameForTheWork%20%3Ftitle%20.%0A%7D%0AORDER%20BY%20%3Fauthor_name%20%3Ftitle%0ALIMIT%20100%0A)
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
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1173858156 | Herkunft Heimat. Eine Lektüre                                                                      |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1257098772 | Hörspiel Hölle                                                                                     |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/125711087X | Hörspiel Hölle (Hörspielmanuskript)                                                                |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1203312083 | Muttersterben                                                                                      |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1301536318 | Muttersterben                                                                                      |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1203312113 | Muttersterben                                                                                      |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1301536423 | Muttersterben (Hörspielmanuskript)                                                                 |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/121104873X | Pazifik Exil                                                                                       |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1204097984 | Schattenfroh                                                                                       |
| https://d-nb.info/gnd/118936123  | Lentz, Michael           | https://d-nb.info/gnd/1269732587 | Zellophan                                                                                          |
| https://d-nb.info/gnd/128458879  | Müggenborg, Hans-Jürgen  | https://d-nb.info/gnd/1128765195 | BNatSchG                                                                                           |
| https://d-nb.info/gnd/118092189  | Pfaffenbach, Carmella    | https://d-nb.info/gnd/1290359091 | Israel - Westjordanland, Ausflüge nach Jordanien                                                   |
| https://d-nb.info/gnd/122475003  | Platthaus, Andreas       | https://d-nb.info/gnd/1155936884 | Der Krieg nach dem Krieg                                                                           |
| https://d-nb.info/gnd/122475003  | Platthaus, Andreas       | https://d-nb.info/gnd/1235773531 | Lyonel Feininger                                                                                   |
| https://d-nb.info/gnd/123050421  | Spinner, Kaspar H.       | https://d-nb.info/gnd/119999815X | Totalitätsanspruch des poetischen Zeichens?                                                        |
| https://d-nb.info/gnd/121709108  | Terbrack, Christoph      | https://d-nb.info/gnd/1345928769 | Kauf vom Bauträger                                                                                 |
| https://d-nb.info/gnd/1035658313 | Volk, Christian          | https://d-nb.info/gnd/118946134X | Die Ordnung der Freiheit                                                                           |
