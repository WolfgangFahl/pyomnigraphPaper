#!/bin/zsh
# LLL diagonal per https://github.com/WolfgangFahl/pyomnigraphPaper/issues/24
# all three SERVICE legs of each query on the same local backend
# executor = local backend from the generated local_endpoints.yaml,
# SERVICE legs = the backend's container-internal URL on the docker bridge
# needs: omnigraph containers up, datasets loaded per the use case load.sh
# scripts plus load.sh of this directory, local_endpoints.yaml generated
# via omnigraph -s all -gepy local_endpoints.yaml
# --no-default keeps pyLodStorage built-in endpoint names (e.g. blazegraph)
# from shadowing the local entries
set -u
script_dir=$(dirname "$0")
cd "$script_dir"

ip() {
  docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$1"
}

typeset -A SVC
SVC[blazegraph]="http://$(ip blazegraph-omnigraph):8080/bigdata/namespace/kb/sparql"
SVC[jena]="http://$(ip jena-omnigraph):3030/ds/sparql"
SVC[oxigraph]="http://$(ip oxigraph-omnigraph):7878/query"
SVC[qlever]="http://$(ip qlever-omnigraph):7019/api/sparql"

for be in blazegraph jena oxigraph qlever; do
  s=$SVC[$be]
  for q in AuthorIdentity PlaceIdentity LineIdentity; do
    case $q in
      AuthorIdentity) params="dblp_service=$s,gnd_service=$s,wikidata_service=$s";;
      PlaceIdentity)  params="gov_service=$s,factgrid_service=$s,wikidata_service=$s";;
      LineIdentity)   params="wikidata_service=$s,osm_service=$s,rinf_service=$s";;
    esac
    t0=$(python3 -c 'import time; print(time.time())')
    out=$(sparqlquery --no-default -ep local_endpoints.yaml -qp queries.yaml \
      -qn ${q}Count -en $be -f csv --params "$params" 2>&1)
    t1=$(python3 -c 'import time; print(time.time())')
    dt=$(python3 -c "print(f'{$t1 - $t0:.2f}')")
    count=$(echo "$out" | tr -d '\r"' | awk 'NR>1 && length($0) {print; exit}')
    case "$count" in
      ''|*[!0-9]*) echo "$be $q FAIL ${dt}s: $(echo $out | tr '\n' ' ' | head -c 250)";;
      *) echo "$be $q count=$count ${dt}s";;
    esac
  done
done
