CREATE TABLE cricket (Name varchar(50),
age int(3),
gender char(10),
team char(15));
INSERT INTO cricket values ('Rohit', 33, 'Male', 'India');
INSERT INTO cricket values ('Bhuvaneshwar', 32, 'Male', 'India');
INSERT INTO cricket values ('Jaedeja', 31, 'Male', 'India');
INSERT INTO cricket values ('Warner', 33, 'Male', 'Australia');
INSERT INTO cricket values ('Gilchrist', 43, 'Male', 'Australia');
INSERT INTO cricket values ('Mcgrath', 45, 'Male', 'Autralia');
INSERT INTO cricket (Name, age, gender, team) VALUES ('KlRahul',29,'Male','India');
INSERT INTO cricket values ('Mithali_raj', 30, 'Female', 'India');
INSERT INTO cricket values ('Goswami', 35, 'Female', 'India');


SELECT * FROM cricket;

SELECT * FROM cricket ORDER BY age;
SELECT * FROM cricket ORDER BY age DESC;
SELECT * FROM cricket ORDER BY gender;
SELECT * FROM cricket ORDER BY gender, age DESC;
SELECT * FROM cricket ORDER BY gender DESC, age DESC;
SELECT * FROM cricket WHERE team='India';
SELECT * FROM cricket WHERE team='India' ORDER BY gender DESC, age ASC;

ALTER TABLE cricket ADD type char(15);

INSERT INTO cricket (type)
VALUES ('Batsman');

SELECT * FROM cricket;

SET SQL_SAFE_UPDATES = 0;


UPDATE cricket set type='Batsman' WHERE type IS NULL;

CREATE TABLE cricket2 (Name varchar(50) NOT NULL,
age int(3) NOT NULL,
gender char(10) NOT NULL,
team char(15) NOT NULL);

SELECT * FROM cricket2;


INSERT INTO cricket2 (Name, age, gender, team) VALUES ('KlRahul',29,'Male','India');
INSERT INTO cricket2 (Name, age, gender, team) VALUES ('Virat',29,'Male','India');
INSERT INTO cricket2 (Name, age, gender, team) VALUES ('Bhumra',29,'Male','India');

SELECT * FROM cricket2;

CREATE TABLE cricket3 (Name varchar(50) NOT NULL,
age int(3) NOT NULL,
gender char(10) NULL,
team char(15) NOT NULL);

SELECT * FROM cricket3;


INSERT INTO cricket3 (Name, age, gender, team) VALUES ('KlRahul',29,'Male','India');
INSERT INTO cricket3 (Name, age, gender, team) VALUES ('Virat',29,'Male','India');
INSERT INTO cricket3 (Name, age, team) VALUES ('Bhumra',29,'India');

CREATE TABLE cricket5 (ID int PRIMARY KEY, Name varchar(50) NOT NULL,
age int(3) NOT NULL,
gender char(10) NULL,
team char(15) NOT NULL);

SELECT * FROM cricket5;


INSERT INTO cricket5 (ID, Name, age, gender, team) VALUES (1,'KlRahul',29,'Male','India');
INSERT INTO cricket5 (ID, Name, age, gender, team) VALUES (2,'Virat',29,'Male','India');


CREATE TABLE Persons (
    ID int,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

INSERT INTO Persons (ID, Lastname, Firstname, Age) VALUES (1,'Virat', 'Kohli', 32);
INSERT INTO Persons (ID, Lastname, Firstname, Age) VALUES (1,'Virat', 'Kohli', 32);

SELECT * FROM Persons;

CREATE TABLE Persons2 (
    ID int,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

INSERT INTO Persons2 (ID, Lastname, Firstname, Age) VALUES (1,'Virat', 'Kohli', 32);

SELECT * FROM cricket2;

INSERT INTO cricket2 (Name, age, gender, team) VALUES ('Sachin',40,'Male','India');

SELECT AVG(age) AS average_age FROM cricket2 GROUP BY gender;

INSERT INTO cricket2 (Name, age, gender, team) VALUES ('Ponting',41,'Male','Autralia');
INSERT INTO cricket2 (Name, age, gender, team) VALUES ('Gilchrist',42,'Male','Australia');

SELECT AVG(age) AS average_age, team FROM cricket2 GROUP BY team;

UPDATE cricket2 set team='Australia' where team = 'Autralia';
SELECT AVG(age) AS average_age, team FROM cricket2 GROUP BY team ORDER BY team ASC;

SELECT * FROM cricket;

DELETE FROM cricket WHERE type IS NULL;

DELETE FROM cricket WHERE type IS NULL OR Name IS NULL OR age IS NULL OR gender IS NULL OR team IS NULL;

INSERT INTO cricket (Name, gender, team) VALUES ('Gilchrist','Male','Australia');
DELETE FROM cricket WHERE type IS NULL AND Name IS NULL AND age IS NULL AND gender IS NULL AND team IS NULL;
