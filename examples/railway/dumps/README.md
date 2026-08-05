# Railway dump snapshot

Dated snapshots of the two smallest railway use case subgraphs, extracted 2026-07-31
with `rdfdump` from the endpoints declared in `../datasets.yaml`.

| dataset | file | triples |
|---------|------|---------|
| line_identity_wikidata | dump_000000.ttl | 102 |
| station_locality_osm | dump_000000.ttl | 1263 |

They are committed so that the example is reproducible without the public endpoints
being reachable, unthrottled and unchanged, and so that CI of
[pyomnigraph](https://github.com/WolfgangFahl/pyomnigraph) can run against real data -
see WolfgangFahl/pyomnigraph#52.

Both files carry the same generic name `dump_000000.ttl` in different directories,
which is what makes them the fixture for the per dataset isolation of
WolfgangFahl/pyomnigraph#40 and WolfgangFahl/pyomnigraph#44.

`load.sh` remains the generator; regenerating overwrites these files with a fresh
extraction and a new date.
