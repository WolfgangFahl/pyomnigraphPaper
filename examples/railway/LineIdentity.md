## LineIdentity

### query
```sparql
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT ?line ?line_name ?osm_relation ?line_number ?rinf_line_key WHERE {
  VALUES ?line { wd:Q801991 }
  OPTIONAL { ?line rdfs:label ?label . FILTER(LANG(?label) = "en") }
  BIND(COALESCE(?label, SUBSTR(STR(?line), 32)) AS ?line_name)
  OPTIONAL { ?line wdt:P402 ?osm_relation }
  OPTIONAL { ?line wdt:P1671 ?line_number }
  BIND(REPLACE(?line_number, " ", "") AS ?rinf_line_key)
}
ORDER BY ?line_number
LIMIT 10

```
[try it!](https://www.wikidata.org/?query=PREFIX%20wdt%3A%20%3Chttp%3A//www.wikidata.org/prop/direct/%3E%0APREFIX%20wd%3A%20%3Chttp%3A//www.wikidata.org/entity/%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0ASELECT%20%3Fline%20%3Fline_name%20%3Fosm_relation%20%3Fline_number%20%3Frinf_line_key%20WHERE%20%7B%0A%20%20VALUES%20%3Fline%20%7B%20wd%3AQ801991%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fline%20rdfs%3Alabel%20%3Flabel%20.%20FILTER%28LANG%28%3Flabel%29%20%3D%20%22en%22%29%20%7D%0A%20%20BIND%28COALESCE%28%3Flabel%2C%20SUBSTR%28STR%28%3Fline%29%2C%2032%29%29%20AS%20%3Fline_name%29%0A%20%20OPTIONAL%20%7B%20%3Fline%20wdt%3AP402%20%3Fosm_relation%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fline%20wdt%3AP1671%20%3Fline_number%20%7D%0A%20%20BIND%28REPLACE%28%3Fline_number%2C%20%22%20%22%2C%20%22%22%29%20AS%20%3Frinf_line_key%29%0A%7D%0AORDER%20BY%20%3Fline_number%0ALIMIT%2010%0A)
## result
| line                                   | line_name             |   osm_relation | line_number   |   rinf_line_key |
|----------------------------------------|-----------------------|----------------|---------------|-----------------|
| http://www.wikidata.org/entity/Q801991 | Bordeaux–Irun railway |        1852360 | 655 000       |          655000 |
