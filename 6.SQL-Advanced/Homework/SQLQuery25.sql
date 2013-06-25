SELECT DepartmentID, JobTitle ,AVG(Salary) AS AvgSalary FROM Employees
GROUP BY DepartmentID, JobTitle