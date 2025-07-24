SELECT id, SUM(num) AS num FROM

(SELECT accepter_id AS id, COUNT(requester_id) AS num FROM RequestAccepted GROUP BY id

UNION ALL

SELECT requester_id AS id, COUNT(accepter_id) AS num FROM RequestAccepted GROUP BY id
) AS CTE

GROUP BY id ORDER BY num DESC
LIMIT 1
--  Sum from 2 tables