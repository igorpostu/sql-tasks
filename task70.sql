SELECT memid, REGEXP_REPLACE(telephone, '[-, (, )]', '') AS telephone
FROM members
ORDER BY memid;