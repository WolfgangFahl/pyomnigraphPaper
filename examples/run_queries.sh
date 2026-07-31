# shared md generation for the use case query.sh scripts
# see https://github.com/WolfgangFahl/pyomnigraphPaper/issues/2
# <Query>.md carries the full set when it has at most 10 entries;
# above that a -10/-100/... ladder, one file per power of ten below the
# entry count, plus -full.md when the full set stays under 100 KB
# the record count comes from the <Query>Count companion query - never
# from counting md rows
run_queries() {
  while read -r query_name endpoint_name
  do
    sq() {
      sparqlquery -ep "$script_dir/endpoints.yaml" -qp "$script_dir/queries.yaml" \
        -qn "$query_name" -en "$endpoint_name" -f github "$@"
    }
    # tr strips CR and quotes: BSD awk has no \r regex escape and endpoints
    # like database.factgrid.de deliver CRLF csv
    rows=$(sparqlquery -ep "$script_dir/endpoints.yaml" -qp "$script_dir/queries.yaml" \
      -qn "${query_name}Count" -en "$endpoint_name" -f csv | tr -d '\r"' | awk 'NR>1 && length($0) {print; exit}')
    case "$rows" in
      ""|*[!0-9]*) echo "$query_name: count query failed - got '$rows'" >&2; return 1;;
    esac
    echo "$query_name: $rows records" >&2
    tmp="$query_name-full.tmp"
    sq --params limit=1000000 > "$tmp"
    if [ "$rows" -le 10 ]
    then
      mv "$tmp" "$query_name.md"
    else
      rm -f "$query_name.md"
      s=10
      while [ "$s" -lt "$rows" ]
      do
        sq --params limit=$s > "$query_name-$s.md"
        s=$((s * 10))
      done
      if [ "$rows" -le 100 ]
      then
        sq --params limit=100 > "$query_name-100.md"
        rm -f "$tmp"
      elif [ "$(wc -c < "$tmp")" -lt 102400 ]
      then
        mv "$tmp" "$query_name-full.md"
      else
        rm -f "$tmp"
      fi
    fi
  done
}
