## PlaceHierarchy

### query
```sparql
PREFIX gp: <http://gov.genealogy.net/ontology.owl#>
PREFIX gov: <http://gov.genealogy.net/>
SELECT ?place ?parent (GROUP_CONCAT(DISTINCT ?parent_name; separator=", ") AS ?parent_names) ?begin ?end WHERE {
  VALUES ?place { gov:AACHENJO30BS }
  ?place gp:isPartOf ?membership .
  ?membership gp:ref ?parent .
  OPTIONAL { ?membership gp:timeBegin ?begin }
  OPTIONAL { ?membership gp:timeEnd ?end }
  OPTIONAL { ?parent gp:hasName/gp:value ?parent_name }
}
GROUP BY ?place ?parent ?begin ?end
ORDER BY ?begin ?end ?parent
LIMIT 1000000

```
[try it!](https://gov.genealogy.net/?query=PREFIX%20gp%3A%20%3Chttp%3A//gov.genealogy.net/ontology.owl%23%3E%0APREFIX%20gov%3A%20%3Chttp%3A//gov.genealogy.net/%3E%0ASELECT%20%3Fplace%20%3Fparent%20%28GROUP_CONCAT%28DISTINCT%20%3Fparent_name%3B%20separator%3D%22%2C%20%22%29%20AS%20%3Fparent_names%29%20%3Fbegin%20%3Fend%20WHERE%20%7B%0A%20%20VALUES%20%3Fplace%20%7B%20gov%3AAACHENJO30BS%20%7D%0A%20%20%3Fplace%20gp%3AisPartOf%20%3Fmembership%20.%0A%20%20%3Fmembership%20gp%3Aref%20%3Fparent%20.%0A%20%20OPTIONAL%20%7B%20%3Fmembership%20gp%3AtimeBegin%20%3Fbegin%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fmembership%20gp%3AtimeEnd%20%3Fend%20%7D%0A%20%20OPTIONAL%20%7B%20%3Fparent%20gp%3AhasName/gp%3Avalue%20%3Fparent_name%20%7D%0A%7D%0AGROUP%20BY%20%3Fplace%20%3Fparent%20%3Fbegin%20%3Fend%0AORDER%20BY%20%3Fbegin%20%3Fend%20%3Fparent%0ALIMIT%201000000%0A)
## result
| place                                 | parent                                  | parent_names                  |   end |   begin |
|---------------------------------------|-----------------------------------------|-------------------------------|-------|---------|
| http://gov.genealogy.net/AACHENJO30BS | http://gov.genealogy.net/object_1328957 | Aachen, Aken, Aix La Chapelle |  1972 |         |
| http://gov.genealogy.net/AACHENJO30BS | http://gov.genealogy.net/AACTTEJO30BT   | Aachen-Mitte                  |       |    1972 |
