SELECT facid, SUM(slots) AS "Total Slots"
FROM bookings
GROUP BY facid
HAVING SUM(slots) > 1000;