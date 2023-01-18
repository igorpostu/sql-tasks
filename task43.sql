SELECT facid, EXTRACT(MONTH FROM starttime) as month, SUM(slots) AS slots
FROM bookings
WHERE EXTRACT(YEAR FROM starttime) = 2012
GROUP BY facid, month

UNION

SELECT facid, null, SUM(slots) AS slots
FROM bookings
WHERE EXTRACT(YEAR FROM starttime) = 2012
GROUP BY facid

ORDER BY facid, slots ASC, month;