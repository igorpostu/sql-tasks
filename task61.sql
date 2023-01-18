SELECT
    starttime,
    starttime + INTERVAL slots*30 MINUTE AS endtime
FROM bookings
ORDER BY endtime DESC, starttime DESC
LIMIT 10;