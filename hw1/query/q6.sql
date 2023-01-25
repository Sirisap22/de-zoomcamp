SELECT
    tip_amount,
    tzpu."Zone" AS pickup_zone,
    tzdo."Zone" AS dropoff_zone
FROM
    green_taxi_trips AS gt,
    taxi_zones AS tzpu,
    taxi_zones AS tzdo
WHERE
        gt."PULocationID" = tzpu."LocationID" AND
        gt."DOLocationID" = tzdo."LocationID" AND
        tzpu."Zone" = 'Astoria'
ORDER BY tip_amount DESC