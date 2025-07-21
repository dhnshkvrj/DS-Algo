SELECT person_name FROM
(SELECT person_name, weight, SUM(weight) OVER(ORDER BY turn) as RollingTotalWeight
FROM Queue) AS CTE
WHERE RollingTotalWeight<=1000 
ORDER BY RollingTotalWeight DESC
LIMIT 1