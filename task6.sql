SELECT facid, name, membercost, monthlymaintenance FROM facilities
WHERE membercost > 0 AND membercost < monthlymaintenance / 50;