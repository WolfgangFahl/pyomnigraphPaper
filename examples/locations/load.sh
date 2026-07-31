#!/usr/bin/env bash
# load the historical locations use case datasets into all functional pyomnigraph backends
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/10
script_dir=$(dirname "$0")
for dataset in place_identity_gov place_identity_factgrid place_names_gov place_hierarchy_gov persons_of_place_wikidata
do
  rdfdump -dc "$script_dir/datasets.yaml" -ds $dataset --dump -4o
  omnigraph -dc "$script_dir/datasets.yaml" -ds $dataset -s all --cmd upload count
done
