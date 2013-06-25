SELECT e.DepartmentID, d.Name ,AVG(Salary) AS [Avg Salary] FROM Employees e
JOIN Departments d ON e.DepartmentID=d.DepartmentID
GROUP BY e.DepartmentID, d.Name
