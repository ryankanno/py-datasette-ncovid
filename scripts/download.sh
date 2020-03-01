#!/bin/bash
# { curl "https://docs.google.com/spreadsheets/d/1itaohdPiAeniCXNlntNztZ_oRvjh0HsGuJXUJWET008/gviz/tq?tqx=out:csv&sheet=outside_Hubei" & curl "https://docs.google.com/spreadsheets/d/1itaohdPiAeniCXNlntNztZ_oRvjh0HsGuJXUJWET008/gviz/tq?tqx=out:csv&sheet=Hubei"; } > tables.csv

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
curl -o "${DIR}/../results/ncovid_outside_Hubei.csv" "https://docs.google.com/spreadsheets/d/1itaohdPiAeniCXNlntNztZ_oRvjh0HsGuJXUJWET008/gviz/tq?tqx=out:csv&sheet=outside_Hubei" 
curl -o "${DIR}/../results/ncovid_Hubei.csv" "https://docs.google.com/spreadsheets/d/1itaohdPiAeniCXNlntNztZ_oRvjh0HsGuJXUJWET008/gviz/tq?tqx=out:csv&sheet=Hubei"
