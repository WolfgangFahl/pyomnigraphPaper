## AuthorIdentity

### query
```sparql
PREFIX dblp: <https://dblp.org/rdf/schema#>
PREFIX gndo: <https://d-nb.info/standards/elementset/gnd#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
SELECT ?dblp_person ?dblp_name ?gnd_person ?gnd_name ?wd_person ?wd_name
WHERE {
  SERVICE <https://qlever.dev/api/dblp> {
    ?dblp_person dblp:orcid <https://orcid.org/0000-0001-6324-7164> ;
                 rdfs:label ?dblp_name .
  }
  SERVICE <https://sparql.dnb.de/api/gnd> {
    ?gnd_person owl:sameAs <https://orcid.org/0000-0001-6324-7164> ;
                gndo:preferredNameForThePerson ?gnd_name .
  }
  SERVICE <https://qlever.dev/api/wikidata> {
    ?wd_person wdt:P496 "0000-0001-6324-7164" ;
               rdfs:label ?wd_name .
    FILTER(LANG(?wd_name) = "en")
  }
}

```
[try it!](https://dblp.org/?query=PREFIX%20dblp%3A%20%3Chttps%3A//dblp.org/rdf/schema%23%3E%0APREFIX%20gndo%3A%20%3Chttps%3A//d-nb.info/standards/elementset/gnd%23%3E%0APREFIX%20owl%3A%20%3Chttp%3A//www.w3.org/2002/07/owl%23%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0APREFIX%20wdt%3A%20%3Chttp%3A//www.wikidata.org/prop/direct/%3E%0ASELECT%20%3Fdblp_person%20%3Fdblp_name%20%3Fgnd_person%20%3Fgnd_name%20%3Fwd_person%20%3Fwd_name%0AWHERE%20%7B%0A%20%20SERVICE%20%3Chttps%3A//qlever.dev/api/dblp%3E%20%7B%0A%20%20%20%20%3Fdblp_person%20dblp%3Aorcid%20%3Chttps%3A//orcid.org/0000-0001-6324-7164%3E%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20rdfs%3Alabel%20%3Fdblp_name%20.%0A%20%20%7D%0A%20%20SERVICE%20%3Chttps%3A//sparql.dnb.de/api/gnd%3E%20%7B%0A%20%20%20%20%3Fgnd_person%20owl%3AsameAs%20%3Chttps%3A//orcid.org/0000-0001-6324-7164%3E%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20gndo%3ApreferredNameForThePerson%20%3Fgnd_name%20.%0A%20%20%7D%0A%20%20SERVICE%20%3Chttps%3A//qlever.dev/api/wikidata%3E%20%7B%0A%20%20%20%20%3Fwd_person%20wdt%3AP496%20%220000-0001-6324-7164%22%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20rdfs%3Alabel%20%3Fwd_name%20.%0A%20%20%20%20FILTER%28LANG%28%3Fwd_name%29%20%3D%20%22en%22%29%0A%20%20%7D%0A%7D%0A)
## result
| dblp_person                         | dblp_name     | gnd_person                      | gnd_name       | wd_person                                | wd_name       |
|-------------------------------------|---------------|---------------------------------|----------------|------------------------------------------|---------------|
| https://dblp.org/pid/d/StefanDecker | Stefan Decker | https://d-nb.info/gnd/173443443 | Decker, Stefan | http://www.wikidata.org/entity/Q54303353 | Stefan Decker |
