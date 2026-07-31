#!/usr/bin/env bash
# reproduce the historical locations use case query results
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/2
script_dir=$(dirname "$0")
source "$script_dir/../run_queries.sh"
run_queries <<EOF2
PlaceIdentity locations-gov
PlaceHierarchy locations-gov
PlaceNames locations-gov
PersonsOfPlace locations-wikidata
EOF2
