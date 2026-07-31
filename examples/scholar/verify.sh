#!/usr/bin/env bash
# verify the scholarly use case queries on all functional pyomnigraph backends
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/10
script_dir=$(dirname "$0")
# local_endpoints.yaml carries credentials - generated on the fly, gitignored
omnigraph -s all -gepy "$script_dir/local_endpoints.yaml"
for query_name in AuthorPapers CoauthorPapers EventAuthorPapers InstitutionAuthorPapers
do
  for endpoint_name in blazegraph jena oxigraph qlever
  do
    echo "== $query_name on $endpoint_name =="
    sparqlquery -ep "$script_dir/local_endpoints.yaml" -qp "$script_dir/queries.yaml" \
      -qn $query_name -en $endpoint_name -f github
  done
done
