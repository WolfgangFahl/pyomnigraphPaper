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
LIMIT 10

```
[try it!](https://data-interop.era.europa.eu/?query=PREFIX%20era%3A%20%3Chttp%3A//data.europa.eu/949/%3E%0APREFIX%20wgs%3A%20%3Chttp%3A//www.w3.org/2003/01/geo/wgs84_pos%23%3E%0ASELECT%20%3Fop%20%3Fuopid%20%3Fop_name%20%3Fkm%20%3Flat%20%3Flon%20WHERE%20%7B%0A%20%20%3Flps%20a%20era%3ALinearPositioningSystem%20%3B%20era%3AlineId%20%3Flid%20.%0A%20%20FILTER%28STR%28%3Flid%29%20%3D%20%22655000-1%22%29%0A%20%20%3Fkmpost%20era%3AhasLRS%20%3Flps%20.%0A%20%20OPTIONAL%20%7B%20%3Fkmpost%20era%3Akilometer%20%3Fkm%20%7D%0A%20%20%3Fcoord%20era%3AkmPost%20%3Fkmpost%20.%0A%20%20%3Fnetref%20era%3AhasLrsCoordinate%20%3Fcoord%20.%0A%20%20%3Fop%20a%20era%3AOperationalPoint%20%3B%20era%3AnetReference%20%3Fnetref%20%3B%0A%20%20%20%20%20%20era%3Auopid%20%3Fuopid%20%3B%20era%3AopName%20%3Fop_name%20.%0A%20%20OPTIONAL%20%7B%20%3Fnetref%20wgs%3Alat%20%3Flat%20.%20%3Fnetref%20wgs%3Along%20%3Flon%20%7D%0A%7D%0AORDER%20BY%20%3Fkm%20%3Fuopid%0ALIMIT%2010%0A)
## result
| op                                                    | uopid        | op_name                                |   km |   lat |   lon |
|-------------------------------------------------------|--------------|----------------------------------------|------|-------|-------|
| http://data.europa.eu/949/operationalPoint/80594f60ae | FR0000001385 | Jct 640000/655000                      |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/10dce496e9 | FR0000003307 | Bordeaux-St-Jean                       |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/3228007771 | FR0000008368 | Chantier Auto-Train                    |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/42664de601 | FR0000009285 | Technicentre Aquitaine                 |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/1bac3e0954 | FR0000015308 | Accès à Technicentre Aquitaine         |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/43f1a3a07a | FR9900011972 | Dépôt                                  |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/40add398d1 | FR9900014508 | Ex Atelier                             |    0 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/44cc0c00ac | FR0000001638 | Bif Rac Circulaire de Bordeaux St Jean |    1 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/25676cbd8e | FR9900011820 | Accès à Chantier Auto-Train            |    1 |    45 |    -1 |
| http://data.europa.eu/949/operationalPoint/527816fa10 | FR0000000008 | Bif 586000/655000 (Médoquine)          |    3 |    45 |    -1 |
