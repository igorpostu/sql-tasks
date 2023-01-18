SELECT SUBSTR(surname, 1, 1) AS letter, COUNT(*) AS count
FROM members
GROUP BY letter
ORDER BY letter;