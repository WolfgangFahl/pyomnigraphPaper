#!/usr/bin/env bash
# reproduce the railway journey planning use case query results
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/2
script_dir=$(dirname "$0")
source "$script_dir/../run_queries.sh"
run_queries <<EOF
RelationStops railway-osm
LineIdentity railway-wikidata
StationsOfLine railway-rinf
StationLocality railway-osm
EOF
