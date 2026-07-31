#!/usr/bin/env bash
# load the scholarly use case datasets into all functional pyomnigraph backends
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/10
script_dir=$(dirname "$0")
for dataset in author_papers_dblp coauthor_papers_dblp event_author_papers_wikidata
do
  rdfdump -dc "$script_dir/datasets.yaml" -ds $dataset --dump -4o
  omnigraph -dc "$script_dir/datasets.yaml" -ds $dataset -s all --cmd upload count
done
