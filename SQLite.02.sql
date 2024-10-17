/*
  Basic Queries:
*/
-- 11.	Display employee names ending with ‘a’.
 SELECT * 
 from Employees
 WHERE Ename like '%a';
 
-- 12.	Display the task that is ‘In Progress’.
 SELECT * 
 from EmpProjectTask
 WHERE status = 'In Progress';

-- 13.	Display employee name and salary in descending order of salary.
 SELECT Ename, salary
 from Employees
 ORDER by salary DESC;
 
-- 14.	Display tasks in ascending order of end date.
 SELECT Task
 from EmpProjectTask
 ORDER by End_date ASC;
 
-- 15.	Display distinct jobs from Employees table.
 SELECT DISTINCT Job 
 from Employees;
 
-- 16.	Display employee name, salary and bonus calculated as 25% of salary.
 SELECT Ename, Salary, (Salary * 0.25) AS Bonus
 FROM Employees;

-- 17.  Display all details of employees who are Designers and work in the Design department.
 SELECT * 
 from Employees 
 join Departments on Employees.Deptno = Departments.Deptno
 where Dname = 'Design' and Job = 'Designer';
 
-- 18.  Find all the clients who have projects with a budget greater than 200,000.
 SELECT cname
 from Clients 
 join projects on Clients.client_id = projects.Client_ID
 where budget > 200000;
 
-- 19.  List the projects that have not been completed yet (Actual_End_date is NULL).
 SELECT * 
 from projects
 WHERE actual_end_date is null;
 
-- 20.  Retrieve the employees who have completed tasks and their task status is marked as 'Completed'.
 select Ename
 from Employees
 JOIN EmpProjectTask on Employees.Empno = EmpProjectTask.Empno
 where Status = 'Completed';




-- 11.	Display employee names ending with ‘a’.
-- 12.	Display the task that is ‘In Progress’.
-- 13.	Display employee name and salary in descending order of salary.
-- 14.	Display tasks in ascending order of end date.
-- 15.	Display distinct jobs from Employees table.
-- 16.	Display employee name, salary and bonus calculated as 25% of salary.
-- 17.  Display all details of employees who are Designers and work in the Design department.
-- 18.  Find all the clients who have projects with a budget greater than 200,000.
-- 19.  List the projects that have not been completed yet (Actual_End_date is NULL).
-- 20.  Retrieve the employees who have completed tasks and their task status is marked as 'Completed'.


