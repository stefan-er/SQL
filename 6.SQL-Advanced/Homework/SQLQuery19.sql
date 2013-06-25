INSERT INTO Groups(Name)
VALUES ('Group1'),
('Group2'), ('Group3')

INSERT INTO Users(Username, Password, FullName, LastLoginTime, GroupId)
VALUES ('ivan', '12300', 'Ivan Petrov', GETDATE(),1),
('pesho', '45600', 'Petur Georgiev', GETDATE(),2),
('misho', '78900', 'Mihail Filipov', GETDATE(),3)