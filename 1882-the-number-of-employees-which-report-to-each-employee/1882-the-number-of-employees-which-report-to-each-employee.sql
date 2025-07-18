# Write your MySQL query statement below
SELECT e.employee_id, e.name, COUNT(f.employee_id) AS reports_count, ROUND(AVG(f.age)) AS average_age
FROM Employees e JOIN Employees f 
ON e.employee_id=f.reports_to
GROUP BY e.employee_id
ORDER BY employee_id