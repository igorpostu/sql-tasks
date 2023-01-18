SELECT name, SUM(CASE
                    WHEN memid = 0 THEN slots * guestcost
                    ELSE slots * membercost
                END) AS revenue
FROM bookings INNER JOIN facilities
ON bookings.facid = facilities.facid
GROUP BY name
HAVING revenue < 1000;