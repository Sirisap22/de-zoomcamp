SELECT count(*)
FROM green_taxi_trips
WHERE lpep_pickup_datetime BETWEEN DATE('2019-01-16') - INTERVAL '1 DAY' AND '2019-01-16'