SELECT DISTINCT
    CONCAT(members.firstname, ' ', members.surname) AS member,
    facilities.name AS facility

FROM members INNER JOIN bookings
ON members.memid = bookings.memid
INNER JOIN facilities
ON bookings.facid = facilities.facid

WHERE facilities.name LIKE '%Tennis Court%'
ORDER BY member, facility;