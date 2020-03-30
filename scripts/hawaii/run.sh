#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir -p "${DIR}/../../results/hawaii/"

${DIR}/download.sh
${DIR}/create_sqlite.sh

datasette "${DIR}/../../results/hawaii/hawaii_daily.db"
