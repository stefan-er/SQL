CREATE TABLE WorkHoursLogs(
Id int IDENTITY,
OldRecordData text,
NewRecordData text,
CommandUsed nvarchar(6),
WorkHoursId int,
CONSTRAINT PK_WorkHoursLogs PRIMARY KEY(Id),
CONSTRAINT FK_WorkHoursLogs_WorkHours FOREIGN KEY (WorkHoursId)
REFERENCES WorkHours(Id)
)