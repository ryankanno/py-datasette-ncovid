#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
curl -o "${DIR}/../../results/hawaii/hawaii_daily.csv" "https://docs.google.com/spreadsheets/d/1WTUg75_mm35Z2C6PQd5AOKtVeSNfci5Mp0G_pgYTqQI/gviz/tq?tqx=out:csv&sheet=Sheet1"
