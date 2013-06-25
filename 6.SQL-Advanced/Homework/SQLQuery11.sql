SELECT FirstName + ' ' + LastName AS [Manager names], EmployeeID FROM Employees
WHERE EmployeeID IN
(SELECT ManagerID FROM Employees
GROUP BY ManagerID
HAVING COUNT(EmployeeID) = 5)