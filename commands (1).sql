
-- create
CREATE TABLE EMPLOYEE (
  emid serial primary key,
  fname varchar(50) not null,
  lname varchar(50) not null,
  dept varchar(50),
  salary decimal(10,2)check(salary>0),
  joindate date not null,
  age int check (age>18)
);

-- insert
INSERT INTO EMPLOYEE(fname,lname,dept,salary,joindate,age)
VALUES ('amit','sharma','it',60000.00, '2022-05-01',29),
       ('neha','patel','hr',55000.00, '2021-08-15',32),
       ('ravi','kumar','finance',70000.00, '2020-03-10',35),
       ('anjali','verma','it',65000.00, '2019-11-22',28),
       ('suresh','reddy','operation',50000.00, '2023-01-10',26);

-- fetch data
SELECT * FROM EMPLOYEE;

--Q.1 retrieved fname and dept
SELECT fname, dept FROM EMPLOYEE;

--Q.2 update salary of it dept by 10%

UPDATE employee 
SET salary = salary+(salary*0.1)
where dept= 'it';

SELECT dept, salary FROM EMPLOYEE
where dept= 'it';

--Q.3 add new colomn email
alter table employee 
add column email varchar(20);

SELECT * FROM EMPLOYEE;

--Q.4 rename column dept to dept_name

alter table EMPLOYEE
rename column dept to dept_name;

SELECT * FROM EMPLOYEE order by emid asc;

--Q.5 retrieve employee name who are joined after jan 1,2021

select fname, lname from EMPLOYEE
where joindate>'2021-01-01';

--Q.6 change data type of salary column decimal to integer

alter table EMPLOYEE
alter column salary type integer;

\d EMPLOYEE; --chech data types

--Q.7 list all employees with thier age and salary in descending order of salary

select age, salary from EMPLOYEE
order by salary desc;

--Q.8 insert new employee 

INSERT INTO EMPLOYEE(fname,lname,dept_name,salary,joindate,age,email)
VALUES ('rohit','patil','account',50000,'2023-04-01',27,'rohit@gmial.com');

select * from EMPLOYEE order by emid asc;
  
--Q.9 update age +1 of employees 

update EMPLOYEE
SET age=age +1;

select emid, fname, age from EMPLOYEE;

--Q.10 delete employee who's age is greater than 30

delete from employee 
where age>30;

select fname, dept_name, age, salary from EMPLOYEE;