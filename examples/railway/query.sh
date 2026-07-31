#!/usr/bin/env bash
# reproduce the railway journey planning use case query results
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/2
script_dir=$(dirname "$0")
sparqlquery -ep "$script_dir/endpoints.yaml" -qp "$script_dir/queries.yaml" \
  -qn RelationStops -en railway-osm -f github
