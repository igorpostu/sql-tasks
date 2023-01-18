SELECT
    mems.firstname AS memfname,
    mems.surname AS memsname,
    recs.firstname AS recfname,
    recs.surname AS recsname
FROM members mems LEFT JOIN members recs
ON mems.recommendedby = recs.memid
ORDER BY memsname, memfname;