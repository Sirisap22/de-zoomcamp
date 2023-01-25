To start ingesting data use the commands below
```shell
> docker-compose up

> docker run -it \                    
--network=week1-intro_default \
taxi_ingest:0.2 --user=root \
--password=root \
--host=pgdatabase \
--port=5432 \
--db=ny_taxi \
--table_name=yellow_taxi_trips \
--url=https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz
```

The argument `network` is equal to `week1-intro_defult` is because of by default Compose sets up a single network for your app. Each container for a service joins the default network and is both reachable by other containers on that network, and discoverable by them at a hostname identical to the container name.

For example, suppose your app is in a directory called `myapp`, and your `docker-compose.yml` looks like this:
```yaml
version: "3.9"
services:
  web:
    build: .
    ports:
      - "8000:8000"
  db:
    image: postgres
    ports:
      - "8001:5432"
```
When you run docker compose up, the following happens:

1. A network called myapp_default is created.
2. A container is created using web’s configuration. It joins the network myapp_default under the name web.
3. A container is created using db’s configuration. It joins the network myapp_default under the name db.

references - https://docs.docker.com/compose/networking/