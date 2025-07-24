SELECT Department, Employee, Salary FROM

(
    SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary, 
           DENSE_RANK() OVER  (PARTITION BY e.departmentId ORDER BY Salary DESC) AS deptRank
    FROM Department d JOIN Employee e 
    ON e.departmentId=d.id
)AS CTE

WHERE deptRank<=3