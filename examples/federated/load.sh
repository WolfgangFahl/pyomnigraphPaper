#!/usr/bin/env bash
# assemble all use case dumps under unique file names and single-pass load
# the qlever index per https://github.com/WolfgangFahl/pyomnigraph/issues/40
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/24
script_dir=$(dirname "$0")
dumps_dir="$HOME/.omnigraph/rdf_dumps"
target="$dumps_dir/paper_all"
mkdir -p "$target"
rm -f "$target"/*.ttl
for dataset in \
  author_identity_wikidata author_papers_dblp coauthor_papers_dblp \
  event_author_papers_wikidata institution_author_papers_gnd \
  place_identity_gov place_identity_factgrid place_names_gov \
  place_hierarchy_gov persons_of_place_wikidata \
  relation_stops_osm line_identity_wikidata line_relation_osm \
  stations_of_line_rinf station_locality_osm
do
  for f in "$dumps_dir/$dataset"/*.ttl; do
    [ -e "$f" ] || continue
    cp "$f" "$target/${dataset}_$(basename "$f")"
  done
done
omnigraph -dc "$script_dir/datasets.yaml" -ds paper_all -s qlever --cmd upload count
