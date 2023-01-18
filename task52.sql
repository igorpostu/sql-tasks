SELECT name, initialoutlay / (SUM(CASE
    WHEN memid = 0 THEN slots * guestcost
    ELSE slots * membercost END) / 3 - monthlymaintenance) AS months

FROM bookings INNER JOIN facilities
ON bookings.facid = facilities.facid

GROUP BY facilities.facid
ORDER BY name;