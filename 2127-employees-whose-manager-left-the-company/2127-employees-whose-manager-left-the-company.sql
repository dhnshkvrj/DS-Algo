SELECT a.employee_id 
FROM Employees a LEFT JOIN Employees b
ON a.manager_id=b.employee_id
WHERE b.employee_id IS NULL AND a.salary<30000 AND a.manager_id IS NOT NULL
ORDER BY employee_id