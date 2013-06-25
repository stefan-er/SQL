SELECT COUNT(FirstName)
FROM Employees e
WHERE EXISTS
  (SELECT EmployeeID
   FROM Employees m
   WHERE m.EmployeeID = e.ManagerID)