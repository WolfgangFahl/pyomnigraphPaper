## CoauthorPapers

### query
```sparql
PREFIX dblp: <https://dblp.org/rdf/schema#>
SELECT ?author ?author_name ?pub ?title ?year WHERE {
  <https://dblp.org/rec/conf/semweb/FahlHW0D22a> dblp:authoredBy ?author .
  ?author dblp:primaryCreatorName ?author_name .
  ?pub dblp:authoredBy ?author ;
       dblp:title ?title ;
       dblp:yearOfPublication ?year .
}
ORDER BY ?author_name DESC(?year)
LIMIT 10

```
[try it!](https://dblp.org/?query=PREFIX%20dblp%3A%20%3Chttps%3A//dblp.org/rdf/schema%23%3E%0ASELECT%20%3Fauthor%20%3Fauthor_name%20%3Fpub%20%3Ftitle%20%3Fyear%20WHERE%20%7B%0A%20%20%3Chttps%3A//dblp.org/rec/conf/semweb/FahlHW0D22a%3E%20dblp%3AauthoredBy%20%3Fauthor%20.%0A%20%20%3Fauthor%20dblp%3AprimaryCreatorName%20%3Fauthor_name%20.%0A%20%20%3Fpub%20dblp%3AauthoredBy%20%3Fauthor%20%3B%0A%20%20%20%20%20%20%20dblp%3Atitle%20%3Ftitle%20%3B%0A%20%20%20%20%20%20%20dblp%3AyearOfPublication%20%3Fyear%20.%0A%7D%0AORDER%20BY%20%3Fauthor_name%20DESC%28%3Fyear%29%0ALIMIT%2010%0A)
## result
| author                       | author_name       | pub                                                           | title                                                                                    |   year |
|------------------------------|-------------------|---------------------------------------------------------------|------------------------------------------------------------------------------------------|--------|
| https://dblp.org/pid/04/2871 | Andrea Westerinen | https://dblp.org/rec/conf/semweb/FahlHW0D22                   | Property cardinality analysis to extract truly tabular query results from Wikidata.      |   2022 |
| https://dblp.org/pid/04/2871 | Andrea Westerinen | https://dblp.org/rec/journals/ao/BaclawskiBBDSSS22            | Ontology Summit 2021 Communiqué: Ontology generation and harmonization.                  |   2022 |
| https://dblp.org/pid/04/2871 | Andrea Westerinen | https://dblp.org/rec/conf/semweb/FahlHW0D22a                  | Getting and hosting your own copy of Wikidata.                                           |   2022 |
| https://dblp.org/pid/04/2871 | Andrea Westerinen | https://dblp.org/rec/journals/ao/BaclawskiBBCFLS18            | Ontology Summit 2018 Communiqué: Contexts in context.                                    |   2018 |
| https://dblp.org/pid/04/2871 | Andrea Westerinen | https://dblp.org/rec/journals/ao/BaclawskiBBFSSS18            | Ontology Summit 2017 communiqué - AI, learning, reasoning and ontologies.                |   2018 |
| https://dblp.org/pid/04/2871 | Andrea Westerinen | https://dblp.org/rec/journals/ao/WesterinenT17a               | Integrating GoodRelations in a domain-specific ontology.                                 |   2017 |
| https://dblp.org/pid/04/2871 | Andrea Westerinen | https://dblp.org/rec/journals/ao/WesterinenT17                | Ontology development by domain experts (without using the "O" word).                     |   2017 |
| https://dblp.org/pid/04/2871 | Andrea Westerinen | https://dblp.org/rec/journals/ao/FritzscheGBBBSS17            | Ontology Summit 2016 Communique: Ontologies within semantic interoperability ecosystems. |   2017 |
| https://dblp.org/pid/04/2871 | Andrea Westerinen | https://dblp.org/rec/journals/ao/ObrstGBBBBHJKK0LQRSSTVVWWY14 | Semantic Web and Big Data meets Applied Ontology - The Ontology Summit 2014.             |   2014 |
| https://dblp.org/pid/04/2871 | Andrea Westerinen | https://dblp.org/rec/conf/policy/WesterinenS04                | Implementation of the CIM Policy Model Using PONDER.                                     |   2004 |
