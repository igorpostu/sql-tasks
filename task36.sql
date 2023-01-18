SELECT facid, SUM(slots) AS "Total Slots"
FROM bookings
WHERE starttime LIKE "%2012-09%"
GROUP BY facid
ORDER BY SUM(slots);