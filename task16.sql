SELECT starttime, name
FROM bookings INNER JOIN facilities
ON bookings.facid = facilities.facid
WHERE
    starttime LIKE '%2012-09-21%'
    AND name LIKE '%Tennis Court%'
ORDER BY starttime;