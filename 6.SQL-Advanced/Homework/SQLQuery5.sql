SELECT AVG(Salary) AS [Avg Salary in Sales] FROM Employees
WHERE DepartmentID IN
(SELECT DepartmentID FROM Departments
WHERE Name='Sales')