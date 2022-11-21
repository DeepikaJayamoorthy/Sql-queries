use New_joinee_2022
--table 1
CREATE TABLE JENI_EMPLOYEES
(
ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(40),
LAST_NAME VARCHAR(40),
SALARY DECIMAL(8,2),
DEPARTMENT_ID INT,
YEAR_OF_JOINING DATETIME,
YEAR_OF_RELIEVING DATETIME
)

select * from JENI_EMPLOYEES

--truncate table  JENI_EMPLOYEESupdate JENI_EMPLOYEES set DEPARTMENT_ID=22 where ID=102

insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(101,'sam','nath',1000,10,'2018-06-20 01:30:10','2022-06-21')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(102,'sam','vishal',2000,20,'2018-06-20 01:30:10','2022-06-21')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(103,'saran','kumar',3000,30,'2019-07-14 01:30:10','2022-04-20')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(104,'ram','kumar',4000,40,'2017-10-20 01:30:10','2021-06-21')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(105,'jaanu','ram',5000,50,'2018-06-20 01:30:10','2022-06-21')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(106,'suba','arjun',6000,90,'2019-06-20 01:30:10','2020-06-21')
--update JENI_EMPLOYEES set FIRST_NAME='suba',LAST_NAME='arjun',DEPARTMENT_ID=90 
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(107,'anu','magesh',7000,70,'2020-07-22 01:30:10','2022-06-21')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(108,'priya','ramkumar',8000,80,'2015-06-20 01:30:10','2022-06-21')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(109,'deepika','prakash',9000,90,'2002-06-10 01:30:10','2020-06-21')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(110,'ilakkiyaa','sibikarthick',10000,10,'2001-06-20 01:30:10','2019-06-21')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING)
values(111,'seetha','ram',12000,10,'2005-06-20 01:30:10','2019-06-21')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING)
values(112,'anu','praveen',12000,20,'2022-06-20 01:30:10')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING)
values(113,'hema','gowtham',12000,21,'2022-05-20 01:30:10')
insert into JENI_EMPLOYEES (ID,FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING)
values(114,' ',' ', 2000,21,'2022-05-20 01:30:10')
-----------------------------------------------
--table 2
CREATE TABLE DEEPIKA_DEPARTMENTS
(
DEPARTMENT_ID INT PRIMARY KEY,
MANAGER_ID INT,
DEPARTMENT_NAME VARCHAR(50))
select* from DEEPIKA_DEPARTMENTS
INSERT INTO DEEPIKA_DEPARTMENTS (DEPARTMENT_ID,MANAGER_ID ,DEPARTMENT_NAME)VALUES (10,001,'systemengineer')
INSERT INTO DEEPIKA_DEPARTMENTS (DEPARTMENT_ID,MANAGER_ID ,DEPARTMENT_NAME)VALUES (60,002,'manager')
INSERT INTO DEEPIKA_DEPARTMENTS (DEPARTMENT_ID,MANAGER_ID ,DEPARTMENT_NAME)VALUES (20,003,'softwareengineer')
INSERT INTO DEEPIKA_DEPARTMENTS (DEPARTMENT_ID,MANAGER_ID ,DEPARTMENT_NAME)VALUES (30,004,'systemengineer')
INSERT INTO DEEPIKA_DEPARTMENTS (DEPARTMENT_ID,MANAGER_ID ,DEPARTMENT_NAME)VALUES (40,006,'softwareengineer')
INSERT INTO DEEPIKA_DEPARTMENTS (DEPARTMENT_ID,MANAGER_ID ,DEPARTMENT_NAME)VALUES (22,007,'manager')
INSERT INTO DEEPIKA_DEPARTMENTS (DEPARTMENT_ID,MANAGER_ID ,DEPARTMENT_NAME)VALUES (50,008,'systemengineer')
INSERT INTO DEEPIKA_DEPARTMENTS (DEPARTMENT_ID,MANAGER_ID ,DEPARTMENT_NAME)VALUES (70,null,'systemengineer')
------------------------------------------------------------
update  JENI_EMPLOYEES set DEPARTMENT_ID=20 where ID=110
update JENI_EMPLOYEES set DEPARTMENT_ID=22 where ID=102

