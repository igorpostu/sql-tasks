SELECT starttime
FROM bookings, members
WHERE
    firstname = 'David'
    AND surname = 'Farrell'
    AND bookings.memid = members.memid;