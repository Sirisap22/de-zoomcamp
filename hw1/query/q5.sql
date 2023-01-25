SELECT
    COUNT(CASE passenger_count WHEN 2 THEN 1 ELSE NULL END) AS passenger2,
    COUNT(CASE passenger_count WHEN 3 THEN 1 ELSE NULL END) AS passenger3
    --can use sum too
    --SUM(CASE passenger_count WHEN 2 THEN 1 ELSE 0 END) AS passenger2,
    --SUM(CASE passenger_count WHEN 3 THEN 1 ELSE 0 END) AS passenger3
FROM green_taxi_trips
WHERE
        (lpep_pickup_datetime BETWEEN DATE('2019-01-02') - INTERVAL '1 DAY' AND '2019-01-02') AND
    (passenger_count = 2 OR passenger_count = 3)