--1. Write a query to display all the name which starts with S
select * from JENI_EMPLOYEES where FIRST_NAME like 's%'
--2.Write a query to display all the name starts with S and ends with character n.
select * from JENI_EMPLOYEES where FIRST_NAME like 's%' and FIRST_NAME like '%n'
--3.Write a query to display all the employees who are all working for department 90 and their name must starts with ‘S’.
select * from JENI_EMPLOYEES where DEPARTMENT_ID=90 and FIRST_NAME like 's%'
--4.Display all the department id which contain 2 as 2nd character.
select DEPARTMENT_ID  from JENI_EMPLOYEES where DEPARTMENT_ID like '%2'
--5.Write a query to display all the employees who are all working in department 10,20,50 and 90.

select * from JENI_EMPLOYEES where DEPARTMENT_ID in (10,20,50,90)
--6.Write a query to display who are all getting salary between 5000 and 7000. 
select * from JENI_EMPLOYEES where SALARY between 5000 and 7000

--7.Display First_name, salary, department_id and manager_id of the employee who don't have manager
select FIRST_NAME ,SALARY ,a.DEPARTMENT_ID,b.MANAGER_ID from JENI_EMPLOYEES as a inner join DEEPIKA_DEPARTMENTS as b
on a.DEPARTMENT_ID = b.DEPARTMENT_ID 
where MANAGER_ID is null; 

--8.Display all the records in employees table and sort the first name in ascending order.
select * from JENI_EMPLOYEES order by FIRST_NAME 

--9.Display first name, department id and salary from employees table and sort the records
--( sort department id in ascending order and salary in descending order) 

select  FIRST_NAME, DEPARTMENT_ID,SALARY from JENI_EMPLOYEES 
order by   DEPARTMENT_ID,SALARY desc;

--10.Display first three characters from first name.

select left( FIRST_NAME ,3) from JENI_EMPLOYEES
--11.Display last two character from last name.
select right(LAST_NAME,2) from JENI_EMPLOYEES

--12.Display all the first name and position of a in that name (first occurrence of a). 
select FIRST_NAME,Charindex('a',FIRST_NAME) as POSITION  from JENI_EMPLOYEES;


--13. Write a query to select maximum salary from employees table
select Max(SALARY) As MaximumSalary from JENI_EMPLOYEES;

--14.Write a query to select second maximum salary from employees table.
select max(SALARY) from JENI_EMPLOYEES where SALARY <(select max(SALARY) from JENI_EMPLOYEES);

--15.Display average salary in the department 90
select avg(SALARY) As Average_Salary from JENI_EMPLOYEES where DEPARTMENT_ID=90;

--16.Display number of employees joined in each year into department 30.
select Count(*)as countofyear,year(YEAR_OF_JOINING)as yearofjoining
from JENI_EMPLOYEES where DEPARTMENT_ID =30 group by year(YEAR_OF_JOINING) ;

--17.Display average salary for employees who did a job in the past.
select * from JENI_EMPLOYEES
SELECT YEAR_OF_JOINING, AVG(SALARY) AS 
AVERAGE_SALARY FROM JENI_EMPLOYEES GROUP BY YEAR_OF_JOINING ;

--18..Display the month in which more than 5 employees joined in any department
select Count(*) as Count,datename (month,YEAR_OF_JOINING) as month from JENI_EMPLOYEES
group by datename(month,YEAR_OF_JOINING)
having count (ID)>5

--19.Display employee last name, starting date for all jobs from 2000 to 2005.
select LAST_NAME ,YEAR_OF_JOINING from JENI_EMPLOYEES  where year( YEAR_OF_JOINING) between 2000 and 2005;

--20.Display years in which more than 10 employees joined.
select count(YEAR_OF_JOINING) as count,year(YEAR_OF_JOINING)
from JENI_EMPLOYEES
group by year(YEAR_OF_JOINING)
having (year(YEAR_OF_JOINING))>10


--where (year(YEAR_OF_JOINING))>10

--21.Display employee ID for jobs with average salary more than 10000. 
select DEPARTMENT_ID ,avg(SALARY)as SALARY from JENI_EMPLOYEES  
group by  DEPARTMENT_ID
having avg(SALARY)>10000;

--22.Display the number of days between working for all employees.
select ID,DATEDIFF(day,YEAR_OF_JOINING,YEAR_OF_RELIEVING) as days from JENI_EMPLOYEES;

