CREATE DATABASE Employee;
USE Employee;

CREATE TABLE EmployeeT(EmpID int UNIQUE not null, EmpName varchar(50) not null, Email varchar(50), Designation varchar(20));

INSERT INTO EmployeeT VALUES(11, 'Suryash Rastogi', 'rastogisuryash8@gmail.com', 'BTech');
INSERT INTO EmployeeT VALUES(22, 'Daksh Shukla', 'daksh305@gmail.com', 'BCA');
INSERT INTO EmployeeT VALUES(33, 'Vaibhav Rastogi', 'vaibhavrastogi01@gmail.com', 'High School');
INSERT INTO EmployeeT VALUES(44, 'Yash Chaurasia', 'shubhangi@gmail.com', 'BSc');
INSERT INTO EmployeeT VALUES(55, 'Deepak Kumar', 'dksingh@gmail.com', 'BTech');

SELECT * FROM EmployeeT;

CREATE TABLE Department
(
DptID int UNIQUE not null, 
DptName varchar(50), 
DptSal bigint not null,
EmpID int UNIQUE not null
);

SELECT * FROM Department;
SELECT * FROM EmployeeT;

INSERT INTO Department VALUES(01, 'Engineering', 40000, 22);
INSERT INTO Department VALUES(02, 'Programming', 28000, 33);
INSERT INTO Department VALUES(03, 'Academics', 25000, 11);
INSERT INTO Department VALUES(04, 'Sciences', 25000, 44);
INSERT INTO Department VALUES(05, 'Business', 45000, 55);
INSERT INTO Department VALUES(06, 'Sports', 25000, 66);

		-- INNER JOIN --

SELECT * FROM EmployeeT AS A INNER JOIN Department AS B ON A.EmpID=B.EmpID;

SELECT EmpName, Designation, DptID FROM EmployeeT AS A INNER JOIN Department AS B ON A.EmpID=B.EmpID;		-- To display selected columns--

		--LEFT JOIN --

SELECT * FROM EmployeeT AS A LEFT JOIN Department AS B ON A.EmpID=B.EmpID;

		-- RIGHT JOIN --

SELECT * FROM EmployeeT AS A RIGHT JOIN Department AS B ON A.EmpID=B.EmpID;

SELECT * FROM EmployeeT AS A FULL OUTER JOIN Department AS B ON A.EmpID=B.EmpID;

		-- SELF JOIN --

CREATE TABLE EmployeeAndManagers
(
EmpID int PRIMARY KEY,
EmpName varchar(50),
MangID int
);

INSERT INTO EmployeeAndManagers VALUES(1, 'Suryash', 4);
INSERT INTO EmployeeAndManagers VALUES(2, 'Daksh', 4);
INSERT INTO EmployeeAndManagers VALUES(3, 'Yash', 5);
INSERT INTO EmployeeAndManagers VALUES(4, 'Piyush', 6);
INSERT INTO EmployeeAndManagers VALUES(5, 'Vivek', 1);
INSERT INTO EmployeeAndManagers VALUES(6, 'Gaurav', 1);

SELECT * FROM EmployeeAndManagers;

SELECT A.EmpName AS Employee, B.EmpName AS Manager
FROM EmployeeAndManagers AS A 
INNER JOIN EmployeeAndManagers AS B 
ON A.MangID=B.EmpID;