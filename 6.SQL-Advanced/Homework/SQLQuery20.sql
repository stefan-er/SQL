UPDATE Groups
SET Name='Group1.1'
WHERE Name='Group1'

UPDATE Users
SET Username=Username + '_gr1'
WHERE GroupId=1