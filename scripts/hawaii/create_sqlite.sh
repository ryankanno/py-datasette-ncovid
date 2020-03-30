#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

csvs-to-sqlite "${DIR}/../../results/hawaii/hawaii_daily.csv" "${DIR}/../../results/hawaii/hawaii_daily.db"
