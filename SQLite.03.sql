 /* 
 Aggregate Functions:
 */
-- 21.  Display the employee name and their corresponding department name.
 SELECT E.Ename, D.Dname
 from Employees as E
 left JOIN departments as D on E.Deptno = D.Deptno;

-- 22.  Find the total number of employees in each department.
 select  D.Dname, count(ename) as No_of_Employees
 from Employees
 LEFT JOIN Departments as D on Employees.Deptno = D.Deptno
 GROUP by Dname;
 
-- 23.  Calculate the average salary of employees for each job title.
 SELECT DISTINCT job, Avg(salary) as avg_salary
 FROM Employees
 GROUP by Job;

-- 24.  Find the total budget allocated for all projects combined.
 SELECT sum(budget) as total_budget
 from projects;
 
-- 25.  Count how many projects have been completed for each client. 
SELECT c.Cname, COUNT(DISTINCT p.Project_ID) AS proj_complet
FROM Clients c
JOIN Projects p ON c.Client_ID = p.Client_ID
JOIN EmpProjectTask ept ON p.Project_ID = ept.Project_ID
WHERE ept.Status = 'Completed'
GROUP BY c.Cname;

-- 26.  Find the maximum salary for employees in the Development department.
SELECT max(E.salary) as max_salary
FROM Departments D 
JOIN Employees E on D.Deptno = E.Deptno
WHERE Dname = 'Development';

/* 
Join Queries:
*/
-- 27.  List all the projects along with the names of the clients using a join between Projects and Clients tables.
 SELECT p.descr as proj_name,   c.Cname
 FROM projects p
 JOIN Clients c on p.Client_ID = c.Client_ID
 GROUP by descr;

-- 28.  Show all the employees and their corresponding project descriptions where the project status is 'In Progress'.
 SELECT E.Ename as Emp_name, P.descr as Pro_discreption,  EPT.status
 FROM EmpProjectTask EPT
 JOIN Employees E  on EPT.Empno = E.Empno
 JOIN projects P on EPT.project_ID = P.project_ID
 WHERE status = 'In Progress';
 
-- 29.  List all the employees along with their department names and the projects they have been assigned to. 
-- 30. List the employees who worked on more than one project using a HAVING clause.
 SELECT Ename, COUNT(DISTINCT project_id)
 FROM EmpProjectTask
 GROUP BY Empno
 HAVING COUNT(DISTINCT project_id) > 1;
 
 
 
-- 21.  Display the employee name and their corresponding department name.
-- 22.  Find the total number of employees in each department.
-- 23.  Calculate the average salary of employees for each job title.
-- 24.  Find the total budget allocated for all projects combined.
-- 25.  Count how many projects have been completed for each client. 
-- 26.  Find the maximum salary for employees in the Development department.
-- 27.  List all the projects along with the names of the clients using a join between Projects and Clients tables.
-- 28.  Show all the employees and their corresponding project descriptions where the project status is 'In Progress'.
-- 29.  List all the employees along with their department names and the projects they have been assigned to. 
-- 30. List the employees who worked on more than one project using a HAVING clause.


