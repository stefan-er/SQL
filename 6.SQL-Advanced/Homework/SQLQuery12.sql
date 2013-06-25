SELECT e.FirstName + ' ' + e.LastName AS [Employee], COALESCE(m.FirstName + ' ' + m.LastName, 'No manager') AS [Manager] FROM Employees e
LEFT JOIN Employees m
ON e.ManagerID=m.EmployeeID