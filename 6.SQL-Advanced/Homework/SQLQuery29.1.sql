CREATE TABLE WorkHours (
Id int IDENTITY,
EmployeeId int,
Date date,
Task nvarchar(50),
Hours time,
Comments text,
CONSTRAINT PK_WorkHours PRIMARY KEY(Id),
CONSTRAINT FK_WorkHours_Employees FOREIGN KEY (EmployeeId)
REFERENCES Employees(EmployeeID)
)