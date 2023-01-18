SELECT DISTINCT recommendators.firstname, recommendators.surname
FROM members recommendators INNER JOIN members 
ON recommendators.memid = members.recommendedby
ORDER BY surname, firstname;