#!/bin/bash

TRIES=3

for f in $(ls /extra_disk1/columnstore-tooling/tpc-h/dbgen/eqt/*.sql | sort -V); do
    sync
    echo 3 | sudo tee /proc/sys/vm/drop_caches
    echo $f
    # mariadb test -e 'select calflushcache();' > /dev/null
    mcs cluster restart 
    for i in $(seq 1 $TRIES); do
        mariadb -vvv tpc_h < $f | grep 'in set'
    done;
done;
