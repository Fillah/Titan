CREATE TABLE Profession (
	ProfessionID int IDENTITY(1,1) NOT NULL,
	Name varchar(50) NOT NULL,
	Value int NOT NULL,
	PRIMARY KEY (ProfessionID)
);


INSERT INTO Profession
VALUES ('Designer', 3)

INSERT INTO Profession
VALUES ('Webudvikler', 2)

INSERT INTO Profession
VALUES ('Debugger', 1)

INSERT INTO Profession
VALUES ('Koncept', 2)

INSERT INTO Profession
VALUES ('Projektleder', 1)