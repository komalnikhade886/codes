CREATE TABLE Cricket_info (
    ID int,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int NOT NULL,
    Team VARCHAR(50) NOT NULL,
    GENDER CHAR(1) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO Cricket_Info VALUES (01, 'Kohli', 'Virat', 31, 'India', 'M');
INSERT INTO Cricket_Info VALUES (02, 'Sharma', 'Rohit', 32, 'India', 'M');
INSERT INTO Cricket_Info VALUES (03, 'Tendulkar', 'Sachin', 41, 'India', 'M');
INSERT INTO Cricket_Info VALUES (04, 'Warner', 'David', 33, 'Australia', 'M');
INSERT INTO Cricket_Info VALUES (05, 'Watson', 'Shane', 40, 'Australia', 'M');
INSERT INTO Cricket_Info VALUES (06, 'Gilchrist', 'Adam', 42, 'Australia', 'M');
INSERT INTO Cricket_Info VALUES (07, 'Roy', 'Jason', 33, 'England', 'M');
INSERT INTO Cricket_Info VALUES (08, 'Morgan', 'Eon', 37, 'England', 'M');
INSERT INTO Cricket_Info VALUES (09, 'Peterson', 'Kevin', 42, 'England', 'M');
INSERT INTO Cricket_Info VALUES (10, 'a', 'Kevin', 45, 'England', 'M');
INSERT INTO Cricket_Info VALUES (11, 'aa', 'Kevin', 47, 'England', 'M');


SELECT * FROM Cricket_info;

SELECT SUM(Age) as total_age FROM Cricket_info;

SELECT SUM(Age) as total_age, team FROM Cricket_info GROUP BY team;

SELECT SUM(Age) as total_age, team FROM Cricket_info;

SELECT MIN(Age) as min_age, team, Firstname FROM Cricket_info GROUP BY team;
SELECT MAX(Age) as max_age, team, Firstname FROM Cricket_info GROUP BY team;

SELECT MAX(Age) as max_age FROM Cricket_info;

SELECT * FROM cricket_info WHERE age>31;

SELECT * FROM cricket_info WHERE Lastname LIKE 'W%';

SELECT * FROM cricket_info WHERE Firstname LIKE '%o%';

SELECT * FROM cricket_info WHERE Lastname LIKE '_a%';

SELECT * FROM cricket_info WHERE Lastname LIKE 'a_%';

SELECT * FROM cricket_info WHERE Lastname LIKE 'a%';

SELECT * FROM cricket_info WHERE Firstname LIKE 'v%t';

SELECT * FROM cricket_info
WHERE Firstname NOT LIKE 'v%';