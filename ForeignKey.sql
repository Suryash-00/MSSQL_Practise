USE Students_Database;

create table Customer_tbl 
(
C_id int primary key, 
C_Name varchar(50), 
C_Address varchar(max), 
City varchar(50)
);

insert into Customer_tbl values(1,'Suryash','BTM Layout','Bengaluru');
insert into Customer_tbl values(2,'Daksh','Adarsh Nagar','Lucknow');
insert into Customer_tbl values(3,'Aditya','Sarojini Nagar','Delhi');
insert into Customer_tbl values(4,'Yash','Aminabad','Lucknow');

SELECT * FROM Customer_tbl;

create table Order_C
(
Ord_Id int primary key, 
Item varchar(50), 
Quantity int, 
Price_Of_1 int, 
C_id int foreign key references Customer_tbl(C_id)
);

insert into Order_C VALUES (111, 'Monitor', 2, 4000, 2);
insert into Order_C VALUES (222, 'Cabinet', 1, 8000, 1);
insert into Order_C VALUES (333, 'Mouse', 3, 500, 1);
insert into Order_C VALUES (444, 'Keyboard', 1, 3000, 3);
insert into Order_C VALUES (555, 'Camera', 2, 3000, 4);

SELECT * FROM Order_C;
SELECT * FROM Customer_tbl;

INSERT INTO Order_C VALUES (666, 'Mouse', 2, 600, 5);		/* Confliction with foreign key constraint*/
DELETE FROM Customer_tbl WHERE C_id=3;						/* Confliction with foreign key constraint*/

ALTER TABLE Order_C DROP CONSTRAINT FK__Order_C__C_id__49C3F6B7;	/* To delete foreign key constraint*/

ALTER TABLE Order_C ADD FOREIGN KEY (C_id) REFERENCES Customer_tbl(C_id);	/* To add foreign key constraint again*/