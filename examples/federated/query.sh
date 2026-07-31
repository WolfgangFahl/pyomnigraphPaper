#!/usr/bin/env bash
# reproduce the three-leg federated query results
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/24
script_dir=$(dirname "$0")
source "$script_dir/../run_queries.sh"
# federated-rinf also executes LineIdentity but intermittently answers 504
run_queries <<EOF
AuthorIdentity federated-dblp
PlaceIdentity federated-wikidata
LineIdentity federated-osm
EOF
