SELECT e.FirstName, a.AddressText AS [Addresses]
FROM Employees e, Addresses a
WHERE e.AddressID = a.AddressID