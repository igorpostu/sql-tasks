SELECT facid, total

FROM (SELECT
    facid,
    SUM(slots) AS total,
    RANK() OVER(ORDER BY SUM(slots) DESC) AS ranked
    FROM bookings
    GROUP BY facid) ranked
    
WHERE ranked = 1;