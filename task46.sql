SELECT COUNT(*) OVER() AS count, firstname, surname
FROM members
GROUP BY memid
ORDER BY joindate;