WITH CTE AS(
    SELECT visited_on, SUM(amount) as amount
    FROM Customer
    GROUP BY visited_on
)

SELECT a.visited_on, 
       ROUND(SUM(b.amount),2) AS amount, 
       ROUND(AVG(b.amount),2) AS average_amount
FROM CTE a JOIN CTE b
ON DATEDIFF(a.visited_on,b.visited_on) BETWEEN 0 AND 6
GROUP BY visited_on 
HAVING COUNT(*)>6
ORDER BY visited_on 