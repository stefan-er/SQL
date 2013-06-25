CREATE TABLE Users (
	Id int IDENTITY NOT NULL,
	Username nvarchar(30) NOT NULL,
	Password nvarchar(30) NOT NULL,
	FullName nvarchar(30) NOT NULL,
	LastLoginTime smalldatetime NOT NULL,
	CONSTRAINT PK_Users PRIMARY KEY(Id),
	CONSTRAINT uc_Users UNIQUE (Username),
	CONSTRAINT chk_Users CHECK (LEN(Password)>=5)
)
