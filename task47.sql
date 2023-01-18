SELECT ROW_NUMBER() OVER() AS "row_number", firstname, surname
FROM members
ORDER BY joindate;