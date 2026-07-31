## PlaceNames

### query
```sparql
PREFIX gp: <http://gov.genealogy.net/ontology.owl#>
PREFIX gov: <http://gov.genealogy.net/>
SELECT ?place ?name ?language ?begin ?end WHERE {
  VALUES ?place { gov:AACHENJO30BS }
  ?place gp:hasName ?nameprop .
  ?nameprop gp:value ?name .
  OPTIONAL { ?nameprop gp:language ?language }
  OPTIONAL { ?nameprop gp:timeBegin ?begin }
  OPTIONAL { ?nameprop gp:timeEnd ?end }
}
ORDER BY ?begin ?name
LIMIT 1000000

```
[try it!](https://gov.genealogy.net/?query=PREFIX%20gp%3A%20%3Chttp%3A//gov.genealogy.net/ontology.owl%23%3E%0APREFIX%20gov%3A%20%3Chttp%3A//gov.genealogy.net/%3E%0ASELECT%20%3Fplace%20%3Fname%20%3Flanguage%20%3Fbegin%20%3Fend%20WHERE%20%7B%0A%20%20VALUES%20%3Fplace%20%7B%20gov%3AAACHENJO30BS%20%7D%0A%20%20%3Fplace%20gp%3AhasName%20%3Fnameprop%20.%0A%20%20%3Fnameprop%20gp%3Avalue%20%3Fname%20.%0A%20%20OPTIONAL%20%7B%20%3Fnameprop%20gp%3Alanguage%20%3Flanguage%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fnameprop%20gp%3AtimeBegin%20%3Fbegin%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fnameprop%20gp%3AtimeEnd%20%3Fend%20%7D%0A%7D%0AORDER%20BY%20%3Fbegin%20%3Fname%0ALIMIT%201000000%0A)
## result
| place                                 | name            | language   |
|---------------------------------------|-----------------|------------|
| http://gov.genealogy.net/AACHENJO30BS | Aachen          | deu        |
| http://gov.genealogy.net/AACHENJO30BS | Aix La Chapelle | fre        |
| http://gov.genealogy.net/AACHENJO30BS | Aken            | dut        |
