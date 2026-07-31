## PlaceIdentity

### query
```sparql
PREFIX gp: <http://gov.genealogy.net/ontology.owl#>
PREFIX gov: <http://gov.genealogy.net/>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
SELECT DISTINCT ?place ?name ?counterpart WHERE {
  VALUES ?place { gov:AACHENJO30BS }
  ?place gp:hasName/gp:value ?name .
  OPTIONAL { ?place owl:sameAs ?counterpart }
}
ORDER BY ?name ?counterpart
LIMIT 1000000

```
[try it!](https://gov.genealogy.net/?query=PREFIX%20gp%3A%20%3Chttp%3A//gov.genealogy.net/ontology.owl%23%3E%0APREFIX%20gov%3A%20%3Chttp%3A//gov.genealogy.net/%3E%0APREFIX%20owl%3A%20%3Chttp%3A//www.w3.org/2002/07/owl%23%3E%0ASELECT%20DISTINCT%20%3Fplace%20%3Fname%20%3Fcounterpart%20WHERE%20%7B%0A%20%20VALUES%20%3Fplace%20%7B%20gov%3AAACHENJO30BS%20%7D%0A%20%20%3Fplace%20gp%3AhasName/gp%3Avalue%20%3Fname%20.%0A%20%20OPTIONAL%20%7B%20%3Fplace%20owl%3AsameAs%20%3Fcounterpart%20%7D%0A%7D%0AORDER%20BY%20%3Fname%20%3Fcounterpart%0ALIMIT%201000000%0A)
## result
| place                                 | name            | counterpart                        |
|---------------------------------------|-----------------|------------------------------------|
| http://gov.genealogy.net/AACHENJO30BS | Aachen          | http://sws.geonames.org/3247449/   |
| http://gov.genealogy.net/AACHENJO30BS | Aachen          | http://www.wikidata.org/wiki/Q1017 |
| http://gov.genealogy.net/AACHENJO30BS | Aix La Chapelle | http://sws.geonames.org/3247449/   |
| http://gov.genealogy.net/AACHENJO30BS | Aix La Chapelle | http://www.wikidata.org/wiki/Q1017 |
| http://gov.genealogy.net/AACHENJO30BS | Aken            | http://sws.geonames.org/3247449/   |
| http://gov.genealogy.net/AACHENJO30BS | Aken            | http://www.wikidata.org/wiki/Q1017 |
