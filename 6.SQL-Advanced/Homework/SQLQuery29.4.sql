CREATE TRIGGER trg_ChangesIn_WorkHours
	
	ON WorkHours
	AFTER INSERT, DELETE, UPDATE
	AS
		
	INSERT INTO WorkHoursLogs(NewRecordData)
	SELECT CONVERT(nvarchar(10), EmployeeId) + ' ' + CONVERT(nvarchar(10), Date) + ' ' + CONVERT(nvarchar(10), Task) + ' ' + CONVERT(nvarchar(10), Hours) + ' ' + CONVERT(nvarchar(10), Comments)
	FROM WorkHours
	GO