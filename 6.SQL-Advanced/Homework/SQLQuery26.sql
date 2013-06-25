SELECT e.DepartmentID, FirstName, e.Salary, s.JobTitle FROM Employees e
INNER JOIN
(SELECT DepartmentID, JobTitle , MIN(Salary) AS MinSalary FROM Employees
GROUP BY DepartmentID, JobTitle) AS s
ON e.JobTitle = s.JobTitle
ORDER BY JobTitle

