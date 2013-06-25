CREATE TRIGGER trg_ChangesIn_WorkHours_2
	
	ON WorkHours
	INSTEAD OF INSERT, DELETE, UPDATE
	AS
		
	INSERT INTO WorkHoursLogs(OldRecordData, WorkHoursId)
	SELECT CONVERT(nvarchar(10), EmployeeId) + ' ' + CONVERT(nvarchar(10), Date) + ' ' + CONVERT(nvarchar(10), Task) + ' ' + CONVERT(nvarchar(10), Hours) + ' ' + CONVERT(nvarchar(10), Comments), Id
	FROM WorkHours
	GO