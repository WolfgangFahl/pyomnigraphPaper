pyomnigraphPaper — CEUR-WS Paper

**Status:** Preprint — intended for submission to the 6th Wikidata Workshop 2026 (CEUR-WS, Novel track). Not yet peer-reviewed.

Follow-up to "Getting and hosting your own copy of Wikidata"
(CEUR-WS Vol-3262, 2022). Loads subgraphs of Wikidata, FactGrid and GOV into
multiple triple stores via [pyomnigraph](https://github.com/WolfgangFahl/pyomnigraph)
and benchmarks federated queries across endpoint combinations. Targets the
6th Wikidata Workshop 2026 (CEUR-WS). This repository contains the paper
source and the reproducible examples the paper reports on.

- [View PDF in this repo](main.pdf) (built by CI)
- [View PDF in browser](https://github.com/WolfgangFahl/pyomnigraphPaper/raw/main/main.pdf)

## Examples

The three use cases of the paper — scholarly (papers and authors),
historical locations, and railway journey planning — are reproducible from
the [examples/](examples/) directory. Each use case folder declares its
subgraph datasets, endpoints and named parameterized queries in YAML and
reruns everything with three scripts:

```bash
bash examples/railway/query.sh
```

See [examples/README.md](examples/README.md) for the folder layout, the
`load.sh` / `query.sh` / `verify.sh` workflow and the result file
conventions.

## Build

```bash
scripts/tex2pdf --build
```

The PDF is also rebuilt automatically on every push to `main` via GitHub
Actions (`.github/workflows/build.yml`).

## Template

Uses the official CEUR-WS `ceurart` 1-column class. Do not use the
`twocolumn` / `hf` document-class options for CEUR-WS submissions.

## AI content policy

See [AGENTS.md](AGENTS.md): AI assistance is limited to spelling/grammar and
formatting/build tooling. AI is **not** used to generate scientific content,
arguments or prose.
