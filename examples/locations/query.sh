#!/usr/bin/env bash
# reproduce the historical locations use case query results
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/2
script_dir=$(dirname "$0")
while read -r query_name endpoint_name
do
  sparqlquery -ep "$script_dir/endpoints.yaml" -qp "$script_dir/queries.yaml" \
    -qn $query_name -en $endpoint_name -f github > $query_name.md
done <<EOF
PlaceIdentity locations-gov
EOF
