SELECT
    firstname, surname,
    ROUND(SUM(slots) / 20) * 10 AS hours,
    RANK() OVER(ORDER BY SUM(slots) DESC) AS "rank"

FROM members INNER JOIN bookings
ON members.memid = bookings.memid

GROUP BY members.memid

ORDER BY SUM(slots) DESC;