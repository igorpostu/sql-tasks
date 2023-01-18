INSERT INTO facilities
SELECT (SELECT MAX(facid) FROM facilities)+1, "Spa", 20, 30, 100000, 800;