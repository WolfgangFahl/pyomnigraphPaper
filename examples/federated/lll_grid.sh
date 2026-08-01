#!/bin/bash
# LLL off-diagonal grid per pyomnigraphPaper #28 / #24: every 4^3 = 64
# placement of the three SERVICE legs across the four local backends,
# run for each executor; query-only latency via curl, Count companions.
# blazegraph executor rows document the known connectivity failures (#16).
# usage: lll_grid.sh [executor ...]   default: blazegraph jena oxigraph qlever
set -u

ip() { docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$1"; }

declare -A EP SVC
EP[blazegraph]="http://localhost:9898/bigdata/namespace/kb/sparql"
EP[jena]="http://localhost:3030/ds/sparql"
EP[oxigraph]="http://localhost:7878/query"
EP[qlever]="http://localhost:7019/api/sparql"
SVC[blazegraph]="http://$(ip blazegraph-omnigraph):8080/bigdata/namespace/kb/sparql"
SVC[jena]="http://$(ip jena-omnigraph):3030/ds/sparql"
SVC[oxigraph]="http://$(ip oxigraph-omnigraph):7878/query"
SVC[qlever]="http://$(ip qlever-omnigraph):7019/api/sparql"

PFX='PREFIX dblp: <https://dblp.org/rdf/schema#> PREFIX gndo: <https://d-nb.info/standards/elementset/gnd#> PREFIX owl: <http://www.w3.org/2002/07/owl#> PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> PREFIX wdt: <http://www.wikidata.org/prop/direct/> PREFIX wd: <http://www.wikidata.org/entity/> PREFIX gp: <http://gov.genealogy.net/ontology.owl#> PREFIX gov: <http://gov.genealogy.net/> PREFIX fgt: <https://database.factgrid.de/prop/direct/> PREFIX osmkey: <https://www.openstreetmap.org/wiki/Key:> PREFIX osmrel: <https://www.openstreetmap.org/relation/> PREFIX era: <http://data.europa.eu/949/>'

# $1 $2 $3: the three leg SERVICE URLs in queries.yaml leg order
author() { echo "SELECT (COUNT(*) AS ?count) WHERE { SERVICE <$1> { ?dblp_person dblp:orcid <https://orcid.org/0000-0001-6324-7164> ; rdfs:label ?dblp_name . } SERVICE <$2> { ?gnd_person owl:sameAs <https://orcid.org/0000-0001-6324-7164> ; gndo:preferredNameForThePerson ?gnd_name . } SERVICE <$3> { ?wd_person wdt:P496 \"0000-0001-6324-7164\" ; rdfs:label ?wd_name . FILTER(LANG(?wd_name) = \"en\") } }"; }
place()  { echo "SELECT (COUNT(*) AS ?count) WHERE { SERVICE <$1> { gov:AACHENJO30BS gp:hasName/gp:value ?gov_name . } SERVICE <$2> { ?fg_place fgt:P1073 \"AACHENJO30BS\" ; rdfs:label ?fg_name . FILTER(LANG(?fg_name) = \"de\") } SERVICE <$3> { ?wd_place wdt:P2503 \"AACHENJO30BS\" ; rdfs:label ?wd_name . FILTER(LANG(?wd_name) = \"en\") } }"; }
line()   { echo "SELECT (COUNT(*) AS ?count) WHERE { SERVICE <$1> { VALUES ?line { wd:Q801991 } ?line wdt:P402 ?osm_relation ; wdt:P1671 ?line_number ; rdfs:label ?line_name . FILTER(LANG(?line_name) = \"en\") } SERVICE <$2> { VALUES ?osm_rel { osmrel:1852360 } ?osm_rel osmkey:ref ?osm_ref ; osmkey:name ?osm_name . } SERVICE <$3> { ?rinf_lps a era:LinearPositioningSystem ; era:lineId ?rinf_lid . FILTER(STR(?rinf_lid) = \"655000-1\") } FILTER(STR(?osm_relation) = \"1852360\") FILTER(?osm_ref = ?line_number) FILTER(STRSTARTS(STR(?rinf_lid), REPLACE(?line_number, \" \", \"\"))) }"; }

BACKENDS="blazegraph jena oxigraph qlever"
EXECUTORS="${*:-$BACKENDS}"

for ex in $EXECUTORS; do
  for l1 in $BACKENDS; do
    for l2 in $BACKENDS; do
      for l3 in $BACKENDS; do
        for q in AuthorIdentity PlaceIdentity LineIdentity; do
          case $q in
            AuthorIdentity) body=$(author "${SVC[$l1]}" "${SVC[$l2]}" "${SVC[$l3]}");;
            PlaceIdentity)  body=$(place  "${SVC[$l1]}" "${SVC[$l2]}" "${SVC[$l3]}");;
            LineIdentity)   body=$(line   "${SVC[$l1]}" "${SVC[$l2]}" "${SVC[$l3]}");;
          esac
          out=$(curl -s -m 60 -w "\n%{time_total}" "${EP[$ex]}" \
            --data-urlencode "query=$PFX $body" \
            -H "Accept: application/sparql-results+json")
          t=$(echo "$out" | tail -1)
          c=$(echo "$out" | sed '$d' | python3 -c 'import sys,json
try:
  d=json.load(sys.stdin)
  print(d["results"]["bindings"][0]["count"]["value"])
except Exception:
  print("FAIL")')
          echo "$ex $l1-$l2-$l3 $q count=$c time_s=$t"
        done
      done
    done
  done
done
