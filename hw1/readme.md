```shell
> docker-compose up

> docker run -it --network=hw1_default \
taxi_ingest:0.5 --user=root \
--password=root \
--host=pgdatabase \
--port=5432 \
--db=ny_taxi \
--table_name=green_taxi_trips \
--url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/green/green_tripdata_2019-01.csv.gz \
-pt \
-uz

> docker run -it --network=hw1_default \
taxi_ingest:0.5 --user=root \
--password=root \
--host=pgdatabase \
--port=5432 \
--db=ny_taxi \
--table_name=taxi_zones \
--url=https://s3.amazonaws.com/nyc-tlc/misc/taxi+_zone_lookup.csv
```