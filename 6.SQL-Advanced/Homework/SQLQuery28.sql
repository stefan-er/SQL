SELECT js.TownName, COUNT(js.TownName) AS ManagersFromEachTown FROM
(SELECT DISTINCT m.EmployeeID , m.FirstName + ' ' + m.LastName AS FullName, 
m.AddressID, 
a.TownID AS TownID, 
t.Name AS TownName 
FROM Employees m
JOIN Employees e
ON e.ManagerID=m.EmployeeID
JOIN Addresses a
ON m.AddressID=a.AddressID
JOIN Towns t
ON a.TownID=t.TownID) AS js
GROUP BY js.TownName