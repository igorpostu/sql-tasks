SELECT bookings.facid, name, SUM(slots * 0.5) AS "Total Hours"
FROM bookings INNER JOIN facilities
ON bookings.facid = facilities.facid
GROUP BY facid;