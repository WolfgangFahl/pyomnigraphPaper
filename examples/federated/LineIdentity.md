## LineIdentity

### query
```sparql
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX osmkey: <https://www.openstreetmap.org/wiki/Key:>
PREFIX osmrel: <https://www.openstreetmap.org/relation/>
PREFIX era: <http://data.europa.eu/949/>
SELECT ?line ?line_name ?osm_relation ?osm_name ?line_number ?rinf_lps ?rinf_lid
WHERE {
  SERVICE <https://qlever.dev/api/wikidata> {
    VALUES ?line { wd:Q801991 }
    ?line wdt:P402 ?osm_relation ;
          wdt:P1671 ?line_number ;
          rdfs:label ?line_name .
    FILTER(LANG(?line_name) = "en")
  }
  SERVICE <https://qlever.dev/api/osm-planet> {
    VALUES ?osm_rel { osmrel:1852360 }
    ?osm_rel osmkey:ref ?osm_ref ;
             osmkey:name ?osm_name .
  }
  SERVICE <https://rinf.data.era.europa.eu/api/sparql> {
    ?rinf_lps a era:LinearPositioningSystem ;
              era:lineId ?rinf_lid .
    FILTER(STR(?rinf_lid) = "655000-1")
  }
  # P402 joins the Wikidata leg to the OSM leg
  FILTER(STR(?osm_relation) = "1852360")
  FILTER(?osm_ref = ?line_number)
  # P1671 joins the Wikidata leg to the RINF leg (lineId adds a track suffix)
  FILTER(STRSTARTS(STR(?rinf_lid), REPLACE(?line_number, " ", "")))
}

```
[try it!](https://www.openstreetmap.org/?query=PREFIX%20wdt%3A%20%3Chttp%3A//www.wikidata.org/prop/direct/%3E%0APREFIX%20wd%3A%20%3Chttp%3A//www.wikidata.org/entity/%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0APREFIX%20osmkey%3A%20%3Chttps%3A//www.openstreetmap.org/wiki/Key%3A%3E%0APREFIX%20osmrel%3A%20%3Chttps%3A//www.openstreetmap.org/relation/%3E%0APREFIX%20era%3A%20%3Chttp%3A//data.europa.eu/949/%3E%0ASELECT%20%3Fline%20%3Fline_name%20%3Fosm_relation%20%3Fosm_name%20%3Fline_number%20%3Frinf_lps%20%3Frinf_lid%0AWHERE%20%7B%0A%20%20SERVICE%20%3Chttps%3A//qlever.dev/api/wikidata%3E%20%7B%0A%20%20%20%20VALUES%20%3Fline%20%7B%20wd%3AQ801991%20%7D%0A%20%20%20%20%3Fline%20wdt%3AP402%20%3Fosm_relation%20%3B%0A%20%20%20%20%20%20%20%20%20%20wdt%3AP1671%20%3Fline_number%20%3B%0A%20%20%20%20%20%20%20%20%20%20rdfs%3Alabel%20%3Fline_name%20.%0A%20%20%20%20FILTER%28LANG%28%3Fline_name%29%20%3D%20%22en%22%29%0A%20%20%7D%0A%20%20SERVICE%20%3Chttps%3A//qlever.dev/api/osm-planet%3E%20%7B%0A%20%20%20%20VALUES%20%3Fosm_rel%20%7B%20osmrel%3A1852360%20%7D%0A%20%20%20%20%3Fosm_rel%20osmkey%3Aref%20%3Fosm_ref%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20osmkey%3Aname%20%3Fosm_name%20.%0A%20%20%7D%0A%20%20SERVICE%20%3Chttps%3A//rinf.data.era.europa.eu/api/sparql%3E%20%7B%0A%20%20%20%20%3Frinf_lps%20a%20era%3ALinearPositioningSystem%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20era%3AlineId%20%3Frinf_lid%20.%0A%20%20%20%20FILTER%28STR%28%3Frinf_lid%29%20%3D%20%22655000-1%22%29%0A%20%20%7D%0A%20%20%23%20P402%20joins%20the%20Wikidata%20leg%20to%20the%20OSM%20leg%0A%20%20FILTER%28STR%28%3Fosm_relation%29%20%3D%20%221852360%22%29%0A%20%20FILTER%28%3Fosm_ref%20%3D%20%3Fline_number%29%0A%20%20%23%20P1671%20joins%20the%20Wikidata%20leg%20to%20the%20RINF%20leg%20%28lineId%20adds%20a%20track%20suffix%29%0A%20%20FILTER%28STRSTARTS%28STR%28%3Frinf_lid%29%2C%20REPLACE%28%3Fline_number%2C%20%22%20%22%2C%20%22%22%29%29%29%0A%7D%0A)
## result
| line                                   | line_name             |   osm_relation | osm_name                 | line_number   | rinf_lps                                                     | rinf_lid   |
|----------------------------------------|-----------------------|----------------|--------------------------|---------------|--------------------------------------------------------------|------------|
| http://www.wikidata.org/entity/Q801991 | Bordeaux–Irun railway |        1852360 | Ligne de Bordeaux à Irun | 655 000       | http://data.europa.eu/949/linearPositioningSystem/746501ab6b | 655000-1   |
