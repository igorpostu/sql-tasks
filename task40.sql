SELECT name, SUM(slots * CASE
                WHEN memid = 0 THEN guestcost
                ELSE membercost
                END) AS revenue

FROM bookings INNER JOIN facilities
ON bookings.facid = facilities.facid

GROUP BY name
ORDER BY revenue;