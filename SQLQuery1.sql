USE Students;
SELECT * FROM StudentsInfo;

INSERT INTO StudentsInfo VALUES('05', 'Suryash Rastogi', 'RK Rastogi', '8520025813', 'BTM Layout', 'Bengaluru', 'India');
INSERT INTO StudentsInfo VALUES('13','Nkhilesh Kushwaha', 'RK Kushwaha', '7896541230','EC', 'GKP', 'UK');

SELECT * FROM StudentsInfo WHERE ID > '1' OR ID='3';	/* students ID greater than or equal to 3 */

SELECT * FROM StudentsInfo WHERE StudentName LIKE 's%';		/* students name starting with S */

SELECT * FROM StudentsInfo WHERE StudentName LIKE 'd____%';		/* students name starting with D and then 5 letters more */

SELECT * FROM StudentsInfo WHERE StudentName LIKE 'a%a';	/* students name starting with A and ending with A */

SELECT (StudentName+','+ParentName) AS Name FROM StudentsInfo;		/* string concatenation */

SELECT AVG(ID) FROM StudentsInfo;		/* calculating average */

SELECT StudentName, ParentName
FROM StudentsInfo
WHERE StudentAddress IN (SELECT StudentAddress FROM StudentsInfo WHERE Country= 'India')

CREATE TABLE Subjects(SubID int, StudID int, SubName varchar(8000));

INSERT INTO Subjects VALUES('10', '10', 'Maths');
INSERT INTO Subjects VALUES('2', '11', 'Physics');
INSERT INTO Subjects VALUES('3', '12', 'Chemistry');

SELECT * FROM Subjects;

SELECT Subjects.SubID, StudentsInfo.StudentName
FROM Subjects
INNER JOIN												/* INNER JOIN */
StudentsInfo ON
Subjects.StudID=StudentsInfo.ID;

SELECT Subjects.SubID, StudentsInfo.StudentName
FROM StudentsInfo
LEFT JOIN												/* LEFT JOIN */
Subjects ON
StudentsInfo.ID= Subjects.StudID
ORDER BY StudentsInfo.StudentName;

SELECT Subjects.SubID, StudentsInfo.StudentName
FROM StudentsInfo
RIGHT JOIN							/* RIGHT JOIN */
Subjects ON
StudentsInfo.ID= Subjects.StudID
ORDER BY StudentsInfo.StudentName;

CREATE PROCEDURE StudentsCity @SCity varchar(8000)
AS
SELECT * FROM StudentsInfo
WHERE City= @SCity
GO															/* Stored Procedure */
SELECT * FROM StudentsInfo
EXEC StudentsCity @SCity ='Bengaluru';

CREATE LOGIN Sample1 WITH PASSWORD= 'suri';
CREATE USER Myself FOR LOGIN Sample1

GRANT SELECT ON StudentsInfo TO Myself
REVOKE SELECT ON StudentsInfo TO Myself