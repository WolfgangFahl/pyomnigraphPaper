## PlaceNames

### query
```sparql
PREFIX fgt: <https://database.factgrid.de/prop/direct/>
PREFIX p: <https://database.factgrid.de/prop/>
PREFIX ps: <https://database.factgrid.de/prop/statement/>
PREFIX pq: <https://database.factgrid.de/prop/qualifier/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT ?place ?name ?language ?date WHERE {
  ?place fgt:P1073 "AACHENJO30BS" .
  ?place p:P34 ?namestmt .
  ?namestmt ps:P34 ?name .
  OPTIONAL {
    ?namestmt pq:P18 ?lang_item .
    ?lang_item rdfs:label ?language .
    FILTER(LANG(?language) = "en")
  }
  OPTIONAL { ?namestmt pq:P106 ?date }
}
ORDER BY ?date ?name
LIMIT 10

```
[try it!](https://database.factgrid.de//#PREFIX%20fgt%3A%20%3Chttps%3A//database.factgrid.de/prop/direct/%3E%0APREFIX%20p%3A%20%3Chttps%3A//database.factgrid.de/prop/%3E%0APREFIX%20ps%3A%20%3Chttps%3A//database.factgrid.de/prop/statement/%3E%0APREFIX%20pq%3A%20%3Chttps%3A//database.factgrid.de/prop/qualifier/%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0ASELECT%20%3Fplace%20%3Fname%20%3Flanguage%20%3Fdate%20WHERE%20%7B%0A%20%20%3Fplace%20fgt%3AP1073%20%22AACHENJO30BS%22%20.%0A%20%20%3Fplace%20p%3AP34%20%3Fnamestmt%20.%0A%20%20%3Fnamestmt%20ps%3AP34%20%3Fname%20.%0A%20%20OPTIONAL%20%7B%0A%20%20%20%20%3Fnamestmt%20pq%3AP18%20%3Flang_item%20.%0A%20%20%20%20%3Flang_item%20rdfs%3Alabel%20%3Flanguage%20.%0A%20%20%20%20FILTER%28LANG%28%3Flanguage%29%20%3D%20%22en%22%29%0A%20%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fnamestmt%20pq%3AP106%20%3Fdate%20%7D%0A%7D%0AORDER%20BY%20%3Fdate%20%3Fname%0ALIMIT%2010%0A)
## result
| place                                      | name            | language   | date                |
|--------------------------------------------|-----------------|------------|---------------------|
| https://database.factgrid.de/entity/Q10293 | Aachen          |            |                     |
| https://database.factgrid.de/entity/Q10293 | Achen           |            |                     |
| https://database.factgrid.de/entity/Q10293 | Oche            | Ripuarian  |                     |
| https://database.factgrid.de/entity/Q10293 | Aix-la-Chapelle |            |                     |
| https://database.factgrid.de/entity/Q10293 | Aix-la-Chapelle |            |                     |
| https://database.factgrid.de/entity/Q10293 | Aquae Grani     |            |                     |
| https://database.factgrid.de/entity/Q10293 | Aquisgranum     |            |                     |
| https://database.factgrid.de/entity/Q10293 | Aquis           |            | 1395-11-03 00:00:00 |
| https://database.factgrid.de/entity/Q10293 | Akusgrann       |            | 1400-05-19 00:00:00 |
| https://database.factgrid.de/entity/Q10293 | Aqui            |            | 1414-11-05 00:00:00 |
