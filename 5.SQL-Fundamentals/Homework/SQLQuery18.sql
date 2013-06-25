SELECT e.FirstName, a.AddressText AS [Addresses]
FROM Employees e
	INNER JOIN Addresses a 
	ON e.AddressID = a.AddressID