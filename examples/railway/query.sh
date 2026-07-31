#!/usr/bin/env bash
# reproduce the railway journey planning use case query results
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/2
script_dir=$(dirname "$0")
for query_name in RelationStops
do
  sparqlquery -ep "$script_dir/endpoints.yaml" -qp "$script_dir/queries.yaml" \
    -qn $query_name -en railway-osm -f github > $query_name.md
done
