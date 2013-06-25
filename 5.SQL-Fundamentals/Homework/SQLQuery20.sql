SELECT e.FirstName + ' ' + e.LastName AS [Employee Name], e.ManagerID, m.ManagerID, m.FirstName + ' ' + m.LastName AS [Manager Name]
FROM Employees e INNER JOIN Employees m
ON e.ManagerID=m.EmployeeID