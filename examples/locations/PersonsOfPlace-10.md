## PersonsOfPlace

### query
```sparql
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT ?person ?person_name ?relation WHERE {
  ?place wdt:P2503 "AACHENJO30BS" .
  VALUES ?relation { wdt:P19 wdt:P20 wdt:P937 }
  ?person ?relation ?place .
  OPTIONAL {
    ?person rdfs:label ?person_label .
    FILTER(LANG(?person_label) = "en")
  }
  BIND(COALESCE(?person_label, SUBSTR(STR(?person), 32)) AS ?person_name)
}
ORDER BY ?person_name ?relation
LIMIT 10

```
[try it!](https://www.wikidata.org/?query=PREFIX%20wdt%3A%20%3Chttp%3A//www.wikidata.org/prop/direct/%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0ASELECT%20%3Fperson%20%3Fperson_name%20%3Frelation%20WHERE%20%7B%0A%20%20%3Fplace%20wdt%3AP2503%20%22AACHENJO30BS%22%20.%0A%20%20VALUES%20%3Frelation%20%7B%20wdt%3AP19%20wdt%3AP20%20wdt%3AP937%20%7D%0A%20%20%3Fperson%20%3Frelation%20%3Fplace%20.%0A%20%20OPTIONAL%20%7B%0A%20%20%20%20%3Fperson%20rdfs%3Alabel%20%3Fperson_label%20.%0A%20%20%20%20FILTER%28LANG%28%3Fperson_label%29%20%3D%20%22en%22%29%0A%20%20%7D%0A%20%20BIND%28COALESCE%28%3Fperson_label%2C%20SUBSTR%28STR%28%3Fperson%29%2C%2032%29%29%20AS%20%3Fperson_name%29%0A%7D%0AORDER%20BY%20%3Fperson_name%20%3Frelation%0ALIMIT%2010%0A)
## result
| person                                    | person_name             | relation                                 |
|-------------------------------------------|-------------------------|------------------------------------------|
| http://www.wikidata.org/entity/Q136469703 | Abraham Holländer       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q96213012  | Abraham von Streithagen | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q66553236  | Achim Barrenstein       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q340387    | Achim Großmann          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q34674586  | Achim Haag              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q340405    | Achim John              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15429765  | Achim Kampker           | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q340408    | Achim Kaufmann          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q340435    | Achim Mohné             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q348798    | Adam Bock               | http://www.wikidata.org/prop/direct/P19  |
