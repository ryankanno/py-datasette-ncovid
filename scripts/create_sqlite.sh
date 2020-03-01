#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

csvs-to-sqlite "${DIR}/../results/ncovid_Hubei.csv" "${DIR}/../results/ncovid_Hubei.db"
csvs-to-sqlite "${DIR}/../results/ncovid_outside_Hubei.csv" "${DIR}/../results/ncovid_outside_Hubei.db"
