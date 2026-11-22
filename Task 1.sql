create database employee;
use employee;

create table Employe(
emp_id int,
emp_name varchar(50),
dept varchar(50),
city varchar(50),
salary int,
hire_date date,
manager_id int);

select * from Employe;
alter table Employe add constraint primary key(emp_id);

insert into Employe value(1,"Arav Singh","IT","Pune",72000,20210315,Null);
insert into Employe value(2,"Sneha Rao","HR","Mumbai",48000,20220701,1),
(3,"Karan Metha","Sales","Delhi",55000,20230110,1),(4,"Priya Nair","IT","Pune",64000,20201123,1),
(5,"Ramesh Iyer","Finance","Mumbai",59000,20190530,NULL),(6,"Anita Desai","Sales","Pune",41000,20240210,3);

-- 1
select emp_name, salary from employe where dept="IT";
-- 2
select * from Employe where salary>5000 and city="Pune";
-- 3
select * from Employe where hire_date between "20220101" and "20231231";
-- 4
select * from Employe where city in("Pune","Mumbai","Delhi") and manager_id is NULL; 
-- 5
select emp_name from Employe where emp_name like "A%";
-- 6
select emp_name from Employe where emp_name like "%sh";
-- 7
select * from Employe where emp_name like "%an%";
-- 8
select emp_name from Employe where emp_name like "_a___";
-- 9
SELECT dept, COUNT(*) AS total_employees
FROM Employe
GROUP BY dept;
-- 10
SELECT city, AVG(salary) AS average_salary
FROM Employe
GROUP BY city;
-- 11
SELECT dept,
SUM(salary) AS total_salary,
MAX(salary) AS highest_salary
FROM Employe
GROUP BY dept;
-- 12
SELECT dept, city, COUNT(*) AS total_employees
FROM Employe
WHERE salary > 30000
GROUP BY dept, city;
-- 13
SELECT dept, COUNT(*) AS total_employees
FROM Employe
GROUP BY dept
HAVING COUNT(*) > 3;
-- 14
SELECT city, AVG(salary) AS average_salary
FROM Employe
GROUP BY city
HAVING AVG(salary) > 60000;
 -- 15
SELECT dept, SUM(salary) AS total_salary
FROM Employe
GROUP BY dept
HAVING SUM(salary) BETWEEN 200000 AND 500000;
-- 16
SELECT dept, AVG(salary) AS average_salary
FROM Employe
WHERE dept != 'HR'
GROUP BY dept
HAVING AVG(salary) > 45000
ORDER BY average_salary DESC;
-- 17
 select * from Employe order by salary desc limit 5;
 -- 18
 select * from Employe order by hire_date desc limit 3;
 -- 19
 select * from Employe order by salary desc limit 5 offset 5;
 -- 20
 select distinct salary from Employe order by salary desc limit 1 offset 2;
 -- 22
 select * from Employe where city="Pune" order by emp_name limit 10 offset 20;
 -- 23
SELECT dept, AVG(salary) AS average_salary,
COUNT(*) AS total_employees
FROM Employe
WHERE hire_date > '2021-12-31'
GROUP BY dept
HAVING COUNT(*) > 2
ORDER BY average_salary DESC
LIMIT 2 OFFSET 1;
-- 24
SELECT city, COUNT(*) AS total_employees
FROM Employe
WHERE LOWER(name) LIKE '%ar%'
GROUP BY city
HAVING COUNT(*) >= 2
ORDER BY total_employees DESC
LIMIT 3; 
 



 