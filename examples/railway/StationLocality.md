## StationLocality

### query
```sparql
PREFIX osmkey: <https://www.openstreetmap.org/wiki/Key:>
PREFIX osmrel: <https://www.openstreetmap.org/relation/>
PREFIX geo: <http://www.opengis.net/ont/geosparql#>
PREFIX geof: <http://www.opengis.net/def/function/geosparql/>
SELECT ?osm_entity ?osm_name ?lat ?lon ?relation ?relation_name WHERE {
  ?osm_entity osmkey:wikidata "Q3095803" .
  OPTIONAL { ?osm_entity osmkey:name ?osm_name }
  ?osm_entity geo:hasGeometry/geo:asWKT ?loc .
  BIND(geof:latitude(geof:centroid(?loc)) AS ?lat)
  BIND(geof:longitude(geof:centroid(?loc)) AS ?lon)
  OPTIONAL {
    ?member osmrel:member_id ?osm_entity .
    ?relation osmrel:member ?member .
    OPTIONAL { ?relation osmkey:name ?relation_name }
  }
}
ORDER BY ?osm_entity ?relation
LIMIT 10

```
[try it!](https://www.openstreetmap.org/?query=PREFIX%20osmkey%3A%20%3Chttps%3A//www.openstreetmap.org/wiki/Key%3A%3E%0APREFIX%20osmrel%3A%20%3Chttps%3A//www.openstreetmap.org/relation/%3E%0APREFIX%20geo%3A%20%3Chttp%3A//www.opengis.net/ont/geosparql%23%3E%0APREFIX%20geof%3A%20%3Chttp%3A//www.opengis.net/def/function/geosparql/%3E%0ASELECT%20%3Fosm_entity%20%3Fosm_name%20%3Flat%20%3Flon%20%3Frelation%20%3Frelation_name%20WHERE%20%7B%0A%20%20%3Fosm_entity%20osmkey%3Awikidata%20%22Q3095803%22%20.%0A%20%20OPTIONAL%20%7B%20%3Fosm_entity%20osmkey%3Aname%20%3Fosm_name%20%7D%0A%20%20%3Fosm_entity%20geo%3AhasGeometry/geo%3AasWKT%20%3Floc%20.%0A%20%20BIND%28geof%3Alatitude%28geof%3Acentroid%28%3Floc%29%29%20AS%20%3Flat%29%0A%20%20BIND%28geof%3Alongitude%28geof%3Acentroid%28%3Floc%29%29%20AS%20%3Flon%29%0A%20%20OPTIONAL%20%7B%0A%20%20%20%20%3Fmember%20osmrel%3Amember_id%20%3Fosm_entity%20.%0A%20%20%20%20%3Frelation%20osmrel%3Amember%20%3Fmember%20.%0A%20%20%20%20OPTIONAL%20%7B%20%3Frelation%20osmkey%3Aname%20%3Frelation_name%20%7D%0A%20%20%7D%0A%7D%0AORDER%20BY%20%3Fosm_entity%20%3Frelation%0ALIMIT%2010%0A)
## result
| osm_entity                                    | osm_name   |   lat |   lon | relation                                       | relation_name                        |
|-----------------------------------------------|------------|-------|-------|------------------------------------------------|--------------------------------------|
| https://www.openstreetmap.org/node/9882171870 | Irun       |    43 |    -2 | https://www.openstreetmap.org/relation/6843270 | Alvia 00537: Irun -> Barcelona Sants |
| https://www.openstreetmap.org/node/9882171870 | Irun       |    43 |    -2 | https://www.openstreetmap.org/relation/6843271 | Alvia 00534: Barcelona Sants -> Irun |
| https://www.openstreetmap.org/node/9882171870 | Irun       |    43 |    -2 | https://www.openstreetmap.org/relation/6843272 | Alvia 00533: Irun -> Barcelona Sants |
| https://www.openstreetmap.org/node/9882171870 | Irun       |    43 |    -2 | https://www.openstreetmap.org/relation/6843385 | Alvia 00800                          |
| https://www.openstreetmap.org/node/9882171870 | Irun       |    43 |    -2 | https://www.openstreetmap.org/relation/9036430 | Irun                                 |
