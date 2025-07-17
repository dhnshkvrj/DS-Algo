# Write your MySQL query statement below
SELECT d.name 
FROM (
    SELECT a.id, COUNT(b.managerId) as empCount
    FROM Employee a JOIN Employee b 
    WHERE a.id=b.managerId
    GROUP BY B.managerId
) c JOIN Employee d
ON c.id=d.id
WHERE empCount > 4