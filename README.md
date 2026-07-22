# pyomnigraphPaper

CEUR-WS paper on [pyomnigraph](https://github.com/WolfgangFahl/pyomnigraph) —
*"Unified Python interface for multiple graph databases"* — for the
**6th Wikidata Workshop 2026** (co-located with ISWC 2026, Bari, Italy;
Novel Work track, published in CEUR-WS).

Follow-up to *"Getting and hosting your own copy of Wikidata"*
([CEUR-WS Vol-3262, paper9](https://ceur-ws.org/Vol-3262/paper9.pdf), 2022).

## Idea

Load subgraphs of **Wikidata**, **FactGrid** and **GOV** — and potentially
further RDF sources — into several triple stores (Jena, Blazegraph, Oxigraph,
QLever) via pyomnigraph, then measure how **federated queries over different
combinations of endpoints** perform. A showcase for pyomnigraph as a way to
facilitate reproducible federated-query benchmarks.

## Venue

- Site: https://wikidataworkshop.github.io/2026/
- CFP: https://easychair.org/cfp/wikidata26
- Submission: https://easychair.org/conferences/?conf=wikidata26
- Type: Resource paper, 8–12 pages, CEURART single-column
- Deadline: **24–31 July 2026** (to be confirmed — sources conflict)

## Build

Local build (needs a LaTeX distribution with `latexmk`):

```bash
make        # build main.pdf
make clean  # remove build artifacts
```

## Overleaf

Import this repository into Overleaf via **New Project → Import from GitHub**
(`WolfgangFahl/pyomnigraphPaper`). The main document is `main.tex`; the
`ceurart.cls` class file is included so it compiles as-is.

## Authors

Same set as the 2022 predecessor paper: Wolfgang Fahl, Tim Holzheim,
Christoph Lange, Andrea Westerinen (participation pending), Stefan Decker.

## Content policy

See [AGENTS.md](AGENTS.md). AI assistance is limited to spelling/grammar and
build tooling; AI does **not** write scientific content, arguments or prose.
All paper sections are authored by the co-authors.

## License

Paper text: CC BY 4.0. `ceurart.cls` is distributed under the LPPL
(see `Copyright.lppl.txt`).
