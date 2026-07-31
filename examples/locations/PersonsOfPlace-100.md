## PersonsOfPlace

### query
```sparql
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT ?person ?person_name ?relation WHERE {
  ?place wdt:P2503 "AACHENJO30BS" .
  VALUES ?relation { wdt:P19 wdt:P20 wdt:P937 }
  ?person ?relation ?place .
  OPTIONAL {
    ?person rdfs:label ?person_label .
    FILTER(LANG(?person_label) = "en")
  }
  BIND(COALESCE(?person_label, SUBSTR(STR(?person), 32)) AS ?person_name)
}
ORDER BY ?person_name ?relation
LIMIT 100

```
[try it!](https://www.wikidata.org/?query=PREFIX%20wdt%3A%20%3Chttp%3A//www.wikidata.org/prop/direct/%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0ASELECT%20%3Fperson%20%3Fperson_name%20%3Frelation%20WHERE%20%7B%0A%20%20%3Fplace%20wdt%3AP2503%20%22AACHENJO30BS%22%20.%0A%20%20VALUES%20%3Frelation%20%7B%20wdt%3AP19%20wdt%3AP20%20wdt%3AP937%20%7D%0A%20%20%3Fperson%20%3Frelation%20%3Fplace%20.%0A%20%20OPTIONAL%20%7B%0A%20%20%20%20%3Fperson%20rdfs%3Alabel%20%3Fperson_label%20.%0A%20%20%20%20FILTER%28LANG%28%3Fperson_label%29%20%3D%20%22en%22%29%0A%20%20%7D%0A%20%20BIND%28COALESCE%28%3Fperson_label%2C%20SUBSTR%28STR%28%3Fperson%29%2C%2032%29%29%20AS%20%3Fperson_name%29%0A%7D%0AORDER%20BY%20%3Fperson_name%20%3Frelation%0ALIMIT%20100%0A)
## result
| person                                    | person_name                           | relation                                 |
|-------------------------------------------|---------------------------------------|------------------------------------------|
| http://www.wikidata.org/entity/Q136469703 | Abraham Holländer                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q96213012  | Abraham von Streithagen               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q66553236  | Achim Barrenstein                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q340387    | Achim Großmann                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q34674586  | Achim Haag                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q340405    | Achim John                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15429765  | Achim Kampker                         | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q340408    | Achim Kaufmann                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q340435    | Achim Mohné                           | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q348798    | Adam Bock                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q348798    | Adam Bock                             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q348937    | Adam C. Oellers                       | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q349228    | Adam Eberle                           | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q349378    | Adam Franz Friedrich Leydel           | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q87850     | Adam Kuckhoff                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q115421024 | Adam Pangh                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94622430  | Adam Würth                            | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q63121051  | Adam z Mąkoszyna Mąkowski             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q115851325 | Adélaïde Ruyters                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q31136891  | Adele Cockerill                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q31136891  | Adele Cockerill                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q113793160 | Adolf Bartz                           | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q364766    | Adolf Ernst Leopold von Gizycki       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q29110292  | Adolf Greifenstein                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q95276929  | Adolf Krebs                           | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q363647    | Adolf Retz                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q56339529  | Adolf Sarter                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q364098    | Adolf Schieffer                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112400292 | Adolf Schützler                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q116276264 | Adolf von Heusinger                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q84346     | Adolf Wagner                          | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q364477    | Adolf Wallichs                        | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q364477    | Adolf Wallichs                        | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q106820    | Adolf Wüllner                         | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q214461    | Adolph Sutro                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q97762     | Adolph von Hansemann                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q367736    | Adriaan van Hoensbroeck               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q115820723 | Aegidius Brauers                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q115820723 | Aegidius Brauers                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q380633    | Aegidius Johann Peter Joseph Scheuren | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q380633    | Aegidius Johann Peter Joseph Scheuren | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q272326    | Æthelwulf                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q131730432 | Agniet van Ceulen                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q50212777  | Agostino Franciotti                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q95293929  | Ahmet Özdemir                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q51668842  | Aich, Arnd von                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q4684011   | Aida el Ayoubi                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q56751088  | Aida Nigl                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q405436    | Aiman Mazyek                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2637581   | Albert Baur                           | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112383397 | Albert Damblon                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q19834249  | Albert Gier                           | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q110984028 | Albert Hallmann                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q139859393 | Albert Hartog                         | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q55681736  | Albert Heesch                         | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2638137   | Albert Heusch                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2638137   | Albert Heusch                         | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2638170   | Albert Huyskens                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2638170   | Albert Huyskens                       | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1777457   | Albert Maas                           | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q55675547  | Albert Mirgeler                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q61015499  | Albert Paparo                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q131612952 | Albert Pümpel                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2638598   | Albert Pütz                           | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q17122142  | Albert Schiffers                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q17122142  | Albert Schiffers                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q61977754  | Albert Schneiders                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q61977754  | Albert Schneiders                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2638813   | Albert Servais                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2638813   | Albert Servais                        | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1759313   | Albert Thimus                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2638969   | Albert Vossen                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113821747 | Albrecht Bausch                       | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q2639890   | Albrecht Mann                         | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2639890   | Albrecht Mann                         | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q2639894   | Albrecht Maurer                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1806908   | Albrecht Schrick                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2639957   | Albrecht Schrick                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1806908   | Albrecht Schrick                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2639957   | Albrecht Schrick                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q19501892  | Aldo R. Boccaccini                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q9145716   | Aleksander Mańkowski                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130779947 | Alexander Barth                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q97182     | Alexander Classen                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q97182     | Alexander Classen                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q97182     | Alexander Classen                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q27919377  | Alexander Desclabissac                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q106813263 | Alexander Dückers                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q102933    | Alexander Frenz                       | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q130785812 | Alexander Hennings                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q30353411  | Alexander Hessler                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95238179  | Alexander Lindner                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1417514   | Alexander Markschies                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q136509363 | Alexander Meisolle                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94782351  | Alexander Naumann                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q28053761  | Alexander Reumont                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q28053761  | Alexander Reumont                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1485261   | Alexander Scheuer                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q108814976 | Alexander Schippan                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q59525742  | Alexander Steininger                  | http://www.wikidata.org/prop/direct/P20  |
