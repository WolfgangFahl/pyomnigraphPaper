#!/usr/bin/env bash
# reproduce the scholarly use case query results
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/2
script_dir=$(dirname "$0")
source "$script_dir/../run_queries.sh"
run_queries <<EOF
AuthorPapers scholar-dblp
CoauthorPapers scholar-dblp
EventAuthorPapers scholar-wikidata
InstitutionAuthorPapers scholar-gnd
EOF
