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
LIMIT 1000

```
[try it!](https://www.wikidata.org/?query=PREFIX%20wdt%3A%20%3Chttp%3A//www.wikidata.org/prop/direct/%3E%0APREFIX%20rdfs%3A%20%3Chttp%3A//www.w3.org/2000/01/rdf-schema%23%3E%0ASELECT%20%3Fperson%20%3Fperson_name%20%3Frelation%20WHERE%20%7B%0A%20%20%3Fplace%20wdt%3AP2503%20%22AACHENJO30BS%22%20.%0A%20%20VALUES%20%3Frelation%20%7B%20wdt%3AP19%20wdt%3AP20%20wdt%3AP937%20%7D%0A%20%20%3Fperson%20%3Frelation%20%3Fplace%20.%0A%20%20OPTIONAL%20%7B%0A%20%20%20%20%3Fperson%20rdfs%3Alabel%20%3Fperson_label%20.%0A%20%20%20%20FILTER%28LANG%28%3Fperson_label%29%20%3D%20%22en%22%29%0A%20%20%7D%0A%20%20BIND%28COALESCE%28%3Fperson_label%2C%20SUBSTR%28STR%28%3Fperson%29%2C%2032%29%29%20AS%20%3Fperson_name%29%0A%7D%0AORDER%20BY%20%3Fperson_name%20%3Frelation%0ALIMIT%201000%0A)
## result
| person                                    | person_name                                      | relation                                 |
|-------------------------------------------|--------------------------------------------------|------------------------------------------|
| http://www.wikidata.org/entity/Q136469703 | Abraham Holländer                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q96213012  | Abraham von Streithagen                          | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q66553236  | Achim Barrenstein                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q340387    | Achim Großmann                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q34674586  | Achim Haag                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q340405    | Achim John                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15429765  | Achim Kampker                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q340408    | Achim Kaufmann                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q340435    | Achim Mohné                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q348798    | Adam Bock                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q348798    | Adam Bock                                        | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q348937    | Adam C. Oellers                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q349228    | Adam Eberle                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q349378    | Adam Franz Friedrich Leydel                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q87850     | Adam Kuckhoff                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q115421024 | Adam Pangh                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94622430  | Adam Würth                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q63121051  | Adam z Mąkoszyna Mąkowski                        | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q115851325 | Adélaïde Ruyters                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q31136891  | Adele Cockerill                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q31136891  | Adele Cockerill                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q113793160 | Adolf Bartz                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q364766    | Adolf Ernst Leopold von Gizycki                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q29110292  | Adolf Greifenstein                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q95276929  | Adolf Krebs                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q363647    | Adolf Retz                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q56339529  | Adolf Sarter                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q364098    | Adolf Schieffer                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112400292 | Adolf Schützler                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q116276264 | Adolf von Heusinger                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q84346     | Adolf Wagner                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q364477    | Adolf Wallichs                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q364477    | Adolf Wallichs                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q106820    | Adolf Wüllner                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q214461    | Adolph Sutro                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q97762     | Adolph von Hansemann                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q367736    | Adriaan van Hoensbroeck                          | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q115820723 | Aegidius Brauers                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q115820723 | Aegidius Brauers                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q380633    | Aegidius Johann Peter Joseph Scheuren            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q380633    | Aegidius Johann Peter Joseph Scheuren            | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q272326    | Æthelwulf                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q131730432 | Agniet van Ceulen                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q50212777  | Agostino Franciotti                              | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q95293929  | Ahmet Özdemir                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q51668842  | Aich, Arnd von                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q4684011   | Aida el Ayoubi                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q56751088  | Aida Nigl                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q405436    | Aiman Mazyek                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2637581   | Albert Baur                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112383397 | Albert Damblon                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q19834249  | Albert Gier                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q110984028 | Albert Hallmann                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q139859393 | Albert Hartog                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q55681736  | Albert Heesch                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2638137   | Albert Heusch                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2638137   | Albert Heusch                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2638170   | Albert Huyskens                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2638170   | Albert Huyskens                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1777457   | Albert Maas                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q55675547  | Albert Mirgeler                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q61015499  | Albert Paparo                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q131612952 | Albert Pümpel                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2638598   | Albert Pütz                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q17122142  | Albert Schiffers                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q17122142  | Albert Schiffers                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q61977754  | Albert Schneiders                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q61977754  | Albert Schneiders                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2638813   | Albert Servais                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2638813   | Albert Servais                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1759313   | Albert Thimus                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2638969   | Albert Vossen                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113821747 | Albrecht Bausch                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q2639890   | Albrecht Mann                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2639890   | Albrecht Mann                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q2639894   | Albrecht Maurer                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1806908   | Albrecht Schrick                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2639957   | Albrecht Schrick                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1806908   | Albrecht Schrick                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2639957   | Albrecht Schrick                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q19501892  | Aldo R. Boccaccini                               | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q9145716   | Aleksander Mańkowski                             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130779947 | Alexander Barth                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q97182     | Alexander Classen                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q97182     | Alexander Classen                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q97182     | Alexander Classen                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q27919377  | Alexander Desclabissac                           | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q106813263 | Alexander Dückers                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q102933    | Alexander Frenz                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q130785812 | Alexander Hennings                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q30353411  | Alexander Hessler                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95238179  | Alexander Lindner                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1417514   | Alexander Markschies                             | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q136509363 | Alexander Meisolle                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94782351  | Alexander Naumann                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q28053761  | Alexander Reumont                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q28053761  | Alexander Reumont                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1485261   | Alexander Scheuer                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q108814976 | Alexander Schippan                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q59525742  | Alexander Steininger                             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2643135   | Alexander Theodor von Oliva                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2643135   | Alexander Theodor von Oliva                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q4720533   | Alexander von Meilenwald                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q60835793  | Alexander Weckbecker                             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q19258887  | Alexandra Rigos                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q130828608 | Alexandra Sakaki                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2834157   | Alexandre Charles Joseph Ghislain d'Aubremé      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2834459   | Alexis Bidal                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2644348   | Alfons Fritz                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2644348   | Alfons Fritz                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1422499   | Alfons Klausener                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q125025029 | Alfons M. I. Baecker                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2644706   | Alfred Berroth                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q2644770   | Alfred Brüggemann                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1495109   | Alfred Buntru                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2644859   | Alfred Dickersbach                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q76285     | Alfred Druschel                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q124995912 | Alfred Ebeling                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q4722748   | Alfred Gottschalk                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q93253642  | Alfred Hillengass                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q55683193  | Alfred Hummel                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q24574364  | Alfred Jäger                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q106593477 | Alfred Kaufmann                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q118143029 | Alfred Mayer                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q2645493   | Alfred Meusel                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q67036     | Alfred Rethel                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q67036     | Alfred Rethel                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q15856600  | Alfred Reumont                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q108919522 | Alfred Rössler                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q112404070 | Alfred Schleip                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55153891  | Alfred Seyler                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55894638  | Alfred Suermondt                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105655701 | Alfred Süsskind                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2646010   | Alfred Teichmann                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q88584     | Alfred von Croÿ                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q76150     | Alfred von Reumont                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15856601  | Alfred von Reumont                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q76150     | Alfred von Reumont                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q116819325 | Algirdas Milleris                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q90650594  | Aline Koch                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q28532406  | Allen C. Hirshfeld                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q22692017  | Alois Gerards                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q85529     | Alois Riedler                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1663909   | Alo Koll                                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1663909   | Alo Koll                                         | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2650634   | Aloys Goeddertz                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q19372922  | Aloys Hennes                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2650640   | Aloys Hubert Michael Venth                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2650640   | Aloys Hubert Michael Venth                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2650646   | Aloys Krieg                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q215428    | Alphons Bellesheim                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q215428    | Alphons Bellesheim                               | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q114840    | Alphonse Dubois                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q136094362 | Alphonse Taïée                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q20051475  | Alphonse Vigoureux                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94892323  | Alwin Schleicher                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q31141714  | Amalia Cockerill                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q31141714  | Amalia Cockerill                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q113736492 | Ambrosius Stock                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q482225    | Amélie Sandmann                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15391931  | Anastasius von Segraedt                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15391931  | Anastasius von Segraedt                          | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q102434518 | Andrea Offergeld                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q495828    | Andreas Artsruni                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q496126    | Andreas Beyer                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q94879197  | Andreas Curtius                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q18221835  | Andreas Ernst                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55849853  | Andreas Fey                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55849853  | Andreas Fey                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q64655187  | Andreas Filippi                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q21973806  | Andreas Frick                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q497349    | Andreas Frölich                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q15783295  | Andreas F. Staffel                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55235562  | Andreas Greiner                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94942481  | Andreas Grotkamp                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q497839    | Andreas Hansen                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q497839    | Andreas Hansen                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2652542   | Andreas Heyme                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q90895869  | Andreas Hoecker                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q30107381  | Andreas Kablitz                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q18957601  | Andreas Knack                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q499046    | Andreas Kruse                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q499384    | Andreas Magdanz                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q499640    | Andreas Monheim                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q15031377  | Andreas Oetting                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15694769  | Andreas Pangritz                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q4755595   | Andreas Pavel                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q91012834  | Andreas Petrik                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q500059    | Andreas Platthaus                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q47482785  | Andreas Ploeger                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130775157 | Andreas Riedel                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q501098    | Andreas Voss                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130798381 | Andrea Vera Katharina Mikolajczak                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q516861    | André Bardow                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q2012416   | André Charles de Membrede                        | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q60663855  | André Esser                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q523439    | André Winkhold                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130814399 | Angela Karstensen                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q532911    | Angela Maas                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112525315 | Angela Reinders                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q99975451  | Angela Spelsberg                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q47160818  | Angele Breithaupt                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q539434    | Angilbert                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95650451  | Anita Bell                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q104760664 | Anıl Aydın                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q19960028  | Anja Karmanski                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q131696299 | Anke Kaletsch                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95207392  | Anna Braun-Sittarz                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95207392  | Anna Braun-Sittarz                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q131409437 | Anna Collett                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130814436 | Anna Dovern                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q560458    | Anna Freeman                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q61847276  | Anna Joëlle Ruff                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113751677 | Anna Kohlwey                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q96778568  | Anna Maria Hungs                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q96778568  | Anna Maria Hungs                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q74614298  | Anna Mennicken                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q122803238 | Anna Palm                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95189204  | Anna Schenk                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q104210266 | Anna Tobia Aron                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q17294161  | Anna von Reuschenberg                            | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2653166   | Anne Begenat-Neuschäfer                          | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q565040    | Anne Bolik                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q63699083  | Anne Christine Bischops                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113296960 | Anne Gold                                        | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q55002092  | Anne Hamacher-Brady                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95193044  | Anneliese Albrecht                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130798158 | Anne Nijs                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95184971  | Annette Bosetti                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113717861 | Annette Meuthrath                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q131023549 | Annette Sauermann                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95190231  | Annette Sievers                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q110354634 | Anne Vivien                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q567270    | Anno Schreier                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113824119 | Anno Zilkens                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q27625865  | Anselm Hartmann                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q21166955  | Antje Dorn                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1946519   | Antoine Touseul                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q17352679  | Anton Anno                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15616699  | Anton Fest                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q28912509  | Anton Hopf                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q17024532  | Antonios Antoniadis                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q606558    | Antonius Aemilius                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q18583752  | Anton Karl Boltzmann                             | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q591332    | Anton Kurze                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q591332    | Anton Kurze                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q592105    | Anton Neuß                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q592930    | Anton Pomp                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q592930    | Anton Pomp                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q592930    | Anton Pomp                                       | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q125025022 | Anton Rumpen                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94841183  | Anton Schmitz                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q595365    | Anton Wendling                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q619333    | Apollonia Radermecher                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q619333    | Apollonia Radermecher                            | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q46053774  | Archi W. Bechlenberg                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130569430 | Armand-Frédéric Frank                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q4793095   | Armen Haghnazarian                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q27791972  | Armin Boehm                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q687697    | Armin Heinen                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q78205     | Armin Laschet                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q78205     | Armin Laschet                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q688241    | Armin Schütz                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130771482 | Arndt Josef Kelleter                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q109470892 | Arnd Vomberg                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q694139    | Arno Behr                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q33126996  | Arno Gego                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q694336    | Arno Jansen                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q695049    | Arnold Deutz                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q695049    | Arnold Deutz                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q695104    | Arnold Edmund Peltzer                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q695104    | Arnold Edmund Peltzer                            | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q895467    | Arnold Förster                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q895467    | Arnold Förster                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q21055693  | Arnold Franz von Tornaco                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q61616     | Arnold Gehlen                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q695650    | Arnold Königs                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q94838764  | Arnold Lefils                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15784022  | Arnold Lentzen                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15445387  | Arnold Nesselrath                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q696026    | Arnold Robens                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q77078     | Arnold Sommerfeld                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q94815022  | Arno Stockem                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q708758    | Arthur Brocke                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q76618     | Arthur Eichengrün                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q709623    | Arthur Guttmann                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q318554    | Arthur Kampf                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94914821  | Arthur Mueller                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q18009062  | Arthur Murch                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q28498748  | Arthur Slauck                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q121757217 | Arthur Zincke                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q714388    | Artur Greive                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q60021680  | Artur M. Schweidtmann                            | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q94960615  | Arved Ludwig Wieler                              | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q47465027  | Astrid Ayling                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q92586598  | Astrid Henn                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q123986666 | Astrid Mania                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q84759266  | Astrid Séville                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q750915    | Astrid Vollenbruch                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2868971   | Athanase-Gustave-Charles-Marie de Lévis-Mirepoix | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112341177 | Augusta Schroeder                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q55673969  | August Blaesing                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q106548081 | August Classens                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q106548081 | August Classens                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q55682882  | August Clemens Schreiber                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q104449951 | Auguste Ehrensperger                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q52156206  | Auguste Pelzer                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q28938569  | Auguste von Sartorius                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q22692062  | August Götte                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q126267    | August Heinrich Sieberg                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q761870    | August Hirsch                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q762232    | August Kampf                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q762708    | August Leonhard Bernoulli                        | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q16787381  | August Merk                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q71590     | August Michaelis                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q13489191  | August Peters                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q71035     | August Ritter                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q763680    | August Röchling                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2656415   | August Sträter                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q764966    | August von Brandis                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q764966    | August von Brandis                               | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q765021    | August von Fürth                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q108007    | August von Kaven                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q108007    | August von Kaven                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q19834959  | August Witte                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q19834959  | August Witte                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q5745279   | Axel Fritz                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q124217685 | Axel Gärtner                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q792175    | Axel Hausmann                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q792175    | Axel Hausmann                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q15784854  | Axel Heidenreich                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q792196    | Axel Hinrich Murken                              | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q792289    | Axel Nawrocki                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q116739498 | Aylin Ravanyar                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q96452537  | Balthasar Fiebus                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q96452551  | Balthasar Fiebus, der Ältere                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q96452551  | Balthasar Fiebus, der Ältere                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2881599   | Balthazar Houwaert                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q807518    | Barbara Krause                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q40748947  | Barbara Leisgen                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130816102 | Barbara Lesemann                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q115815136 | Barbara Schmitz                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1770075   | Barend Ubbo Felderhof                            | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1770075   | Barend Ubbo Felderhof                            | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q809294    | Barthold Suermondt                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q55874587  | Bartholomaeus Fibus                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q88247395  | Beate Krickel                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130829729 | Beate Weyer                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q58048573  | Beauty Somuah                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q813792    | Beda Savels                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130815810 | Belinda Petri                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q712214    | Benedict of Aniane                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q107041974 | Benedikt Quarch                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q100348786 | Benjamin Fadavian                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q136547599 | Benjamin Holländer                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q818007    | Benno Werth                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q818007    | Benno Werth                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95216947  | Ben Scharf                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q102174442 | Bernd-Anton Merschen                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q68596041  | Bernd Kremer                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q824465    | Berndmark Heukemes                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q823908    | Bernd Monheim                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q27664901  | Bernd Nellessen                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q117040106 | Bernd P. Pietschmann                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q117040106 | Bernd P. Pietschmann                             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q104905007 | Bernd Radtke                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94889056  | Bernhard Böcking                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q55897741  | Bernhard Breuer                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q824958    | Bernhard Emunds                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q824998    | Bernhard Fell                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q824998    | Bernhard Fell                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q16739541  | Bernhard F. Rohe                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q19778931  | Bernhard Katzy                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q825610    | Bernhard Maximilian Lersch                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q825610    | Bernhard Maximilian Lersch                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q11687778  | Bernhard Oebeke                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q825720    | Bernhard Paul Friedrich Hugo von Scheibler       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q15441007  | Bernhard Poll                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q19964719  | Bernhard Ross                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q825821    | Bernhard Rumpe                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q825836    | Bernhard Salomon                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q825839    | Bernhard Sann                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q825866    | Bernhard Schlag                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q825986    | Bernhard Steinauer                               | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q113759171 | Bernhard Stenmans                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95280784  | Bernhard Sylvester Schmitz                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q826110    | Bernhard Walke                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q19835396  | Bernhard Witte                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q109718733 | Bernie Conrads                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105361448 | Berta Lehmann                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q827560    | Berta Schmidt-Eller                              | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q105463365 | Bertha Kaufmann                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q827366    | Bert Heller                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q827785    | Berthe Ostyn                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130784343 | Berthold Ekkehard Heinrich Jens Seitz            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q828094    | Berthold Wolff                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q94762513  | Betty Schwabe                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113559421 | Bierkapitän                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130799727 | Birgit Dickmeis                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q865207    | Birgit Drießen-Hölscher                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q865219    | Birgit Erwin                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q27912101  | Birgit Mock                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q99943097  | Birgit Palzkill                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q91011020  | Birgitta E Michels                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q63343509  | Björn Gottstein                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2662449   | Björn Jansen                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q131691836 | Björn Paape                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q13101752  | Blaise Illig                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q13101752  | Blaise Illig                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q115957458 | Bob Jongen                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q69894     | Bodo von Borries                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q69894     | Bodo von Borries                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q133327979 | Bogdan Cichocki                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q65031127  | Bogdan Snoch                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q892500    | Bonifacius Colyn                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q892500    | Bonifacius Colyn                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q892500    | Bonifacius Colyn                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q892518    | Bonifatius Stirnberg                             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130780979 | Boris Alexander Kolvenbach                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112544277 | Boris Moiseevich Smekhov                         | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q893809    | Boris von Brauchitsch                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q916227    | Brigitte Eckstein                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q916227    | Brigitte Eckstein                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q27900165  | Brigitte Gilles                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q920782    | Britta Nestler                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2663738   | Britta Schinzel                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q993175    | Bruno Dechamps                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q27763931  | Bruno Lerho                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q27763931  | Bruno Lerho                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q993867    | Bruno Thomauske                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1015010   | Burghard Rieger                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q55675595  | Burkhardt Röper                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q60988817  | Can Ergen                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q59691348  | Carina Benstoem                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q114555475 | Carina Zacharias                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55842624  | Carl Arbenz                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1036790   | Carl Arthur Pastor                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1037085   | Carl Billotte                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1037085   | Carl Billotte                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1037124   | Carl Borromäus Cünzer                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1037186   | Carl Burger                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q94937272  | Carl Dassen                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q21033990  | Carl Eduard Dahmen                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q21033990  | Carl Eduard Dahmen                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1037679   | Carl Esser                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1037679   | Carl Esser                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q73414055  | Carl Eugen Westendorp                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q73414055  | Carl Eugen Westendorp                            | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q20242775  | Carl Fincken                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q73982584  | Carl Foerster                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q73982584  | Carl Foerster                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1731006   | Carl Franz Meyer                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1731006   | Carl Franz Meyer                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1731006   | Carl Franz Meyer                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1038268   | Carl Gerard Dubusc                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1038268   | Carl Gerard Dubusc                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q19502075  | Carl Gustav Talbot                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q19502075  | Carl Gustav Talbot                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1041686   | Carlhanns Damm                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15452248  | Carl Haussmann                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q16508967  | Carl Hellmut Fritzsche                           | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1038928   | Carl Hundhausen                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95223353  | Carl Joseph Creutz                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q978556    | Carl Klinkhammer                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q107165123 | Carl Kröger                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1036552   | Carl-Ludwig Siemons                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q118143017 | Carl Mayer                                       | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q2087621   | Carlo Evertz                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112551380 | Carl Peipers                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1040202   | Carl Rhoen                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q110226524 | Carl Richard                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1040296   | Carl Rothe                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q111030345 | Carl Schleipen                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1040497   | Carl Schneiders                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1040497   | Carl Schneiders                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1040497   | Carl Schneiders                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q5474546   | Carl Schott                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1040592   | Carl Sieben                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1040592   | Carl Sieben                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1040592   | Carl Sieben                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q21461533  | Carl Thiel                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q90431     | Carl von Halfern                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q18628094  | Carl von Kolb                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q102340    | Carl von Lemcke                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1041390   | Carl von Nellessen                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94862288  | Carl Wieselsberger                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q121056602 | Carl Wilhelm Heinrich Bartels                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q5752385   | Carmelo Pastor                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130793833 | Caroline Koegler                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15793634  | Carolin Genreith                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130829586 | Carolin Hostert                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q104497723 | Carolin Kamrath                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130814095 | Carolin Maria Landwehrs                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q115818276 | Carolus Oebel                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q115818276 | Carolus Oebel                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q17521907  | Carsten Bolm                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q113736051 | Carsten Brall                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94899311  | Casimir Ubaghs                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1047885   | Caspar Giani                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q111349463 | Caspar Lennartz                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q396418    | Caspar Scheuren                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1048049   | Caspar Thywissen                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q26202499  | Caspar von Reth                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q26202499  | Caspar von Reth                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q96240493  | Caspar von Schwartzenberg                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q96240493  | Caspar von Schwartzenberg                        | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q6509695   | Cathrin Lange                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q47150585  | Celina Rongen                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130780527 | Cem Mengi                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q42539813  | César Saerchinger                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q3044      | Charlemagne                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q115206386 | Charles de Pitteurs                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2958181   | Charles Loetitia de Ladoucette                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55894642  | Charles Suermondt                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q955938    | Charles Theodore, Prince of Salm                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q112401391 | Charlotte Fehn                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1067354   | Charlotte Temming                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1078839   | Christian August Vogler                          | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q130784224 | Christian Bardischewski                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1079062   | Christian Breuer                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q113827989 | Christiane Bausch                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130783707 | Christian Ebbertz                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q23059260  | Christiane Benner                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1082653   | Christiane Dénes                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q110830194 | Christiane Erlemann                              | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q4138967   | Christian Friedrich Johann Girschner             | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q55679239  | Christian Frings                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1079831   | Christian Geyer                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q12305983  | Christian Günther zu Stolberg-Stolberg           | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1080109   | Christian Hagemann                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q96624617  | Christian Hammers                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q45775494  | Christian Held                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q88353796  | Christian Herren                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15905900  | Christian Hopmann                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q56977837  | Christian Lampei                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q5109934   | Christian Mohr                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q115776643 | Christian Patron                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q89620452  | Christian Pfaff                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1081483   | Christian Quix                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1081577   | Christian Rieck                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q98636495  | Christian Schiffer                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1082010   | Christian Stetter                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1082010   | Christian Stetter                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q102332510 | Christian Stinner                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1082087   | Christian Thiel                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q115815860 | Christianus Steffens                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15794267  | Christian van den Canel                          | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q96778569  | Christie Nellessen                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q96778569  | Christie Nellessen                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130761496 | Christina Bartsch                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q63831751  | Christina Kellenter                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q14797321  | Christina Keuter                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1083426   | Christine Becker                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1083760   | Christine Roll                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1083834   | Christine Vogeley                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130798720 | Christine Weiskopf                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15228478  | Christof Berns                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113780131 | Christof Dahmen                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95242938  | Christof Schalhorn                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94831802  | Christof Spuler                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q112554428 | Christoph Beuer von der Binnen                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95322605  | Christoph Breuer                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1086946   | Christopher Schlick                              | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1086946   | Christopher Schlick                              | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1087073   | Christopher Zimmer                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q37943335  | Christoph Heemann                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q131864128 | Christoph Kelzenberg                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q87483695  | Christoph Leuchter                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q43902811  | Christoph Marks                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q99176263  | Christoph Mueller                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q17494102  | Christoph Nienhaus                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q133332779 | Christoph Schulte                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1085833   | Christoph Schweigert                             | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q28790030  | Christoph Schweizer                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1085927   | Christoph Stender                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1086001   | Christoph Titz                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1086077   | Christoph Wenzel                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1572141   | Claes Fleming                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q76701     | Clara Fey                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q76701     | Clara Fey                                        | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95191721  | Clara Rittershaus                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q18333128  | Claudia Bickmann                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q106510397 | Claudia Cormann                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1097439   | Claudia Felser                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q87774     | Claudia Hürtgen                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2978419   | Claudia Niessen                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q42420584  | Claudius Niessen                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1098436   | Claus Beneking                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q5129500   | Claus Breger                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q95661     | Claus Helmut Drese                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105410    | Claus Müller                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q105410    | Claus Müller                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1098815   | Claus Scholl                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q94852566  | Claus Springsfeld                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94891421  | Clemens August Hecker                            | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q18222211  | Clemens August Heckmann                          | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q125023625 | Clemens August Riffart                           | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1099881   | Clemens August Schröder                          | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1099902   | Clemens Bewer                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q28728069  | Clemens Lothar Ferdinand von Fürstenberg         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55678904  | Clemens von Orsbach                              | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1100167   | Clemens Zintzen                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1103424   | Cluse Krings                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94820984  | Cola Beaucamp                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q5149347   | Colquhoun Grant                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q94905105  | Conrad Albert Ahn                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q98966955  | Conrad Lüdger                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q15430552  | Conradus Viëtor                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q102276262 | Cordula Heß                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1132392   | Cordula Kablitz-Post                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55752954  | Cornelia Ruhe                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1133901   | Cornelius Peter Bock                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1134012   | Cornelius von Guaita                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1134012   | Cornelius von Guaita                             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q62607828  | Cortis                                           | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q65040150  | CrispyRob                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q75023000  | Curt Cremer                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1145141   | Curt Hoff                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q19146156  | Curt Theodor Fischer                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q111136    | Dagmar Hirtz                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q81426299  | Dagmar Preising                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1157316   | Dagmar Röhrlich                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q131779604 | Daisy Koettgen                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q5210460   | Dale Griffin                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q56061960  | Dana Bergrath                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q54892284  | Danger Dan                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q41467633  | Daniela Dreymueller                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1159909   | Daniel Aminati                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q104439569 | Daniel Arthur Fischer                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130798458 | Daniela Schartmann-Unrath                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q5216577   | Daniel Blagrave                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q140673082 | Daniel Bronk                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1698967   | Daniel Call                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q64043969  | Daniel Freund                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q58092921  | Daniel Goffart                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1161082   | Daniel Heinrich Delius                           | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95349765  | Daniel Kunle                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q90189385  | Daniel Overhoff                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q74187233  | Daniel Pontzen                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q39701912  | Daniel Richter                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q102352597 | Daniel Robertz                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105735296 | Darius Heid                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105067237 | David Anschütz                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1173826   | David Breuer                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q41151641  | David E Koser                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q88228873  | David Fleck                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q160430    | David Garrett                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q75878     | David Hansemann                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q5234809   | David Hausmann                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q47008314  | David König                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q107634463 | David Nelting                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130780099 | David Rohde                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q39185870  | David Schug                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130790752 | David Stoppelmann                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q139997319 | David Voss                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q437094    | Delphine de Girardin                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q19912428  | Denis Barth                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15805059  | Dennis Lang                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q16956547  | Detlef Fetchenhauer                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q453419    | Diana Karenne                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q108623615 | Diana Osterhage                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130799709 | Diana Wevers                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q58977192  | Dia Soliman                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1221290   | Dierk Raabe                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1221689   | Dieter Bimberg                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q2676359   | Dieter Bischoff                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55972857  | Dieter Breuer                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q99541718  | Dieter Call                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q17299146  | Dieter D. Genske                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q122859    | Dieter Enders                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q112473118 | Dieter Geulen                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q63171151  | Dieter Gutzen                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q133263170 | Dieter Heller                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1222115   | Dieter Henning                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q139695857 | Dieter Lenzen                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95309414  | Dieter Martin                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1222612   | Dieter Philipp                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112496482 | Dieter P. J. Wynands                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q102174507 | Dieter Pontzen                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1222689   | Dieter Richter                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1222766   | Dieter Schinzel                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1222772   | Dieter Schleip                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1222799   | Dieter Schornstein                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1222799   | Dieter Schornstein                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130762347 | Dieter Stiewi                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105400    | Dieter Vollhardt                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1222973   | Dieter Wandschneider                             | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q106620    | Dieter Weichert                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1223029   | Dieter Woll                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95220703  | Dieter Zeppenfeld                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1223434   | Dietmar Johnen                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1223444   | Dietmar Katzy                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q113841746 | Dietmar Kottmann                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q17321234  | Dietmar Krug                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1223486   | Dietmar Momm                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1223572   | Dietmar Strehl                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55685209  | Dietrich Bischoff                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q5275183   | Dietrich Hecke                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1223841   | Dietrich III. von Katlenburg                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1223857   | Dietrich Joseph Speckhewer                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1223857   | Dietrich Joseph Speckhewer                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1001280   | Dietrich Lohrmann                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q3027529   | Dietrich Podlech                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1224040   | Dietrich Speckhewer                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1224040   | Dietrich Speckhewer                              | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1224090   | Dietrich Welte                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1224090   | Dietrich Welte                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1227730   | Dirk Abel                                        | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q15429039  | Dirk Bieresborn                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q5280799   | Dirk Braunleder                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q218109    | Dirk Lehmann                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q26421249  | Dirk Maassen                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1227970   | Dirk Meissner                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1228033   | Dirk Reinartz                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1228032   | Dirk Reißer                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1228074   | Dirk Schulte                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q29937613  | Dirk Vallée                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q124146    | Dominik Gross                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q99386192  | Dominik Rupp                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q37792279  | Doris Mischka                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105455184 | Doris Osser                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1245315   | Doris Schachner                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q113715140 | Dorothea Cüppers                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q16477     | Dorothea Wagner                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q61709262  | Dorothea Zech                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113778289 | Dorothee Boss                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q113797818 | Dorothee Brunner                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q44105421  | Dorothee Föllmer                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113797058 | Dorothee Mack                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1250226   | Dorothee Oberlinger                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1250226   | Dorothee Oberlinger                              | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q135412827 | E. Baarts-Haanstra                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1279609   | Eberhard von Mylius                              | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1281766   | Eckhard Sauren                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q74697     | Edgar André                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1284046   | Edgar Meyer                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q15807277  | Edgar Perseke                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1284155   | Edgar Schultze                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1284155   | Edgar Schultze                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q3047498   | Edgar Theißen                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q7337      | Edith Frank-Holländer                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q2529979   | Edmond Huyn van Amstenrade                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1286794   | Edmund Ruppert                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1286834   | Edmund Sinn                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1286834   | Edmund Sinn                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1286912   | Edmund Tersluisen                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q113663132 | Edmund von Coudenhove                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q3579912   | Edouard Knecht                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1287988   | Eduard Beaucamp                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q56248951  | Eduard Cramer                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1288366   | Eduard Friedrich Hugo Heusch                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1288782   | Eduard Honigmann                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q104748    | Eduard Houdremont                                | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q19502181  | Eduard Johann Nikolaus Istas                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1289161   | Eduard Linse                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1289161   | Eduard Linse                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1289540   | Eduard Philipp Arnold                            | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1290015   | Eduard Spoelgen                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55683579  | Eduard Stahlhuth                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q94870828  | Eduard Thyssen                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q19667379  | Edward Beyer                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q33011974  | Edwin Suermondt                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q33011974  | Edwin Suermondt                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q131546689 | Egbert Kaiser                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q96452529  | Egidius Bleyenheuft                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q96452529  | Egidius Bleyenheuft                              | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q74497     | Egidius Braun                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q96213010  | Egidius Valenzyn                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q15883800  | Egon Schmitz-Cliever                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15883800  | Egon Schmitz-Cliever                             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q15883800  | Egon Schmitz-Cliever                             | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q58217361  | Egon Sulger                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q58217361  | Egon Sulger                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95219604  | Eike-Christian Kersten                           | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1322985   | Ekkehard Wendler                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1325746   | Eleanor von Erdberg                              | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q43196317  | Elena Bongartz                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q128007302 | Elena Harsányi                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q110097975 | Elena Papavasileiou                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q88592007  | Elena von Wirth                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1328097   | Eleonore Trefftz                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q69417930  | Éliane Gauthier                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q125857844 | Elisabeth Dessauer                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1329862   | Elisabeth Ebeling                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q6483428   | Elisabeth Hoppe                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95207381  | Elisabeth Laux                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1296885   | Elisabeth Pitz-Savelsberg                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1330507   | Elisabeth von Witzleben                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130831921 | Elisa Pasch                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q87749935  | Elke Heinrichs                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q881019    | Elmar Hillebrand                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q21815420  | Elsa Fenske                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q18822578  | Elsbeth Gropp                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q139859416 | Elsbeth Holländer                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q104701044 | Else Adele Heiliger                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112565680 | Else Driessen                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113737038 | Else Hocks                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q113737038 | Else Hocks                                       | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q41302515  | Else Kalshoven-Biermans                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95197491  | Elvire Reumont                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95197491  | Elvire Reumont                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q3052210   | Emil Ciocoiu                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q95816     | Emil Fahrenkamp                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q21552119  | Emil Friedrich Zurhelle                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94766352  | Emil Fromm                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q126597767 | Emil Herman                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q51576355  | Emilie Pohlmann                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q113791650 | Emil Lingens                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1336462   | Emil Lochner                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q28814896  | Emil Rothschütz                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95762158  | Emil Schmitz                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1337977   | Emma Bachem                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q106469898 | Emma Hartoch                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1338634   | Emmerich Stürtz                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94897181  | Emmerich Stürtz                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1338753   | Emmi Welter                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q104409816 | Emmy Brach                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q99478031  | Engelbert Mainzer                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1341958   | Engelbert Rehling                                | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q20733550  | Enno Jürgens                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1350773   | Erhard Cramer                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q60827305  | Erhard Mueller                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95733472  | Erica Thomsen                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q15808333  | Eric Bodden                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q98712569  | Erich Bentrup                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q28308793  | Erich Carl                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113383874 | Erich Döhler                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q26233977  | Erich Fechner                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1352466   | Erich Hufendiek                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105654295 | Erich Kaufmann                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55674342  | Erich Köhrer                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1352703   | Erich Kühn                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q112369430 | Erich Läufer                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95244379  | Erich Lennertz                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1352760   | Erich Lingens                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1352760   | Erich Lingens                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1352763   | Erich Lochner                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1352846   | Erich Meuthen                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q51285506  | Erich Müller-Kraus                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q23062238  | Erich Offermann                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15440166  | Erich Orthmann                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q15449008  | Erich Pfisterer                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q55843304  | Erich Prölss                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15437732  | Erich Schild                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1318541   | Erich Stephany                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1318541   | Erich Stephany                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q103216    | Erich Trefftz                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q115866233 | Erich W. Abraham                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q16185792  | Erich Walter                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q5388131   | Erich Woitke                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q28356562  | Erich Zurhelle                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q28356562  | Erich Zurhelle                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q23060239  | Eric Lingens                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113808424 | Eric Lucas                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q103528946 | Eric Marks                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q975210    | Eric Reissner                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q111203    | Eric Vaessen                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q61628618  | Erika Ábrahám                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1354338   | Erika Dienstl                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1354474   | Erika Richter                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q47460020  | Erika Vonhoff                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1354060   | Erik Pasche                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q15808407  | Erik Wudtke                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105654588 | Erna Loewenstein-Frohwein                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q44915173  | Erna Peters-Schueler                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q44915173  | Erna Peters-Schueler                             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q95239724  | Ernst Alexander                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q109855681 | Ernst Bominghaus                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q56511898  | Ernst Bornemann                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1357722   | Ernst Bücken                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q131617529 | Ernst Burghartz                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q66666541  | Ernst Essers                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q66666541  | Ernst Essers                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1168889   | Ernst Fidel Fürntratt-Kloep                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q10274124  | Ernst Freiherr von Bibra                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q109339    | Ernst Friedrich Dürre                            | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1358426   | Ernst Günther Grimme                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1358426   | Ernst Günther Grimme                             | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1358426   | Ernst Günther Grimme                             | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95316950  | Ernst Haeger                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q61746599  | Ernst Höhler                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q3057352   | Ernst Kaether                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1358930   | Ernst Kasper                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q138644310 | Ernst Konrad Zehme                               | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q17388527  | Ernst Kötter                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q17388527  | Ernst Kötter                                     | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95292078  | Ernst Lübbe                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q20182451  | Ernst Mack                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q20155443  | Ernst Nellessen                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1359625   | Ernst Niermann                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q77084361  | Ernst Robert Groeneveld                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1360085   | Ernst Schmachtenberg                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105655554 | Ernst Seelmann                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q131869964 | Ernst Stege                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q113762484 | Ernst Uhe                                        | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q4492087   | Ernst Vorstoffel                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q51640702  | Ernst Wetzenstein                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15446678  | Ernst Wilhelm Nusselein                          | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q88240251  | Ertan Mayatepek                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1233002   | Erwin Classen                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1362940   | Erwin Gatz                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q125242124 | Erwin Lynen                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q5837219   | Erwin Patzke                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q113384032 | Erwin Schanzer                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q136673934 | E. Spillner                                      | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q130828713 | Esther Borowski                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1373506   | Eugène Klinckenberg                              | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q971729    | Eugen Flegler                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q115830246 | Eugenius De Morze                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q18620935  | Eugen Kampf                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q90574     | Eugen Piwowarsky                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q90574     | Eugen Piwowarsky                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1372920   | Eugen Theodor Thissen                            | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1372983   | Eugen Zander                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q104249391 | Eva Berg                                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q47502217  | Eva C. Schulte                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q18889296  | Eva Janssens                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1379062   | Eva-Maria Jakobs                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q124857913 | Eva-Maria Pape                                   | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1379420   | Eva Poll                                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q52444250  | Evarist Adam Weber                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95201627  | Eva Roman                                        | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q104682145 | Eva von Pannewitz                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q98582504  | Ewald Dittmar                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q29315508  | Ewald Fettweis                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q120400793 | Ewald Mies                                       | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q120400793 | Ewald Mies                                       | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q90184551  | Fabian Isensee                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q104854971 | Fabian Kiessling                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q38643187  | Fabian M. Commichau                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1390303   | Fabian Schläper                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q797817    | Fabian Thylmann                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q17402915  | Falko Steinbach                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95665424  | Fanny Schorn                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q92337643  | Farina Hodiamont                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95197901  | Felicia H. Sternfeld                             | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q60837809  | Felix Ackens                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q95271278  | Felix Hultsch                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1403579   | Felix Knubben                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q16509117  | Felix Kreusch                                    | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q95285060  | Felix Kriegsheim                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1403596   | Felix Kuetgens                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1403596   | Felix Kuetgens                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q28823367  | Felix Meyer                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55856916  | Felix Monheim                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55856916  | Felix Monheim                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1403754   | Felix Raabe                                      | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1403780   | Felix Rötscher                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1403807   | Felix Schwabach                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q20182705  | Felix Seulen                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1403895   | Felix Wesener                                    | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q14907240  | Felizitas Leitner                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1405141   | Ferdinand Breunung                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q94910519  | Ferdinand Catoire de Bioncourt                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1405275   | Ferdinand Franz Maria Bouget                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55857708  | Ferdinand Freiherr von Neufforge                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1693430   | Ferdinand Jansen                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1405491   | Ferdinand Kinon                                  | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130932044 | Ferdinand Oertel                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q2157079   | Ferdinand Robert Cremer                          | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q105411    | Ferdinand Schleicher                             | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q94926259  | Ferdinand Wiebecke                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q16007279  | Fetschin Colyn                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q15857589  | Fetschin Colyn                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q95218598  | F. Haupt                                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112550501 | F. J. Schroiff                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q55889488  | Florentina Theodora Freifrau von Dörnberg        | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q30166320  | Florian Braun                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q61157707  | Florian Erger                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q90327675  | Florian Griese                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95312533  | Florian Kühnel                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q130787555 | Florian Schmidtlein                              | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1435458   | Folkert Rickers                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1435461   | Folkert Wilken                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q84572089  | Francisco Bernardo de Quirós y Valdés            | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q130309889 | Franciscus Fabricius                             | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q16861402  | Francis M. Schirp                                | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1419869   | François Blondel                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1419869   | François Blondel                                 | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q22695571  | François Joseph Pfeiffer                         | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95315701  | Frank Brehm                                      | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1443073   | Frank Chastenier                                 | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q112354583 | Frank Gronwald                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q108526023 | Frank Hartmann                                   | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1442793   | Frank-Lothar Kroll                               | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q95269844  | Frank Obermeier                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1442822   | Frank-Rutger Hausmann                            | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1444127   | Frank Schmitz                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1430644   | Frank Schneider                                  | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1444216   | Frank Sommer                                     | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q1396718   | Frank Wallitzek                                  | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q15437824  | Frans Haacken                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q19884159  | Frans Hermesdorf                                 | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q42768233  | Frans Lahaye                                     | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q42899837  | Frans M. Olbrechts                               | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q95249957  | Frantz Vossen                                    | http://www.wikidata.org/prop/direct/P19  |
| http://www.wikidata.org/entity/Q94868815  | Franz Baeumker                                   | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1446442   | Franz Carl Hasslacher                            | http://www.wikidata.org/prop/direct/P20  |
| http://www.wikidata.org/entity/Q1446442   | Franz Carl Hasslacher                            | http://www.wikidata.org/prop/direct/P937 |
| http://www.wikidata.org/entity/Q1446440   | Franz Carl Nellessen                             | http://www.wikidata.org/prop/direct/P19  |
