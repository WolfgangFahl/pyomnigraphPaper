## RelationStops

### query
```sparql
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX geo: <http://www.opengis.net/ont/geosparql#>
PREFIX osm2rdfmember: <https://osm2rdf.cs.uni-freiburg.de/rdf/member#>
PREFIX osmrel: <https://www.openstreetmap.org/relation/>
PREFIX osmkey: <https://www.openstreetmap.org/wiki/Key:>
PREFIX geof: <http://www.opengis.net/def/function/geosparql/>
SELECT
  ?rel
  ?rel_name
  ?rel_pos
  ?member
  ?node
  ?node_name
  ?node_ref
  ?role
  ?lat
  ?lon
WHERE {
  VALUES (?rel ?role ?minlat ?maxlat ?minlon ?maxlon) {
    (osmrel:10492086 "stop" 42.0 44.0 -9.0 4.0)
  }
  ?rel osmkey:ref ?rel_name .
  ?rel osmrel:member ?member .
  ?member osmrel:member_pos ?rel_pos .
  ?member osmrel:member_role ?role .
  ?member osmrel:member_id ?node .
  OPTIONAL { ?node osmkey:name ?node_name}.
  OPTIONAL { ?node osmkey:ref ?node_ref}.
  ?node geo:hasGeometry/geo:asWKT ?loc .
  BIND(geof:latitude(?loc) AS ?lat)
  BIND(geof:longitude(?loc) AS ?lon)
  FILTER (?lat > ?minlat && ?lat < ?maxlat && ?lon > ?minlon && ?lon < ?maxlon)
}
ORDER BY ?rel_pos
LIMIT 100

```
[try it!](https://www.openstreetmap.org/?query=PREFIX%20rdf%3A%20%3Chttp%3A//www.w3.org/1999/02/22-rdf-syntax-ns%23%3E%0APREFIX%20geo%3A%20%3Chttp%3A//www.opengis.net/ont/geosparql%23%3E%0APREFIX%20osm2rdfmember%3A%20%3Chttps%3A//osm2rdf.cs.uni-freiburg.de/rdf/member%23%3E%0APREFIX%20osmrel%3A%20%3Chttps%3A//www.openstreetmap.org/relation/%3E%0APREFIX%20osmkey%3A%20%3Chttps%3A//www.openstreetmap.org/wiki/Key%3A%3E%0APREFIX%20geof%3A%20%3Chttp%3A//www.opengis.net/def/function/geosparql/%3E%0ASELECT%0A%20%20%3Frel%0A%20%20%3Frel_name%0A%20%20%3Frel_pos%0A%20%20%3Fmember%0A%20%20%3Fnode%0A%20%20%3Fnode_name%0A%20%20%3Fnode_ref%0A%20%20%3Frole%0A%20%20%3Flat%0A%20%20%3Flon%0AWHERE%20%7B%0A%20%20VALUES%20%28%3Frel%20%3Frole%20%3Fminlat%20%3Fmaxlat%20%3Fminlon%20%3Fmaxlon%29%20%7B%0A%20%20%20%20%28osmrel%3A10492086%20%22stop%22%2042.0%2044.0%20-9.0%204.0%29%0A%20%20%7D%0A%20%20%3Frel%20osmkey%3Aref%20%3Frel_name%20.%0A%20%20%3Frel%20osmrel%3Amember%20%3Fmember%20.%0A%20%20%3Fmember%20osmrel%3Amember_pos%20%3Frel_pos%20.%0A%20%20%3Fmember%20osmrel%3Amember_role%20%3Frole%20.%0A%20%20%3Fmember%20osmrel%3Amember_id%20%3Fnode%20.%0A%20%20OPTIONAL%20%7B%20%3Fnode%20osmkey%3Aname%20%3Fnode_name%7D.%0A%20%20OPTIONAL%20%7B%20%3Fnode%20osmkey%3Aref%20%3Fnode_ref%7D.%0A%20%20%3Fnode%20geo%3AhasGeometry/geo%3AasWKT%20%3Floc%20.%0A%20%20BIND%28geof%3Alatitude%28%3Floc%29%20AS%20%3Flat%29%0A%20%20BIND%28geof%3Alongitude%28%3Floc%29%20AS%20%3Flon%29%0A%20%20FILTER%20%28%3Flat%20%3E%20%3Fminlat%20%26%26%20%3Flat%20%3C%20%3Fmaxlat%20%26%26%20%3Flon%20%3E%20%3Fminlon%20%26%26%20%3Flon%20%3C%20%3Fmaxlon%29%0A%7D%0AORDER%20BY%20%3Frel_pos%0ALIMIT%20100%0A)
## result
| rel                                             | rel_name   |   rel_pos | member       | node                                          | node_name                | node_ref   | role   |   lat |   lon |
|-------------------------------------------------|------------|-----------|--------------|-----------------------------------------------|--------------------------|------------|--------|-------|-------|
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        21 | bn2630370789 | https://www.openstreetmap.org/node/5239688225 | Palencia                 | L160       | stop   |    42 |    -5 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        23 | bn2630370791 | https://www.openstreetmap.org/node/5959602923 | Burgos - Rosa Manzano    |            | stop   |    42 |    -4 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        25 | bn2630370793 | https://www.openstreetmap.org/node/1981635686 | Briviesca                |            | stop   |    43 |    -3 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        27 | bn2630370795 | https://www.openstreetmap.org/node/29569297   | Miranda de Ebro          |            | stop   |    43 |    -3 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        29 | bn2630370798 | https://www.openstreetmap.org/node/5239688223 | Vitoria-Gasteiz          |            | stop   |    43 |    -3 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        31 | bn2630370800 | https://www.openstreetmap.org/node/6767680441 | Alegría-Dulantzi         |            | stop   |    43 |    -3 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        33 | bn2630370802 | https://www.openstreetmap.org/node/1697798338 | Salvatierra / Agurain    |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        35 | bn2630370804 | https://www.openstreetmap.org/node/6083777817 | Araia                    |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        37 | bn2630370806 | https://www.openstreetmap.org/node/1697807801 | Altsasu-Alsasua          |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        39 | bn2630370809 | https://www.openstreetmap.org/node/2028177181 | Legazpi                  |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        41 | bn2630370811 | https://www.openstreetmap.org/node/1699812646 | Zumarraga                |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        43 | bn2630370813 | https://www.openstreetmap.org/node/1699811886 | Beasain                  |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        45 | bn2630370815 | https://www.openstreetmap.org/node/305106143  | Ordizia                  |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        47 | bn2630370817 | https://www.openstreetmap.org/node/6856202934 | Tolosa                   |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        49 | bn2630370820 | https://www.openstreetmap.org/node/6856208610 | Villabona-Zizurkil       |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        51 | bn2630370822 | https://www.openstreetmap.org/node/520238578  | Andoain-Centro           |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        53 | bn2630370824 | https://www.openstreetmap.org/node/4944881837 | Hernani-Centro           |            | stop   |    43 |    -2 |
| https://www.openstreetmap.org/relation/10492086 | MD 18061   |        55 | bn2630370826 | https://www.openstreetmap.org/node/1613248772 | Donostia / San Sebastián |            | stop   |    43 |    -2 |
