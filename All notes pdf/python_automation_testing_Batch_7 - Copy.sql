
Create Database Treenetra -- we have created a database as treenetra

use Treenetra

create table Student(Id int, Name varchar(50),courseID int)

-- CRUD - create , Read , Update , Delete -- mini project

select * from STUDENT

insert into student values(106,'Ajay verma',6)

insert into student (id,name) values (102,'neha')

update student set name = 'Ajay Mishra' where id = 101

update student set courseid = 3 where id = 102

delete from student where id = 106

Task -1

/*
create one table for student and course. 
insert 10 rows of information using CRUD operation  
*/



Create table "Student Details" -- Stu_details

Create table Student_details(id int, name varchar(10), course_id int)

--	Select all rows from a table?
select * from Student_details

sp_help student_details 

--method 1
insert into Student_details values(1) -- not working

insert into Student_details values(1,25) -- not working

insert into Student_details values(1,25,101)

insert into Student_details values(5,'pooja',106)

insert Student_details values(6,'mona',102)

--method 2
--	Select specific columns from a table?
insert into Student_details (id) values (2) -- working
insert into Student_details (id,course_id) values (2,102) -- working
insert into Student_details (id,name,course_id) values (2,'Amit',102) 

-- where 

--	Select rows based on a condition?
select * from Student_details where course_id = 101

select * from Student_details
select name from Student_details where course_id = 106


--	Select rows based on multiple conditions?
select * from Student_details where course_id = 101 and  name = 'rohan'

select * from Student_details where course_id = 106 and  name = 'han'

select * from Student_details where course_id = 110 and  name = 'pooja'

select * from Student_details where course_id = 110 and  name = 'oja'

select * from Student_details where course_id = 111 or  name = 'han'

select * from Student_details where course_id = 101 or  name = 'han'

select * from Student_details where course_id = 111 or  name = 'rohan'

select * from Student_details where course_id = 101 or  name = 'han'

select * from Student_details where course_id = 101 or  name = 'pooja'
AND   |  or   

0 - False
1 - True
And
0 0 0 = False
0 1 0 = False
1 0 0 = False
1 1 1 = True


or

0 0 0 = false
0 1 1 = True
1 0 1 = True
1 1 1 = True
--	Update data in a table?

update Student_details set id = 4 where name = 'amit'

--	Delete rows from a table?

delete from Student_details where name= 'ANBC'

delete from Student_details  where name is null

select * from Student_details

truncate table student_details -- ALL ROWS

drop table Student_details -- TABLE DELETE

--	Join two tables?

create table student_details(S_id int, S_name varchar(5),C_ID int)

create table course_details(C_id int, C_name varchar(5))

insert into course_details VALUES (102,'JAVA')
insert into course_details VALUES (103,'PYTHO')
insert into course_details VALUES (103,'PYTHON') -- NOT WORKING BEACUSE OF DATA LIMIT IS 5


select * from student_details --1
select * from course_details --2
 
SYN --- SELECT * FROM student_details INNER JOIN course_details ON student_details.C_ID = course_details.c_id

select student_details.S_id,student_details.S_name,course_details.C_name 
from student_details join course_details 
on student_details.c_id = course_details.c_id

-- what is variable in SQL Server ?
-- variable are the object which acts as a placeholder to a memory location. variable hold single data value.


________________________________________________________________________________________________
21 sept 2023

create table s1(
sid int primary key, -- unique + not null
name varchar(50),
cid int)

select * from s1

insert into s1 values (101,'AA',2)  
insert into s1 values (101,'BB',6)-- duplicate key value cant insert
insert into s1 values (102,'CC',5)
insert into s1 values ('BB',6)
insert into s1 (name,cid)values ('DD',6)  -- Cannot insert the value NULL into column 'sid', table 'Treenetra.dbo.s1'; column does not allow nulls. INSERT fails.

sp_help s11

create table c1(
cid int primary key, 
cname varchar(50), 
cfees money,
sid int,
foreign key(sid) references s1(sid))
sp_help c1

-- composite key 

create table studentcourse(
studentid int,
courseid int,
enrolldate date,
primary key (studentid,courseid)
)
sp_help studentcourse -- store procedure is used to display information about db.

-- data types 

declare @myint int = 2147483647 --Signed range is from -2147483648 to 2147483647.
print(@myint)

declare @mydecimal decimal(10,2) = 15523.000005
print(@mydecimal)

declare @myfloat float = 3.564455
print(@myfloat)

declare @mybit bit  -- not supporting boolean 
print(@mybit)

select getdate() as Today_Date


declare @mychar char(8000)
set @mychar = 'kb'
print(@mychar)
select len(@mychar)
select datalength(@mychar)

declare @mychar varchar(8000)
set @mychar = 'java2023@gmail.com'
print(@mychar)
select len(@mychar)
select datalength(@mychar)

declare @mychar1 nchar(4000)
set @mychar1 = 'kb'
print(@mychar1)
select len(@mychar1)
select datalength(@mychar1)

declare @mychar2 nvarchar(4000)
set @mychar2 = 'java'
print(@mychar2)
select len(@mychar2)
select datalength(@mychar2)

declare @mymoney money
set @mymoney = 5000
print(@mymoney)


select * from student

insert into student values(1,'rahul', 101)
insert into student values(2,'parul', 102)
insert into student values(3,'kunal', 101)
insert into student values(4,'minal', 103)
insert into student values(5,'monal', 101)
insert into student values(6,'sonal', 102)
insert into student values(7,'kunal', 101)
insert into student values(8,'rehal', 103)
insert into student values(9,'mehal', 101)

-- identity


create table automatic_update(Id int identity,name varchar(50))

select * from automatic_update

insert into automatic_update values ('pooja'),('neha'),('mohan'),('rohan')

create table automatic_update1(Id int identity(101,1),name varchar(50))

select * from automatic_update1

insert into automatic_update1 values ('pooja'),('neha'),('mohan'),('rohan')

--task create table emp
empId 
empname 
empjoindate
empsalary
empactive
empcontact
empgmail

