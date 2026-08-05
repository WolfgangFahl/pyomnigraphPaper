# Content policy for AI agents

This repository holds a **scientific paper** targeting CEUR-WS.

## Hard rules

0. **NEVER build the paper locally.** No `scripts/tex2pdf`, no `pdflatex`,
   no `latexmk` — the PDF is built by CI on push (see the
   `build: auto-update PDF [skip ci]` commits). Do not chmod or run any
   build script.

1. AI assistance is limited to **spelling/grammar**, **formatting/build
   tooling** (LaTeX, Makefile, bibliography formatting, repository chores) and
   the agentic work that is explicitly part of the method described in the
   README.
2. Everything outside that scope — **scientific content, arguments, prose, the
   abstract, the paper title** — is authored by the human co-authors. Agent
   contributions that are part of the method are marked per the provenance
   notation of the README.
3. Paper sections in `main.tex` are intentionally left **EMPTY** until the
   authors write them. Do not fill them with generated text.
4. Only **verified** bibliographic metadata belongs in `references.bib`.
   Never fabricate references, DOIs, page numbers or claims.
5. The **Declaration on Generative AI** (required by CEUR-WS,
   https://ceur-ws.org/GenAI/Policy.html) must accurately reflect how AI was
   used and is finalized by the authors before submission.

## Allowed agent tasks

- Maintain the CEURART scaffold, build system and `.gitignore`.
- Fix LaTeX/build errors and formatting.
- Format author-provided bibliography entries.
- Resolve and fill **verified** author ORCIDs/affiliations (from Wikidata/ORCID).
