As of 2025, Google Bigquery allow publishing benchmark results, which was not the case earlier.

It's very difficult to find, how to create a database.
Databases are named "datasets". You need to press on `⋮` near project.

Create dataset `test`.
Go to the query editor and paste the contents of `create.sql`.
It will take two seconds to create a table.

Download Google Cloud CLI:
```
wget --continue --progress=dot:giga https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-linux-x86_64.tar.gz
tar -xf google-cloud-cli-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh
source .bashrc
./google-cloud-sdk/bin/gcloud init
```

Load the data:
```
wget --continue --progress=dot:giga 'https://datasets.clickhouse.com/hits_compatible/hits.csv.gz'
gzip -d -f hits.csv.gz

echo -n "Load time: "
command time -f '%e' bq load --source_format CSV --allow_quoted_newlines=1 test.hits hits.csv
```

Run the benchmark:

```
./run.sh 2>&1 | tee log.txt

cat log.txt |
  grep -P '^real|^Error' |
  sed -r -e 's/^Error.*$/null/; s/^real\s*([0-9.]+)m([0-9.]+)s$/\1 \2/' |
  awk '{ if ($2 != '') { print $1 * 60 + $2 } else { print $1 } }' |
  awk '{ if ($1 == "null") { skip = 1 } else { if (i % 3 == 0) { printf "[" }; printf skip ? "null" : $1; if (i % 3 != 2) { printf "," } else { print "]," }; ++i; skip = 0; } }'
```
