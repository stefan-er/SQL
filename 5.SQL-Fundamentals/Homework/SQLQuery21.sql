SELECT e.FirstName + ' ' + e.LastName AS [Employees Name], m.FirstName + ' ' + m.LastName AS [Managers Name], a.AddressText AS [Addresses] 
FROM Employees e
	JOIN Employees m ON e.ManagerID=m.EmployeeID
	JOIN Addresses a ON e.AddressID=a.AddressID