SELECT name, CASE
    WHEN revenue = 1 THEN "high"
    WHEN revenue = 2 THEN "average"
    ELSE "low" END AS revenue

FROM
    (SELECT name, NTILE(3) OVER(ORDER BY revenue) AS revenue
    FROM
        (SELECT name, RANK() OVER(ORDER BY SUM(CASE
            WHEN memid = 0 THEN slots * guestcost
            ELSE slots * membercost END) DESC) AS revenue
        FROM bookings INNER JOIN facilities
        ON bookings.facid = facilities.facid
        GROUP BY name) sub1
        ORDER BY revenue, name) sub2;