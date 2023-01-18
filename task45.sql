SELECT surname, firstname, bookings.memid, MIN(starttime) AS starttime
FROM bookings INNER JOIN members
ON bookings.memid = members.memid
WHERE starttime >= "2012-09-01"
GROUP BY bookings.memid
ORDER BY bookings.memid;