--23.Display employees who joined in the current year. 
select * from JENI_EMPLOYEES where year(YEAR_OF_JOINING) = 2022

--24.Display first name in upper case and last name in lower case.
select upper(FIRST_NAME) as firstname, lower(LAST_NAME) as lastname from JENI_EMPLOYEES 
--25 . Display the length of first name for employees where last name contain character ‘b’ after 3rd position. 

select len(FIRST_NAME) as firstname ,LAST_NAME from JENI_EMPLOYEES where LAST_NAME like '___b%'

--26.Display first name and experience of the employees.
select FIRST_NAME, year(YEAR_OF_RELIEVING)-year(YEAR_OF_JOINING) as experience from JENI_EMPLOYEES;

--27.Display employees who joined in the month of May. 

select * from JENI_EMPLOYEES where(month(YEAR_OF_JOINING))=5

--28.write a SQL query to find those employees who earn more than the average salary. Return employee ID, first name, last name.

select ID, FIRST_NAME ,LAST_NAME
from JENI_EMPLOYEES
where SALARY > (select avg(SALARY) from JENI_EMPLOYEES)



--29.Difference between primary key and Foreign key with exmple.
create table JENIDEEPI_EMPLOYEES(DepartmentId int foreign key references JENI_EMPLOYEES (ID),EmployeeName varchar(30),Department varchar(35))
insert into JENIDEEPI_EMPLOYEES (DepartmentId,EmployeeName, Department) values (101,'Abdul','SoftwareEngineer')
insert into JENIDEEPI_EMPLOYEES (DepartmentId,EmployeeName, Department) values (102,'Anu','Manager')
insert into JENIDEEPI_EMPLOYEES (DepartmentId,EmployeeName, Department) values (103,'prem','SoftwareEngineer')
insert into JENIDEEPI_EMPLOYEES (DepartmentId,EmployeeName, Department) values (104,'joy','SoftwareEngineer')
insert into JENIDEEPI_EMPLOYEES (DepartmentId,EmployeeName, Department) values (105,'deepika','SoftwareEngineer')
delete from JENI_EMPLOYEES where ID =101
delete from JENIDEEPI_EMPLOYEES where DepartmentId =101
select *from JENI_EMPLOYEES
select * from JENIDEEPI_EMPLOYEES

--30.Repalce ‘null’ value to ‘AAA’ 
update JENI_EMPLOYEES set FIRST_NAME='AAA'where ID=114

--31.Create View table for ID,FIRST_NAME,LAST_NAME, DEPARTMENT_ID,DEPARTMENT_NAME.
sp_rename JENIDEEPI, JENI_VIEW 
create view JENIDEEPI
as 
select ID,FIRST_NAME,LAST_NAME,
e.DEPARTMENT_ID,DEPARTMENT_NAME from JENI_EMPLOYEES as e inner join DEEPIKA_DEPARTMENTS as d on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

select*from JENI_VIEW;

--32.Create SYNONYMS for EMPLOYEE table.
create synonym JENIFER_EMPLOYEES for JENI_EMPLOYEES  ;
select * from JENIFER_EMPLOYEES
create synonym DEEPI_DEPARTMENTS for DEEPIKA_DEPARTMENTS ;

--33.Create a procedure for who are joined between 2 dates.
create procedure JENI_PROCEDURE 
as  
begin
select*from JENIFER_EMPLOYEES
where YEAR_OF_JOINING between '2020-07-22 01:30:10' and '2022-06-21'
end


exec JENI_PROCEDURE
--34.Create a procedure for insert a rows in Department table.

--ALTER procedure JENIFER_PROCEDURE 
create procedure JENIFER_PROCEDURE 

as
begin
insert into DEEPIKA_DEPARTMENTS values (800,010,'SoftwareEngineer')
insert into DEEPIKA_DEPARTMENTS values (801,011,'SoftwareEngineer')
insert into DEEPIKA_DEPARTMENTS values (802,012,'SoftwareEngineer')

end
 
exec  JENIFER_PROCEDURE 
  
select * from  DEEPIKA_DEPARTMENTS

--35.write a query for convert ‘2006-12-30 00:38:54.840’ to 20061230003854  

  select replace(convert(varchar, '2006-12-30',101),'-','') + replace(convert(varchar, '00:38:54',108),':','');	


 
  