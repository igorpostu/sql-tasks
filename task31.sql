DELETE FROM members
WHERE memid not in (SELECT memid FROM bookings);