CREATE VIEW V_UsersLogedinToday AS
SELECT Username FROM Users
WHERE LastLoginTime=GETDATE()