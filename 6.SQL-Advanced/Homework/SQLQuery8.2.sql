SELECT COUNT(FirstName)
FROM Employees e
WHERE NOT EXISTS
  (SELECT EmployeeID
   FROM Employees m
   WHERE m.EmployeeID = e.ManagerID)
