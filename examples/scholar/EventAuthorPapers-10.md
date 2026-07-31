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
LIMIT 10

```
[try it!](https://www.wikidata.org/?query=%23%20label%20handling%20per%20scholia%20author_list-of-publications.sparql%3A%0A%23%20authors%20without%20an%20english%20label%20fall%20back%20to%20their%20QID%20instead%20of%20being%20dropped%0APREFIX%20wdt%3A%20%3Chttp%3A//www.wikidata.org/prop/direct/%3E%0APREFIX%20wd%3A%20%3Chttp%3A//www.wikidata.org/entity/%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0ASELECT%20%3Fauthor%20%3Fauthor_name%20%3Fpub%20%3Ftitle%20%3Fyear%20WHERE%20%7B%0A%20%20%3Fproceedings%20wdt%3AP4745%20wd%3AQ133307039%20.%0A%20%20%3Fevent_paper%20wdt%3AP1433%20%3Fproceedings%20%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20wdt%3AP50%20%3Fauthor%20.%0A%20%20OPTIONAL%20%7B%0A%20%20%20%20%3Fauthor%20rdfs%3Alabel%20%3Fauthor_label%20.%0A%20%20%20%20FILTER%28LANG%28%3Fauthor_label%29%20%3D%20%22en%22%29%0A%20%20%7D%0A%20%20BIND%28COALESCE%28%3Fauthor_label%2C%20SUBSTR%28STR%28%3Fauthor%29%2C%2032%29%29%20AS%20%3Fauthor_name%29%0A%20%20%3Fpub%20wdt%3AP50%20%3Fauthor%20%3B%0A%20%20%20%20%20%20%20wdt%3AP1476%20%3Ftitle%20.%0A%20%20OPTIONAL%20%7B%20%3Fpub%20wdt%3AP577%20%3Fdate%20.%20%7D%0A%20%20BIND%28YEAR%28%3Fdate%29%20AS%20%3Fyear%29%0A%7D%0AORDER%20BY%20%3Fauthor_name%20DESC%28%3Fyear%29%0ALIMIT%2010%0A)
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
