USE Students;
CREATE TABLE StudentsInfo
(
ID int,
StudentName varchar(8000),
ParentName varchar(8000),
PhoneNumber bigint,
StudentAddress varchar(8000),
City varchar(8000),
Country varchar(8000)
);

ALTER TABLE StudentsInfo ADD Blood varchar(8000);

ALTER TABLE StudentsInfo ADD DOB DATE;
ALTER TABLE StudentsInfo ALTER COLUMN DOB DATETIME;
ALTER TABLE StudentsInfo DROP COLUMN DOB;

INSERT INTO StudentsInfo VALUES('02', 'Suryash Rastogi', 'RK Rastogi', '1234567890', 'BTM Layout', 'Bengaluru', 'India', 'O+');

sp_rename 'StudentsInfo', 'InfoStudents';

DROP TABLE InfoStudents;

CREATE TABLE StudentsInfo
(
ID int,
StudentName varchar(8000) NOT NULL,
ParentName varchar(8000) NOT NULL,
PhoneNumber bigint,
StudentAddress varchar(8000) NOT NULL,
City varchar(8000) NOT NULL,
Country varchar(8000)
);

INSERT INTO StudentsInfo VALUES('02', 'Suryash Rastogi', 'RK Rastogi', '1234567890', 'BTM Layout', 'Bengaluru', 'India');

ALTER TABLE StudentsInfo ALTER COLUMN PhoneNumber bigint NOT NULL;
DROP TABLE StudentsInfo;

CREATE TABLE StudentsInfo
(
ID int UNIQUE NOT NULL,
StudentName varchar(8000) NOT NULL,
ParentName varchar(8000) NOT NULL,
PhoneNumber bigint,
StudentAddress varchar(8000) NOT NULL,
City varchar(8000) NOT NULL,
Country varchar(8000)
PRIMARY KEY (ID)
);
DROP TABLE StudentsInfo;

CREATE TABLE StudentsInfo
(
ID int UNIQUE NOT NULL,
StudentName varchar(8000) NOT NULL,
ParentName varchar(8000) NOT NULL,
PhoneNumber bigint,
StudentAddress varchar(8000) NOT NULL,
City varchar(8000) NOT NULL,
Country varchar(8000)
PRIMARY KEY (ID)
);

CREATE TABLE LibraryInfo
(
ID int UNIQUE NOT NULL,
StudentName varchar(8000) NOT NULL,
PhoneNumber bigint,
StudentAddress varchar(8000) NOT NULL,
City varchar(8000) NOT NULL,
Country varchar(8000) DEFAULT 'India'
);

ALTER TABLE LibraryInfo ADD CONSTRAINT defCity DEFAULT 'Bengaluru' FOR City;

CREATE INDEX studentIndex ON StudentsInfo(StudentName);

INSERT INTO StudentsInfo VALUES('03', 'Vaibhav Rastogi', 'RK Rastogi', '3214567890', 'Anand Nagar', 'Lucknow', 'India');
INSERT INTO StudentsInfo VALUES('01', 'Aditya Sharma', 'OP Sharma', '1234567098', 'Para', 'Noida', 'India');
INSERT INTO StudentsInfo VALUES('12', 'Daksh Shukla', 'Danny Shukla', '1236547890', 'Adarsh Nagar', 'Lucknow', 'India');
INSERT INTO StudentsInfo VALUES('02', 'Suryash Rastogi', 'RK Rastogi', '1234567890', 'BTM Layout', 'Bengaluru', 'India');

SELECT * FROM StudentsInfo;

UPDATE StudentsInfo SET ParentName='Suman Rastogi', City='Hardoi' WHERE ID=3;

DELETE FROM StudentsInfo WHERE StudentName='Suryash Rastogi';

SELECT * FROM StudentsInfo ORDER BY PhoneNumber;

SELECT * INTO backupStudents FROM LibraryInfo;
SELECT * INTO backupStudent FROM StudentsInfo;