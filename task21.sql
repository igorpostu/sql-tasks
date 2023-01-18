SELECT DISTINCT
    CONCAT(firstname, ' ', surname) AS member,
    (SELECT CONCAT(firstname, ' ', surname)
    FROM members recommenders
    WHERE members.recommendedby = recommenders.memid) AS recommender

FROM members

ORDER BY member;