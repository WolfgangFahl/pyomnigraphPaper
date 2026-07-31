## AuthorPapers

### query
```sparql
PREFIX dblp: <https://dblp.org/rdf/schema#>
SELECT ?pub ?title ?year ?venue WHERE {
  ?pub dblp:authoredBy <https://dblp.org/pid/27/6858> ;
       dblp:title ?title ;
       dblp:yearOfPublication ?year .
  OPTIONAL { ?pub dblp:publishedIn ?venue }
}
ORDER BY DESC(?year)
LIMIT 1000000

```
[try it!](https://dblp.org/?query=PREFIX%20dblp%3A%20%3Chttps%3A//dblp.org/rdf/schema%23%3E%0ASELECT%20%3Fpub%20%3Ftitle%20%3Fyear%20%3Fvenue%20WHERE%20%7B%0A%20%20%3Fpub%20dblp%3AauthoredBy%20%3Chttps%3A//dblp.org/pid/27/6858%3E%20%3B%0A%20%20%20%20%20%20%20dblp%3Atitle%20%3Ftitle%20%3B%0A%20%20%20%20%20%20%20dblp%3AyearOfPublication%20%3Fyear%20.%0A%20%20OPTIONAL%20%7B%20%3Fpub%20dblp%3ApublishedIn%20%3Fvenue%20%7D%0A%7D%0AORDER%20BY%20DESC%28%3Fyear%29%0ALIMIT%201000000%0A)
## result
| pub                                                      | title                                                                                                        |   year | venue                     |
|----------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|--------|---------------------------|
| https://dblp.org/rec/conf/esws/Fahl24                    | GraphWiseLearn: Personalized Learning Through Semantified TEL, Leveraging QA-Enhanced LLM-Generated Content. |   2025 | ESWC Satellite Events (2) |
| https://dblp.org/rec/conf/esws/FahlH0D23                 | Semantification of CEUR-WS with Wikidata as a target Knowledge Graph.                                        |   2023 | TEXT2KG/BiKE@ESWC         |
| https://dblp.org/rec/conf/semweb/FahlHW0D22              | Property cardinality analysis to extract truly tabular query results from Wikidata.                          |   2022 | Wikidata@ISWC             |
| https://dblp.org/rec/conf/semweb/FahlHW0D22a             | Getting and hosting your own copy of Wikidata.                                                               |   2022 | Wikidata@ISWC             |
| https://dblp.org/rec/journals/datascience/FrankenBEFHL22 | Persistent Identification for Conferences.                                                                   |   2022 | Data Sci. J.              |
| https://dblp.org/rec/journals/stt/Fahl03                 | Anforderungsmanagement als Erfolgsfaktor der Software-entwicklung.                                           |   2003 | Softwaretechnik-Trends    |
