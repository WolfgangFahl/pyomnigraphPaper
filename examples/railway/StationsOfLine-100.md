## StationsOfLine

### query
```sparql
PREFIX era: <http://data.europa.eu/949/>
PREFIX wgs: <http://www.w3.org/2003/01/geo/wgs84_pos#>
SELECT ?op ?uopid ?op_name ?km ?lat ?lon WHERE {
  ?lps a era:LinearPositioningSystem ; era:lineId ?lid .
  FILTER(STR(?lid) = "655000-1")
  ?kmpost era:hasLRS ?lps .
  OPTIONAL { ?kmpost era:kilometer ?km }
  ?coord era:kmPost ?kmpost .
  ?netref era:hasLrsCoordinate ?coord .
  ?op a era:OperationalPoint ; era:netReference ?netref ;
      era:uopid ?uopid ; era:opName ?op_name .
  OPTIONAL { ?netref wgs:lat ?lat . ?netref wgs:long ?lon }
}
ORDER BY ?km ?uopid
LIMIT 1000000

```
[try it!](https://data-interop.era.europa.eu/?query=PREFIX%20era%3A%20%3Chttp%3A//data.europa.eu/949/%3E%0APREFIX%20wgs%3A%20%3Chttp%3A//www.w3.org/2003/01/geo/wgs84_pos%23%3E%0ASELECT%20%3Fop%20%3Fuopid%20%3Fop_name%20%3Fkm%20%3Flat%20%3Flon%20WHERE%20%7B%0A%20%20%3Flps%20a%20era%3ALinearPositioningSystem%20%3B%20era%3AlineId%20%3Flid%20.%0A%20%20FILTER%28STR%28%3Flid%29%20%3D%20%22655000-1%22%29%0A%20%20%3Fkmpost%20era%3AhasLRS%20%3Flps%20.%0A%20%20OPTIONAL%20%7B%20%3Fkmpost%20era%3Akilometer%20%3Fkm%20%7D%0A%20%20%3Fcoord%20era%3AkmPost%20%3Fkmpost%20.%0A%20%20%3Fnetref%20era%3AhasLrsCoordinate%20%3Fcoord%20.%0A%20%20%3Fop%20a%20era%3AOperationalPoint%20%3B%20era%3AnetReference%20%3Fnetref%20%3B%0A%20%20%20%20%20%20era%3Auopid%20%3Fuopid%20%3B%20era%3AopName%20%3Fop_name%20.%0A%20%20OPTIONAL%20%7B%20%3Fnetref%20wgs%3Alat%20%3Flat%20.%20%3Fnetref%20wgs%3Along%20%3Flon%20%7D%0A%7D%0AORDER%20BY%20%3Fkm%20%3Fuopid%0ALIMIT%201000000%0A)
## result
| op                                                    | uopid        | op_name                                       |   km |   lat |   lon |
|-------------------------------------------------------|--------------|-----------------------------------------------|------|-------|-------|
| http://data.europa.eu/949/operationalPoint/80594f60ae | FR0000001385 | Jct 640000/655000                             |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/10dce496e9 | FR0000003307 | Bordeaux-St-Jean                              |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/3228007771 | FR0000008368 | Chantier Auto-Train                           |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/42664de601 | FR0000009285 | Technicentre Aquitaine                        |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/1bac3e0954 | FR0000015308 | Accès à Technicentre Aquitaine                |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/43f1a3a07a | FR9900011972 | Dépôt                                         |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/40add398d1 | FR9900014508 | Ex Atelier                                    |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/44cc0c00ac | FR0000001638 | Bif Rac Circulaire de Bordeaux St Jean        |    1 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/25676cbd8e | FR9900011820 | Accès à Chantier Auto-Train                   |    1 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/527816fa10 | FR0000000008 | Bif 586000/655000 (Médoquine)                 |    3 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/e347f0f508 | FR0000002207 | Pessac                                        |    6 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/ec6fc0d696 | FR0000002123 | Pessac-Alouette                               |    9 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/93f772bf34 | FR0000002404 | Gazinet-Cestas                                |   13 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/84b9a91917 | FR0000005967 | Faisceau impair                               |   13 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/23c93d7d6c | FR0000006825 | ITE Km 14,5                                   |   14 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/0ccef10e50 | FR9900016210 | Accès à Site de Maintenance et Remisage LISEA |   25 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/6fe563aeb2 | FR9900016722 | Site de Maintenance et Remisage LISEA         |   25 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/4859984799 | FR0000003309 | Marcheprime                                   |   28 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/16a4ee8f5d | FR0000006561 | Faisceau Pair                                 |   38 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/41db4ee597 | FR0000009574 | Faisceau impair 3 à 13                        |   38 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/f8b27227ec | FR0000015690 | Accès à Faisceau impair 3 à 13                |   38 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/c3d4320814 | FR0000003323 | Facture-Biganos                               |   39 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/799c31e987 | FR0000015688 | Accès à Faisceau impair 3 à 13                |   39 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/9c9798ab32 | FR0000001694 | Bif 655000/657000                             |   42 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/0f6ee91ec5 | FR0000006666 | Faisceau Impair Lamothe                       |   42 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/a7efec6308 | FR0000004956 | Ychoux                                        |   75 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/75a068bc45 | FR0000009251 | Faisceau impair 3 à 13                        |   75 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/965339fdff | FR0000015259 | Accès à Faisceau impair 3 à 13                |   75 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/2a023f9ef5 | FR0000005033 | Labouheyre                                    |   88 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/df3a697208 | FR0000005902 | Faisceau pair 6 à 22                          |   88 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/5b55128df4 | FR0000010730 | Accès à Faisceau pair 6 à 22                  |   89 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/85fdf9a7e8 | FR9900005212 | ITE Km 95,6                                   |   95 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/4bb7694931 | FR9900001767 | Solférino                                     |   96 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/edd566c065 | FR0000001290 | Bif 652000/655000                             |  108 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/5bf7c6a0dc | FR0000003272 | Morcenx                                       |  108 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/bf614c5b17 | FR0000005312 | Faisceau Pair                                 |  108 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/1f7caa0266 | FR0000005722 | Faisceau Impair                               |  108 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/e57275567e | FR0000010482 | Accès à Faisceau Impair                       |  108 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/def4227e30 | FR9900003339 | Accès à Faisceau Impair                       |  108 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/e2819738f1 | FR0000000767 | Jct 652000/655000                             |  109 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/004906f666 | FR0000008589 | Manufacture Landaise Produits Chimiques       |  121 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/f444ba4b39 | FR9900003517 | Km 122,938                                    |  122 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/6c25e6498a | FR9900001222 | ITE Km 133,4                                  |  133 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/a6a4a91de2 | FR9900001508 | Laluque                                       |  133 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/89e1be9024 | FR9900003822 | Chantier Equipement                           |  133 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/1ed6ac3232 | FR0000005611 | Faisceau Impair V3 à V9                       |  134 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/476d601d7c | FR9900003332 | Accès à Faisceau Impair V3 à V9               |  134 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/6919cf20dd | FR0000005263 | Faisceau Pair                                 |  146 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/4f1a2c5602 | FR0000005910 | Faisceau voie 7                               |  146 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/00713b87e7 | FR0000001938 | Bif 655000/656000                             |  147 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/493067a776 | FR0000004964 | Dax                                           |  147 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/fa320015b6 | FR0000009844 | Accès à Faisceau Pair                         |  147 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/208aba1b96 | FR0000022881 | Faisceau Voie Equipement - Voie 25            |  147 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/46d5ea0498 | FR0000004084 | Saubusse-les-Bains                            |  161 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/c9e192d405 | FR0000004294 | St-Geours                                     |  166 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/70cd356c02 | FR0000002321 | St-Vincent-de-Tyrosse                         |  171 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/45798ddd8b | FR0000003801 | Bénesse-Maremne                               |  178 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/c894dd1ca9 | FR0000003372 | Labenne                                       |  184 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/ef43d528f4 | FR0000003657 | Ondres                                        |  187 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/2ef885b91e | FR0000002316 | Le Boucau                                     |  193 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/1b94fbab3a | FR0000007753 | Faisceau Triage                               |  195 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/31551159e4 | FR0000008399 | Faisceau Adour                                |  195 |    44 |    -1 |
| http://data.europa.eu/949/operationalPoint/c50336ca2a | FR0000004339 | Bayonne                                       |  197 |    43 |    -1 |
| http://data.europa.eu/949/operationalPoint/e9df5e5711 | FR0000005339 | Voie 6                                        |  197 |    43 |    -1 |
| http://data.europa.eu/949/operationalPoint/4405d39e36 | FR0000007513 | Faisceau Dépôt                                |  197 |    43 |    -1 |
| http://data.europa.eu/949/operationalPoint/75f36c9ae9 | FR0000008577 | Chantier GV                                   |  197 |    43 |    -1 |
| http://data.europa.eu/949/operationalPoint/464c71b8c9 | FR0000010197 | Accès à Faisceau Adour                        |  197 |    43 |    -1 |
| http://data.europa.eu/949/operationalPoint/aab67b9e6f | FR0000014362 | Accès à Chantier GV                           |  197 |    43 |    -1 |
| http://data.europa.eu/949/operationalPoint/25be662ac3 | FR0000000450 | Bif de Mousserolles                           |  199 |    43 |    -1 |
| http://data.europa.eu/949/operationalPoint/a4e4aafb6e | FR0000001259 | Bif du Rac de Marracq                         |  200 |    43 |    -1 |
| http://data.europa.eu/949/operationalPoint/5b11c9af75 | FR0000006496 | Faisceau voie 18                              |  206 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/66ca0eb6c6 | FR0000006955 | Faisceau pair 4 à 16                          |  206 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/4e1a0ade67 | FR0000007275 | Faisceau impair 3 à 7                         |  206 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/ecbf95d4b0 | FR0000002591 | Biarritz                                      |  207 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/5c26cda71e | FR0000012171 | Accès à Faisceau pair 4 à 16                  |  207 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/d0ebbe82d3 | FR0000012586 | Accès à Faisceau impair 3 à 7                 |  207 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/5766b40874 | FR0000004376 | Guéthary                                      |  214 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/905802452e | FR0000003007 | St-Jean-de-Luz-Ciboure                        |  220 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/22c870ba9c | FR0000004173 | Les Deux Jumeaux                              |  230 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/49414fd70f | FR0000005064 | Hendaye                                       |  232 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/9fa60d9595 | FR0000005789 | Faisceau HENDAYE MANUTENTION                  |  232 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/00687bce30 | FR0000008339 | EMT Sud Aquitaine UPT Hendaye                 |  232 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/7d7e5f5ffc | FR0000008768 | Faisceau HALLE                                |  232 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/dc8058e600 | FR9900013490 | Triage écartement UIC                         |  232 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/74dadcd1e8 | FR9900013491 | Chantier Débords                              |  232 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/2d475081a1 | FR9900013493 | Chantier Voyageurs                            |  232 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/3a52503173 | FR9900013494 | Tiroir Mixte                                  |  232 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/03cad13863 | FR9900013498 | Chantier Cobatrans                            |  232 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/9f325e554c | FR9900013502 | Triage écartement espagnol                    |  232 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/9756a453ef | EU00119      | Frontière FR - ES (Hendaye - Irun)            |  233 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/91f140ad66 | FR9900013009 | Accès à Triage écartement UIC                 |  233 |    43 |    -2 |
| http://data.europa.eu/949/operationalPoint/303f0f2425 | FR9900013481 | Accès à Triage écartement espagnol            |  233 |    43 |    -2 |
