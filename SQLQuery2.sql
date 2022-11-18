USE Students_Database;

EXECUTE sp_renamedb 'Students', 'Students_Database';

EXECUTE sp_rename 'StudentsInfo', 'InfoStudents';

CREATE TABLE Teacher(ID int PRIMARY KEY IDENTITY, T_Name varchar(50) not null, T_Qual varchar(30), T_Sal bigint not null);

SELECT * FROM Teacher;

INSERT INTO Teacher VALUES('Neha', 'MA', 30000);
INSERT INTO Teacher VALUES('Anil', 'MSc', 30000);
INSERT INTO Teacher VALUES('Ansari', 'MSc', 35000);
INSERT INTO Teacher VALUES('Lukku', 'BTech', 28000);

DROP TABLE Teacher;

CREATE TABLE Teacher(ID int PRIMARY KEY IDENTITY(100,5), T_Name varchar(50) not null, T_Qual varchar(30), T_Sal bigint not null);

ALTER TABLE Teacher ALTER COLUMN T_Qual varchar(30) not null;

ALTER TABLE Teacher ADD UNIQUE(ID);

ALTER TABLE Teacher DROP CONSTRAINT [UQ__Teacher__3214EC260529AFAC];

SELECT * FROM InfoStudents;
SELECT * FROM Teacher;

TRUNCATE TABLE Teacher;

DROP TABLE Teacher;

CREATE TABLE Teacher(ID int PRIMARY KEY, T_Name varchar(50) not null, T_Qual varchar(30), T_Sal bigint not null);

INSERT INTO Teacher VALUES(02, 'Neha', 'MA', 30000);
INSERT INTO Teacher VALUES(05, 'Anil', 'MSc', 30000);
INSERT INTO Teacher VALUES(65, 'Ansari', 'MSc', 35000);
INSERT INTO Teacher VALUES(12, 'Lukku', 'BTech', 28000);

SELECT Country, SUM(ID) as [Sum_Of_Id] FROM InfoStudents GROUP BY Country HAVING Country IN ('India');