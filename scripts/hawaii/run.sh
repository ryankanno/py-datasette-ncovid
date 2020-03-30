#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OUTPUT_ROOT="${DIR}/../../results/hawaii/"

# create if not exists
mkdir -p "${OUTPUT_ROOT}"

DATE_PRE=`date +%Y%m%d_%H%M%S`

CSV_FILENAME="${DATE_PRE}_hawaii_daily.csv"
CSV_PATH="${OUTPUT_ROOT}${CSV_FILENAME}"

SQLITE_FILENAME="${DATE_PRE}_hawaii_daily.sqlite.db"
SQLITE_PATH="${OUTPUT_ROOT}${SQLITE_FILENAME}"

${DIR}/download.sh ${CSV_PATH}
${DIR}/create_sqlite.sh ${CSV_PATH} ${SQLITE_PATH}

datasette "${SQLITE_PATH}"
