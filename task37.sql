SELECT facid, EXTRACT(MONTH FROM starttime) AS month, SUM(slots) AS "Total Slots"
FROM bookings
GROUP BY facid, month
ORDER BY facid, month;