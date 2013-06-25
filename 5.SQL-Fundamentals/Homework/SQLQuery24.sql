SELECT e.FirstName, d.Name, e.HireDate FROM Employees e
INNER JOIN Departments d ON 
(d.Name IN ('Sales', 'Finance')
AND e.HireDate BETWEEN '1/1/1995' AND '1/1/2000'
AND e.DepartmentID=d.DepartmentID)