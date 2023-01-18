SELECT facid, SUM(slots) AS "Total Slots"
FROM bookings
GROUP BY facid
ORDER BY facid;
