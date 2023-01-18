SELECT name, RANK() OVER(ORDER BY SUM(CASE
            WHEN memid = 0 THEN slots * guestcost
            ELSE slots * membercost END) DESC) AS "rank"

FROM facilities INNER JOIN bookings
ON facilities.facid = bookings.facid

GROUP BY facilities.facid
LIMIT 3;