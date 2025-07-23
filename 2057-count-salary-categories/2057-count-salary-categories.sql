SELECT 'High Salary' as category, COUNT(account_id) AS 'accounts_count' FROM Accounts WHERE income>50000
UNION
SELECT 'Low Salary' as category, COUNT(account_id) AS 'accounts_count' FROM Accounts WHERE income<20000
UNION
SELECT 'Average Salary' as category, COUNT(account_id) AS 'average_count' FROM Accounts WHERE income BETWEEN '20000' AND '50000'