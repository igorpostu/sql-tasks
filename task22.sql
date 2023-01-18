SELECT member, facility, cost

FROM
    (SELECT
        CONCAT(mem.firstname, ' ', mem.surname) AS member,
        fac.name AS facility,
        CASE
            WHEN mem.memid = 0 THEN book.slots * fac.guestcost
            ELSE book.slots * fac.membercost
        END AS cost,
        starttime

    FROM members mem INNER JOIN bookings book
    ON mem.memid = book.memid
    INNER JOIN facilities fac
    ON book.facid = fac.facid

    WHERE
        starttime LIKE '%2012-09-14%') AS bookings

WHERE cost > 30

ORDER BY cost DESC;