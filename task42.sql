SELECT facid, SUM(slots) AS "Total Slots"
FROM bookings
GROUP BY facid
ORDER BY SUM(slots) DESC
LIMIT 1;