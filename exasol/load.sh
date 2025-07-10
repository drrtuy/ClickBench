#!/bin/bash
set -euxo pipefail

TABLE="hits"
SCHEMA="test"
# Exasol follows Oracle convention and treats empty strings as NULL values. To overcome this we need to replace empty strings with 'EMPTY' string manually.
CSV_FILE="/root/ClickBench/exasol/hits_cleaned.csv"
EXAPLUS="/data/EXAplus-25.2.4/exaplus"
CONN_STRING="localhost/F07AEBF3B4EC01FBD7D9CA4BE7E50C5D6BF8A81D1C0EB6964C49D4EA8B162D67:9563"
USER="sys"
PASSWORD="exasol"
OPTIONS="-c $CONN_STRING -u $USER -p $PASSWORD -autocommit ON -encoding=UTF8"

$EXAPLUS $OPTIONS -sql "SELECT COUNT(*) FROM $SCHEMA.$TABLE;"

$EXAPLUS $OPTIONS -f load.sql -init init.sql -s $SCHEMA

$EXAPLUS $OPTIONS -sql "ANALYZE $SCHEMA.$TABLE;"