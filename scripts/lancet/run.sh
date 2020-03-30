#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

${DIR}/download.sh
${DIR}/create_sqlite.sh

datasette "${DIR}/../results/ncovid_Hubei.db" "${DIR}/../results/ncovid_outside_Hubei.db"
