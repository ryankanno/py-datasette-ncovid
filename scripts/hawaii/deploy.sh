#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OUTPUT_ROOT="${DIR}/../../results/hawaii"

DATE_PRE=`gdate +%Y%m%d_%H%M%S`

SESSION_OUTPUT_PATH="${DIR}/../../results/hawaii/${DATE_PRE}"

# create if not exists
mkdir -p "${SESSION_OUTPUT_PATH}"

CSV_FILENAME="hawaii_daily.csv"
CSV_PATH="${SESSION_OUTPUT_PATH}/${CSV_FILENAME}"

SQLITE_FILENAME="${DATE_PRE}_hawaii_daily.sqlite.db"
SQLITE_PATH="${SESSION_OUTPUT_PATH}/${SQLITE_FILENAME}"

${DIR}/download.sh ${CSV_PATH}
${DIR}/create_sqlite.sh ${CSV_PATH} ${SQLITE_PATH}

DATASETTE_FILENAME="hawaii_daily.sqlite.db"
DATASETTE_PATH="${SESSION_OUTPUT_PATH}/${DATASETTE_FILENAME}"

cp "${SQLITE_PATH}" "${DATASETTE_PATH}"

cd ${SESSION_OUTPUT_PATH}

HUMAN_FORMAT="+%B %d, %Y @ %T %Z"
HUMAN_LAST_PUBLISHED=`gdate "${HUMAN_FORMAT}"`

datasette publish heroku --name covid19-hawaii --title "COVID-19 Hawaii Daily Test Results (Last Published: ${HUMAN_LAST_PUBLISHED})" --version-note \""Data Imported: ${DATE_PRE}"\" --source "Community Maintained Daily Hawaii COVID-19 Metrics" --source_url "https://docs.google.com/spreadsheets/d/1WTUg75_mm35Z2C6PQd5AOKtVeSNfci5Mp0G_pgYTqQI/edit#gid=0" --license "Creative Commons Attribution 4.0 International" --license_url "https://creativecommons.org/licenses/by/4.0/" --about "This is a community maintained, unofficial table of COVID-19 stats compiled from DOH and media reports. Accuracy is not guaranteed. Please see the Data Source link to report any errors." "${DATASETTE_FILENAME}"

echo "Data Imported: ${DATE_PRE}, Last Published: ${HUMAN_LAST_PUBLISHED}"
