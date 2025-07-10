#!/bin/bash

EXAPLUS="/data/EXAplus-25.2.4/exaplus"
CONN_STRING="localhost/F07AEBF3B4EC01FBD7D9CA4BE7E50C5D6BF8A81D1C0EB6964C49D4EA8B162D67:9563"
USER="sys"
PASSWORD="exasol"
SCHEMA="test"
TRIES=3
OPTIONS="-c $CONN_STRING -u $USER -p $PASSWORD"

cat queries.sql | while read -r query; do
    sync
    echo 3 | sudo tee /proc/sys/vm/drop_caches

    echo "$query"
    (
        yes "$query" | head -n $TRIES
    ) | $EXAPLUS $OPTIONS -init init.sql -s $SCHEMA | grep Elapsed:
done