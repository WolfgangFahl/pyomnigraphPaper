## EventAuthorPapers

### query
```sparql
# label handling per scholia author_list-of-publications.sparql:
# authors without an english label fall back to their QID instead of being dropped
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT ?author ?author_name ?pub ?title ?year WHERE {
  ?proceedings wdt:P4745 wd:Q133307039 .
  ?event_paper wdt:P1433 ?proceedings ;
               wdt:P50 ?author .
  OPTIONAL {
    ?author rdfs:label ?author_label .
    FILTER(LANG(?author_label) = "en")
  }
  BIND(COALESCE(?author_label, SUBSTR(STR(?author), 32)) AS ?author_name)
  ?pub wdt:P50 ?author ;
       wdt:P1476 ?title .
  OPTIONAL { ?pub wdt:P577 ?date . }
  BIND(YEAR(?date) AS ?year)
}
ORDER BY ?author_name DESC(?year)
LIMIT 100

```
[try it!](https://www.wikidata.org/?query=%23%20label%20handling%20per%20scholia%20author_list-of-publications.sparql%3A%0A%23%20authors%20without%20an%20english%20label%20fall%20back%20to%20their%20QID%20instead%20of%20being%20dropped%0APREFIX%20wdt%3A%20%3Chttp%3A//www.wikidata.org/prop/direct/%3E%0APREFIX%20wd%3A%20%3Chttp%3A//www.wikidata.org/entity/%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0ASELECT%20%3Fauthor%20%3Fauthor_name%20%3Fpub%20%3Ftitle%20%3Fyear%20WHERE%20%7B%0A%20%20%3Fproceedings%20wdt%3AP4745%20wd%3AQ133307039%20.%0A%20%20%3Fevent_paper%20wdt%3AP1433%20%3Fproceedings%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20wdt%3AP50%20%3Fauthor%20.%0A%20%20OPTIONAL%20%7B%0A%20%20%20%20%3Fauthor%20rdfs%3Alabel%20%3Fauthor_label%20.%0A%20%20%20%20FILTER%28LANG%28%3Fauthor_label%29%20%3D%20%22en%22%29%0A%20%20%7D%0A%20%20BIND%28COALESCE%28%3Fauthor_label%2C%20SUBSTR%28STR%28%3Fauthor%29%2C%2032%29%29%20AS%20%3Fauthor_name%29%0A%20%20%3Fpub%20wdt%3AP50%20%3Fauthor%20%3B%0A%20%20%20%20%20%20%20wdt%3AP1476%20%3Ftitle%20.%0A%20%20OPTIONAL%20%7B%20%3Fpub%20wdt%3AP577%20%3Fdate%20.%20%7D%0A%20%20BIND%28YEAR%28%3Fdate%29%20AS%20%3Fyear%29%0A%7D%0AORDER%20BY%20%3Fauthor_name%20DESC%28%3Fyear%29%0ALIMIT%20100%0A)
## result
| author                                   | author_name   | pub                                       | title                                                                                                   |   year |
|------------------------------------------|---------------|-------------------------------------------|---------------------------------------------------------------------------------------------------------|--------|
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q136488422 | DataQuest: Web Augmentation with Wikidata                                                               |   2025 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q136488422 | DataQuest: Web Augmentation with Wikidata                                                               |   2025 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q136487797 | QAWiki: A Knowledge Graph Question Answering &SPARQL Query Generation Dataset for Wikidata              |   2025 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q136487797 | QAWiki: A Knowledge Graph Question Answering &SPARQL Query Generation Dataset for Wikidata              |   2025 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q131758987 | Large Language Models, Knowledge Graphs and Search Engines: A Crossroads for Answering Users' Questions |   2025 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q131758987 | Large Language Models, Knowledge Graphs and Search Engines: A Crossroads for Answering Users' Questions |   2025 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130805436 | MillenniumDB: A Multi-modal, Multi-model Graph Database                                                 |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130805436 | MillenniumDB: A Multi-modal, Multi-model Graph Database                                                 |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130803865 | Worst-Case-Optimal Similarity Joins on Graph Databases                                                  |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130803865 | Worst-Case-Optimal Similarity Joins on Graph Databases                                                  |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130581475 | LSQ 2.0: A linked dataset of SPARQL query logs                                                          |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130581475 | LSQ 2.0: A linked dataset of SPARQL query logs                                                          |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130821011 | ERDoc: A Web Interface for Entity-Relation Modelling                                                    |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130821011 | ERDoc: A Web Interface for Entity-Relation Modelling                                                    |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130400920 | Semi-Automatic Mapping and Extraction of RDF Triples From Wikipedia Tables                              |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130400920 | Semi-Automatic Mapping and Extraction of RDF Triples From Wikipedia Tables                              |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q128426018 | The Ring: Worst-case Optimal Joins in Graph Databases using (Almost) No Extra Space                     |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q128343559 | Tackling Challenges in Implementing Large-Scale Graph Databases                                         |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q128426018 | The Ring: Worst-case Optimal Joins in Graph Databases using (Almost) No Extra Space                     |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130822812 | TelarKG: a Knowledge Graph of Chile's Constitutional Process                                            |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130822812 | TelarKG: a Knowledge Graph of Chile's Constitutional Process                                            |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130822838 | Querying Graph Databases at Scale                                                                       |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q128343559 | Tackling Challenges in Implementing Large-Scale Graph Databases                                         |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130822838 | Querying Graph Databases at Scale                                                                       |   2024 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q123581466 | Wikidata Atlas: Putting Wikidata on the Map                                                             |   2023 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130804308 | Templet: A Collaborative System for Knowledge Graph Question Answering over Wikidata                    |   2023 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130804308 | Templet: A Collaborative System for Knowledge Graph Question Answering over Wikidata                    |   2023 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130818193 | RDF Playground: An Online Tool for Learning about the Semantic Web                                      |   2023 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130818193 | RDF Playground: An Online Tool for Learning about the Semantic Web                                      |   2023 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q123581466 | Wikidata Atlas: Putting Wikidata on the Map                                                             |   2023 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q124819686 | Multilayer graphs                                                                                       |   2022 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q124819686 | Multilayer graphs                                                                                       |   2022 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q114730607 | WDBench: A Wikidata Graph Query Benchmark                                                               |   2022 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q114730607 | WDBench: A Wikidata Graph Query Benchmark                                                               |   2022 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q113209778 | Semantics and canonicalisation of SPARQL 1.1                                                            |   2022 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q113209778 | Semantics and canonicalisation of SPARQL 1.1                                                            |   2022 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q107569680 | Knowledge Graphs                                                                                        |   2022 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q107569680 | Knowledge Graphs                                                                                        |   2022 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q109640284 | Knowledge Graphs                                                                                        |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125468249 | OpenCSMap: A System for Geolocating Computer Science Publications                                       |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125468249 | OpenCSMap: A System for Geolocating Computer Science Publications                                       |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125468262 | COVIDCube: An RDF Data Cube for Exploring Among-Country COVID-19 Correlations                           |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125468262 | COVIDCube: An RDF Data Cube for Exploring Among-Country COVID-19 Correlations                           |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q126202306 | Merging Web Tables for Relation Extraction with Knowledge Graphs                                        |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q126202306 | Merging Web Tables for Relation Extraction with Knowledge Graphs                                        |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q107551815 | Question Answering over Knowledge Graphs with Neural Machine Translation and Entity Linking             |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q107551815 | Question Answering over Knowledge Graphs with Neural Machine Translation and Entity Linking             |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q128915818 | Fast Approximate Autocompletion for SPARQL Query Builders                                               |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130812493 | Worst-Case Optimal Graph Joins in Almost No Space                                                       |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q109640284 | Knowledge Graphs                                                                                        |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q128915818 | Fast Approximate Autocompletion for SPARQL Query Builders                                               |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q109673922 | Knowledge Graphs                                                                                        |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q109673922 | Knowledge Graphs                                                                                        |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130812498 | Predicting SPARQL Query Dynamics                                                                        |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130812498 | Predicting SPARQL Query Dynamics                                                                        |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q114774105 | A survey of RDF stores & SPARQL engines for querying knowledge graphs                                   |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q114774105 | A survey of RDF stores & SPARQL engines for querying knowledge graphs                                   |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130812493 | Worst-Case Optimal Graph Joins in Almost No Space                                                       |   2021 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130869196 | Laconic Image Classification: Human vs. Machine Performance                                             |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130869196 | Laconic Image Classification: Human vs. Machine Performance                                             |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q100979570 | Global Vertex Similarity for Large-Scale Knowledge Graphs                                               |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q101086629 | Extending SPARQL with Similarity Joins                                                                  |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q120870038 | Fine-Grained Entity Linking                                                                             |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q120870038 | Fine-Grained Entity Linking                                                                             |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q118816003 | Information extraction meets the Semantic Web: A survey                                                 |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q118816003 | Information extraction meets the Semantic Web: A survey                                                 |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q100979570 | Global Vertex Similarity for Large-Scale Knowledge Graphs                                               |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q100979895 | Suggesting Citations for Wikidata Claims based on Wikipedia's External References                       |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q100979895 | Suggesting Citations for Wikidata Claims based on Wikipedia's External References                       |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q101086674 | In-Database Graph Analytics with Recursive SPARQL                                                       |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q101086629 | Extending SPARQL with Similarity Joins                                                                  |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q101086674 | In-Database Graph Analytics with Recursive SPARQL                                                       |   2020 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125455976 | BTC-2019: The 2019 Billion Triple Challenge Dataset                                                     |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125455976 | BTC-2019: The 2019 Billion Triple Challenge Dataset                                                     |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125468217 | RDF Explorer: A Visual Query Builder for Semantic Web Knowledge Graphs                                  |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125468217 | RDF Explorer: A Visual Query Builder for Semantic Web Knowledge Graphs                                  |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q91771520  | Movement Analysis in Orthopedics and Trauma Surgery - Measurement Systems and Clinical Applications     |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q119856807 | RDF Explorer: A Visual SPARQL Query Builder                                                             |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q119856807 | RDF Explorer: A Visual SPARQL Query Builder                                                             |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q91771520  | Movement Analysis in Orthopedics and Trauma Surgery - Measurement Systems and Clinical Applications     |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q118954203 | A Worst-Case Optimal Join Algorithm for SPARQL                                                          |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q118954203 | A Worst-Case Optimal Join Algorithm for SPARQL                                                          |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130864480 | NIFify: Towards Better Quality Entity Linking Datasets                                                  |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130864480 | NIFify: Towards Better Quality Entity Linking Datasets                                                  |   2019 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130867431 | LDOW2017                                                                                                |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130867431 | LDOW2017                                                                                                |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125456649 | GraFa: Scalable Faceted Browsing for RDF Graphs                                                         |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q50378256  | Automatically Generating Wikipedia Info-boxes from Wikidata                                             |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q50378256  | Automatically Generating Wikipedia Info-boxes from Wikidata                                             |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130817967 | Profiling Graphs                                                                                        |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130817967 | Profiling Graphs                                                                                        |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130817969 | Modelling Dynamics in Semantic Web Knowledge Graphs with Formal Concept Analysis                        |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q50378256  | Automatically Generating Wikipedia Info-boxes from Wikidata                                             |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q130817969 | Modelling Dynamics in Semantic Web Knowledge Graphs with Formal Concept Analysis                        |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q50378256  | Automatically Generating Wikipedia Info-boxes from Wikidata                                             |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125468065 | QCan: Normalising Congruent SPARQL Queries                                                              |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q51791404  | Querying Wikimedia Images using Wikidata Facts                                                          |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125468056 | GraFa: Faceted Search & Browsing for the Wikidata Knowledge Graph                                       |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125468056 | GraFa: Faceted Search & Browsing for the Wikidata Knowledge Graph                                       |   2018 |
| http://www.wikidata.org/entity/Q51366847 | Aidan Hogan   | http://www.wikidata.org/entity/Q125468063 | Machine Translation vs. Multilingual Approaches for Entity Linking                                      |   2018 |
