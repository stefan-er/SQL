SELECT COUNT(*) AS [Employees with Manager] FROM Employees
WHERE DepartmentID IN
(SELECT DepartmentID FROM Departments
WHERE Name='Sales')