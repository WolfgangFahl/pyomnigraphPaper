## EventAuthorPapers

### query
```sparql
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT ?author ?author_name ?pub ?title ?year WHERE {
  ?proceedings wdt:P4745 wd:Q116982157 .
  ?event_paper wdt:P1433 ?proceedings ;
               wdt:P50 ?author .
  ?author rdfs:label ?author_name .
  FILTER(LANG(?author_name) = "en")
  ?pub wdt:P50 ?author ;
       wdt:P1476 ?title .
  OPTIONAL { ?pub wdt:P577 ?date . }
  BIND(YEAR(?date) AS ?year)
}
ORDER BY ?author_name DESC(?year)
LIMIT 10

```
[try it!](https://www.wikidata.org/?query=PREFIX%20wdt%3A%20%3Chttp%3A//www.wikidata.org/prop/direct/%3E%0APREFIX%20wd%3A%20%3Chttp%3A//www.wikidata.org/entity/%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0ASELECT%20%3Fauthor%20%3Fauthor_name%20%3Fpub%20%3Ftitle%20%3Fyear%20WHERE%20%7B%0A%20%20%3Fproceedings%20wdt%3AP4745%20wd%3AQ116982157%20.%0A%20%20%3Fevent_paper%20wdt%3AP1433%20%3Fproceedings%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20wdt%3AP50%20%3Fauthor%20.%0A%20%20%3Fauthor%20rdfs%3Alabel%20%3Fauthor_name%20.%0A%20%20FILTER%28LANG%28%3Fauthor_name%29%20%3D%20%22en%22%29%0A%20%20%3Fpub%20wdt%3AP50%20%3Fauthor%20%3B%0A%20%20%20%20%20%20%20wdt%3AP1476%20%3Ftitle%20.%0A%20%20OPTIONAL%20%7B%20%3Fpub%20wdt%3AP577%20%3Fdate%20.%20%7D%0A%20%20BIND%28YEAR%28%3Fdate%29%20AS%20%3Fyear%29%0A%7D%0AORDER%20BY%20%3Fauthor_name%20DESC%28%3Fyear%29%0ALIMIT%2010%0A)
## result
| author                                   | author_name   | pub                                       | title                                                                                          |   year |
|------------------------------------------|---------------|-------------------------------------------|------------------------------------------------------------------------------------------------|--------|
| http://www.wikidata.org/entity/Q54860587 | Axel Polleres | http://www.wikidata.org/entity/Q137242275 | Formalizing Repairs for Wikidata Constraint Violations: A Taxonomy and Empirical Analysis      |   2025 |
| http://www.wikidata.org/entity/Q54860587 | Axel Polleres | http://www.wikidata.org/entity/Q136399497 | Qualitative Coding in the Age of AI: An Ontology-Driven Approach                               |   2025 |
| http://www.wikidata.org/entity/Q54860587 | Axel Polleres | http://www.wikidata.org/entity/Q134694589 | OWL(strict): A Constrained OWL Fragment to Avoid Ambiguities for Knowledge Graph Practitioners |   2025 |
| http://www.wikidata.org/entity/Q54860587 | Axel Polleres | http://www.wikidata.org/entity/Q129832351 | PhyQus: Automatic Unit Conversions for Wikidata Physical Quantities                            |   2024 |
| http://www.wikidata.org/entity/Q54860587 | Axel Polleres | http://www.wikidata.org/entity/Q126392488 | SMW Cloud: A Corpus of Domain-Specific Knowledge Graphs from Semantic MediaWikis               |   2024 |
| http://www.wikidata.org/entity/Q54860587 | Axel Polleres | http://www.wikidata.org/entity/Q130361570 | Scholarly Wikidata: Population and Exploration of Conference Data in Wikidata using LLMs       |   2024 |
| http://www.wikidata.org/entity/Q54860587 | Axel Polleres | http://www.wikidata.org/entity/Q125468472 | Crawley: A Tool for Web Platform Discovery                                                     |   2024 |
| http://www.wikidata.org/entity/Q54860587 | Axel Polleres | http://www.wikidata.org/entity/Q130406400 | Shapes in Graph Data: Theory and Implementation (Dagstuhl Seminar 24102)                       |   2024 |
| http://www.wikidata.org/entity/Q54860587 | Axel Polleres | http://www.wikidata.org/entity/Q130711539 | Formalizing and validating Wikidata’s property constraints using SHACL and SPARQL              |   2024 |
| http://www.wikidata.org/entity/Q54860587 | Axel Polleres | http://www.wikidata.org/entity/Q134462185 | Assessing the Reliability and Scientific Rigor of References in Wikidata                       |   2024 |
