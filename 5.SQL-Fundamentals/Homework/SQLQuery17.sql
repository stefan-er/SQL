SELECT TOP 5 e.Salary, n.FirstName FROM Employees e
 INNER JOIN Employees n ON e.Salary = n.Salary
ORDER BY Salary DESC