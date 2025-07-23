WITH CTE AS (
SELECT 
COUNT( CASE WHEN income < 20000 THEN 1 END ) AS low_salary,
COUNT( CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 END ) AS average_salary,
COUNT( CASE WHEN income > 50000 THEN 1 END ) AS high_salary
FROM Accounts
)

SELECT 'High Salary' AS category,                              -- converting it to vertical column
        high_salary  AS accounts_count FROM CTE
UNION ALL
SELECT 'Low Salary', low_salary FROM CTE
UNION ALL
SELECT 'Average Salary',  average_salary FROM CTE

-- Here basically, 
-- we choose 2 things, 'High Salary' and high_salary and name them as category and accounts_count
-- we then fit stuff in that by selecting and using union


-- NOTE: betweeen is inclusive