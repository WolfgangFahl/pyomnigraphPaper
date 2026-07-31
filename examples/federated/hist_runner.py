#!/usr/bin/env python3
"""issue 28: run federated Histogram companions and PersonsOfPlaceFederated
LLL per local backend and time-boxed RRR probes; plain requests, hard timeout"""
import json
import subprocess
import sys
import time

import requests
import yaml

QP = sys.argv[1] if len(sys.argv) > 1 else "queries.yaml"
MODE = sys.argv[2] if len(sys.argv) > 2 else "all"  # lll | rrr | all
TIMEBOX = 120

def ip(container):
    return subprocess.check_output(
        ["docker", "inspect", "-f",
         "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}", container],
        text=True).strip()

with open(QP) as f:
    queries = yaml.safe_load(f)

LOCAL_EP = {
    "blazegraph": "http://localhost:9898/bigdata/namespace/kb/sparql",
    "jena": "http://localhost:3030/ds/sparql",
    "oxigraph": "http://localhost:7878/query",
    "qlever": "http://localhost:7019/api/sparql",
}
LOCAL_SVC = {
    "blazegraph": f"http://{ip('blazegraph-omnigraph')}:8080/bigdata/namespace/kb/sparql",
    "jena": f"http://{ip('jena-omnigraph')}:3030/ds/sparql",
    "oxigraph": f"http://{ip('oxigraph-omnigraph')}:7878/query",
    "qlever": f"http://{ip('qlever-omnigraph')}:7019/api/sparql",
}
RRR_EXECUTOR = {
    "AuthorIdentityHistogram": "https://qlever.dev/api/dblp",
    "PlaceIdentityHistogram": "https://qlever.dev/api/wikidata",
    "LineIdentityHistogram": "https://qlever.dev/api/osm-planet",
    "PersonsOfPlaceFederatedCount": "https://qlever.dev/api/wikidata",
}
QUERIES = ["AuthorIdentityHistogram", "PlaceIdentityHistogram",
           "LineIdentityHistogram", "PersonsOfPlaceFederatedCount"]

def render(qname, services):
    q = queries[qname]
    text = q["sparql"]
    for p in q["param_list"]:
        name, val = p["name"], str(p["default_value"]).split()[0]
        if name.endswith("_service") and services is not None:
            val = services
        text = text.replace("{{ %s }}" % name, val)
    return text

def run(qname, ep, services, label):
    text = render(qname, services)
    t0 = time.time()
    try:
        r = requests.post(ep, data={"query": text},
                          headers={"Accept": "application/sparql-results+json"},
                          timeout=TIMEBOX)
        dt = time.time() - t0
        if r.status_code != 200:
            print(f"{label} {qname} FAIL http={r.status_code} {dt:.1f}s "
                  f"{r.text[:120]!r}")
            return
        bindings = r.json()["results"]["bindings"]
        rows = [{k: v["value"] for k, v in b.items()} for b in bindings]
        print(f"{label} {qname} OK {dt:.2f}s rows={len(rows)} {rows[:6]}")
    except requests.Timeout:
        print(f"{label} {qname} TIMEOUT >{TIMEBOX}s")
    except Exception as ex:
        print(f"{label} {qname} ERROR {time.time()-t0:.1f}s {str(ex)[:120]}")

if MODE in ("lll", "all"):
    for be in ["blazegraph", "jena", "oxigraph", "qlever"]:
        for qn in QUERIES:
            run(qn, LOCAL_EP[be], LOCAL_SVC[be], f"LLL-{be}")
if MODE in ("rrr", "all"):
    for qn in QUERIES:
        run(qn, RRR_EXECUTOR[qn], None, "RRR")
