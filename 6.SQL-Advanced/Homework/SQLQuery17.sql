CREATE TABLE Groups (
	Id int IDENTITY,
	Name nvarchar(50) NOT NULL,
	CONSTRAINT PK_Groups PRIMARY KEY(Id),
	CONSTRAINT UC_Groups UNIQUE(Name)
)