#!/usr/bin/env bash
# load the railway use case datasets into all functional pyomnigraph backends
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/10
script_dir=$(dirname "$0")
for dataset in relation_stops_osm line_identity_wikidata stations_of_line_rinf station_locality_osm
do
  rdfdump -dc "$script_dir/datasets.yaml" -ds $dataset --dump -4o
  omnigraph -dc "$script_dir/datasets.yaml" -ds $dataset -s all --cmd upload count
done
