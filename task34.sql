SELECT  recommendedby, COUNT(*) AS count
FROM members
WHERE recommendedby IS NOT NULL
GROUP BY recommendedby
ORDER BY recommendedby;