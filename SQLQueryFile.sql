create database emp_dept;
use emp_dept;
DROP TABLE IF EXISTS emp;
select * from information_schema.tables;
DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
  deptno int primary key,
  dname varchar(14) default NULL,
  loc varchar(13) default NULL
);

CREATE TABLE emp (
  empno int primary key,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno int not null,
  foreign key (deptno) references dept(deptno)
); 	


--insert data into dept
INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');


--insert data into emp
INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

--practise the querry
select * from emp
select * from dept
select left('aptech',2)
select right('aptech',2)
select ename , '----->',job as Name from emp
select ename + '----->'+job as Team_Name from emp
select  distinct job from emp

select top 5 * from emp
select top 2 ename, sal from emp where deptno = 10
select * from emp where sal >= 1000 and sal < 2000
select * from emp where job = 'clerk' or job = 'salesman'
select ename from emp where ename like 'S%'
select ename from emp where ename like 'S_O%'
select ename from emp where ename like '[A-D]%'
select ename from emp where ename like '[^A-D]%'






--Assignment
-- 1.	Query to display Employee Name, Job, Hire Date, Employee Number; for each employee with the Employee Number appearing first. 
select empno, ename, job,hiredate  from emp
-- 2.	Query to display unique deptno from the Employee Table. 
select deptno from dept;
-- 3.	Query to display the Employee Name concatenated by a Job separated by a comma. 
select ename+' , '+job as profession from emp;
-- 4.	Query to display the Employee Name and Salary of all the employees earning more than $2850. 
select ename, sal from emp where sal > 2850;
--5.	Query to display Employee Name and Department Number for Employee No= 7844. 
select ename, deptno from emp where empno = 7844;
-- 6.	Query to display Employee Name and Salary for all employees whose salary is not in the range of $1500 and $2850. 
select ename, sal from emp where sal not between 1500 and 2850;
--7.	Query to display Employee Name and Department No. of all the employees in Dept 10 and Dept 30 in alphabetical order by name.
select ename, deptno from emp where deptno in( 10 , 30) order by ename;
--8.	Query to display the Name and Hire Date of every Employee who was hired in 1981.
select ename, hiredate from emp where year(hiredate) = 1981;
--9.	Query to display the Name and Job of all employees who have not assigned a manager. 
select ename, job from emp where mgr is null;
--10.	Query to display the Name, Salary, and Commission for all the employees who earn a commission. 
select ename as employee_name, sal as salary, comm as commission from emp 
where comm is not null and comm > 0;
--11.	Query to display records where employes commission is greater than salary
select sal , comm from emp where comm > sal;
--12.	Query to display the Name of all the employees where the third letter of their name is ‘A’. 
select ename from emp where ename  like '__A%'
--13.	Query to display the Name of all employees either have ‘R’s  in their name and are either in Dept No = 30 or their Manger’s Employee No = 7788. 
select ename from emp where ename like '%R%' and (deptno = 30 or mgr = 7788);
--14.	Query to display Name, Salary, and Commission for all employees whose Commission amount is greater than their Salary increased by 5%. 
select ename, sal, comm from emp where comm > (sal * 1.05)
--15.	Query to display the following for each employee <E-Name> earns < Salary> monthly but wants < 3 * Current Salary >. Label the Column as Dream Salary. 
select ename as E_Name, sal as Earns_Monthly ,(3*sal ) as Dream_Salary from emp;
--16.	Query to display Name, Hire Date, and Day of the week on which the employee started.
select ename, hiredate, datename(weekday,hiredate) as DAY_of_week from emp
--17.	Query to display Unique Listing of all Jobs that are in Department number 30. 
select distinct(job) from emp where deptno = 30;
--18.	Query to display Name, Job, Department No. And Department Name for all the employees working at the Dallas location. 
SELECT e.ename, e.job, e.deptno, d.dname  
FROM emp e  
JOIN dept d ON e.deptno = d.deptno  
WHERE d.loc = 'Dallas';
--19. Query to display the number of employees performing the same Job type functions. 
select job, count(*) as NumberofEmployees from emp group by job
--20.	Query to display the names and salaries of all employees who report to a supervisor named ‘King’ 
SELECT e.ename, e.sal FROM emp e JOIN emp m ON e.mgr = m.empno WHERE m.ename = 'KING';
--21.  Dispaly all the employee where name either start with A or starts with K.
select ename from emp where ename like 'A%' or ename like 'k%'
--22. Display all the employees where 2nd character of name is U and fourth character is N.
select ename from emp where ename like '_U_N%' 
--23 Display all the employees where name starts from alphabet S to Z
select ename from emp where ename like '[S-Z]%'


--group by Assignment
--1.  	Display department wise average salary.
select dept.dname, round(avg(emp.sal),2) as AVG 
from emp 
join dept on
dept.deptno = emp.deptno group by dept.dname;
--2.  	Display department wise and job wise average salary.
select dept.dname,emp.job, round(avg(emp.sal),2) as AVG 
from emp 
join dept on
dept.deptno = emp.deptno group by dept.dname,emp.job;
--3.  	Display department wise minimum salary , maximum salary and sum of salary.
select dept.dname,max(emp.sal) as Maximum, min(emp.sal) as Minimum, sum(emp.sal) as Total
from emp 
join dept on
dept.deptno = emp.deptno group by dept.dname;
--4.  	Display all the employees in each job where salary is greater than 3000.
select job, ename, sal 
from emp 
where sal > 3000 
group by job, ename, sal;
--5.  	Display minimum join date and maximum join date.
select min(hiredate),max(hiredate) from emp
--6.  	Display the department having more than 2 salesman.
select deptno, job, count(job) from emp where job = 'Salesman' 
group by deptno ,job having count(job)>2
--7. Display all ename ,salary, deptno for each job where salary is greater than 3000
select job, ename, sal, deptno 
from emp 
where sal > 3000 
group by job, ename, sal, deptno;
