SELECT e.FirstName + ' ' + e.LastName AS [Employee Names], e.EmployeeID AS [EmployeeID], m.EmployeeID AS [ManagerID], m.FirstName + ' ' + m.LastName AS [Managers Names] 
FROM Employees e 
LEFT JOIN Employees m
ON e.ManagerID=m.EmployeeID