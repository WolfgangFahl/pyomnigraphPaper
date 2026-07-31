## PlaceIdentity

### query
```sparql
PREFIX gp: <http://gov.genealogy.net/ontology.owl#>
PREFIX gov: <http://gov.genealogy.net/>
PREFIX fgt: <https://database.factgrid.de/prop/direct/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
SELECT ?gov_name ?fg_place ?fg_name ?wd_place ?wd_name
WHERE {
  SERVICE <https://gov-sparql.genealogy.net/dataset/sparql> {
    gov:AACHENJO30BS gp:hasName/gp:value ?gov_name .
  }
  SERVICE <https://database.factgrid.de/sparql> {
    ?fg_place fgt:P1073 "AACHENJO30BS" ;
              rdfs:label ?fg_name .
    FILTER(LANG(?fg_name) = "de")
  }
  SERVICE <https://qlever.dev/api/wikidata> {
    ?wd_place wdt:P2503 "AACHENJO30BS" ;
              rdfs:label ?wd_name .
    FILTER(LANG(?wd_name) = "en")
  }
}

```
[try it!](https://www.wikidata.org/?query=PREFIX%20gp%3A%20%3Chttp%3A//gov.genealogy.net/ontology.owl%23%3E%0APREFIX%20gov%3A%20%3Chttp%3A//gov.genealogy.net/%3E%0APREFIX%20fgt%3A%20%3Chttps%3A//database.factgrid.de/prop/direct/%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0APREFIX%20wdt%3A%20%3Chttp%3A//www.wikidata.org/prop/direct/%3E%0ASELECT%20%3Fgov_name%20%3Ffg_place%20%3Ffg_name%20%3Fwd_place%20%3Fwd_name%0AWHERE%20%7B%0A%20%20SERVICE%20%3Chttps%3A//gov-sparql.genealogy.net/dataset/sparql%3E%20%7B%0A%20%20%20%20gov%3AAACHENJO30BS%20gp%3AhasName/gp%3Avalue%20%3Fgov_name%20.%0A%20%20%7D%0A%20%20SERVICE%20%3Chttps%3A//database.factgrid.de/sparql%3E%20%7B%0A%20%20%20%20%3Ffg_place%20fgt%3AP1073%20%22AACHENJO30BS%22%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20rdfs%3Alabel%20%3Ffg_name%20.%0A%20%20%20%20FILTER%28LANG%28%3Ffg_name%29%20%3D%20%22de%22%29%0A%20%20%7D%0A%20%20SERVICE%20%3Chttps%3A//qlever.dev/api/wikidata%3E%20%7B%0A%20%20%20%20%3Fwd_place%20wdt%3AP2503%20%22AACHENJO30BS%22%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20rdfs%3Alabel%20%3Fwd_name%20.%0A%20%20%20%20FILTER%28LANG%28%3Fwd_name%29%20%3D%20%22en%22%29%0A%20%20%7D%0A%7D%0A)
## result
| gov_name        | fg_place                                   | fg_name   | wd_place                             | wd_name   |
|-----------------|--------------------------------------------|-----------|--------------------------------------|-----------|
| Aken            | https://database.factgrid.de/entity/Q10293 | Aachen    | http://www.wikidata.org/entity/Q1017 | Aachen    |
| Aachen          | https://database.factgrid.de/entity/Q10293 | Aachen    | http://www.wikidata.org/entity/Q1017 | Aachen    |
| Aix La Chapelle | https://database.factgrid.de/entity/Q10293 | Aachen    | http://www.wikidata.org/entity/Q1017 | Aachen    |
