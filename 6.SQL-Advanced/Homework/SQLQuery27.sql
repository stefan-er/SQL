SELECT n.TownName, n.Number AS EmpsFromTown FROM

(SELECT s.Towns AS TownName, COUNT(s.Towns) AS Number FROM
		(SELECT e.EmployeeID AS EmployeeID,
		  t.Name AS Towns
		FROM Employees e
		  JOIN Addresses a
			ON e.AddressID = a.AddressID
		  JOIN Towns t
			ON a.TownID = t.TownID) AS s
	GROUP BY s.Towns) AS n

WHERE n.Number =
	(SELECT MAX(n.Number) FROM
		(SELECT s.Towns AS TownName, COUNT(s.Towns) AS Number FROM
			(SELECT e.EmployeeID AS EmployeeID,
			  t.Name AS Towns
			FROM Employees e
			  JOIN Addresses a
				ON e.AddressID = a.AddressID
			  JOIN Towns t
				ON a.TownID = t.TownID) AS s
		GROUP BY s.Towns) AS n)