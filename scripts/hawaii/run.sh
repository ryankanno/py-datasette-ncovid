#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OUTPUT_ROOT="${DIR}/../../results/hawaii"

DATE_PRE=`date +%Y%m%d_%H%M%S`

SESSION_OUTPUT_PATH="${DIR}/../../results/hawaii/${DATE_PRE}"

# create if not exists
mkdir -p "${SESSION_OUTPUT_PATH}"

CSV_FILENAME="${DATE_PRE}_hawaii_daily.csv"
CSV_PATH="${SESSION_OUTPUT_PATH}/${CSV_FILENAME}"

SQLITE_FILENAME="${DATE_PRE}_hawaii_daily.sqlite.db"
SQLITE_PATH="${SESSION_OUTPUT_PATH}/${SQLITE_FILENAME}"

${DIR}/download.sh ${CSV_PATH}
${DIR}/create_sqlite.sh ${CSV_PATH} ${SQLITE_PATH}

datasette "${SQLITE_PATH}"
