ALTER TABLE Users
ADD GroupId int NOT NULL
CONSTRAINT FK_Users_Groups FOREIGN KEY (GroupId) REFERENCES Groups(Id)