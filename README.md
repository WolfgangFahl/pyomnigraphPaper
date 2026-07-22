pyomnigraphPaper — CEUR-WS Paper (skeleton)

Follow-up to "Getting and hosting your own copy of Wikidata"
(CEUR-WS Vol-3262, 2022). Loads subgraphs of Wikidata, FactGrid and GOV into
multiple triple stores via [pyomnigraph](https://github.com/WolfgangFahl/pyomnigraph)
and benchmarks federated queries across endpoint combinations. Targets the
6th Wikidata Workshop 2026 (CEUR-WS). This repository currently contains only
the build infrastructure and an **empty** paper skeleton — no scientific content.

- [View PDF in this repo](main.pdf) (built by CI once available)
- [View PDF in browser](https://github.com/WolfgangFahl/pyomnigraphPaper/raw/main/main.pdf)

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
