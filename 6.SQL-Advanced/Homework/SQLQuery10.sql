SELECT e.DepartmentID, t.TownID, t.Name ,COUNT(EmployeeID) AS [Emp in each dept for each town] FROM Employees e
JOIN Addresses a ON a.AddressID=e.AddressID
JOIN Towns t ON a.TownID=t.TownID
GROUP BY t.TownID, t.Name, e.DepartmentID