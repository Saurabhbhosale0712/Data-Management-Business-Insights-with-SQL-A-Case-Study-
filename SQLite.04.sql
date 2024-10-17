/* 
Subqueries:
*/
-- 31.  Find the employees whose salary is greater than the average salary of all employees.
 SELECT Ename as Employ_name 
 FROM Employees
 WHERE salary > (SELECT avg(salary) from Employees);
 
-- 32.  List the departments where more than 2 employees are assigned using a subquery.
 SELECT Dname
 FROM Departments
 WHERE Deptno IN (
    SELECT Deptno 
    FROM Employees
    GROUP BY Deptno
    HAVING COUNT(Empno) > 2
 );

-- 33.  Display the projects whose budget exceeds the average project budget.
 SELECT  descr
 FROM projects
 WHERE budget > (SELECT avg(budget)
                 from projects);

-- 34.  Find the employees who have worked on the project 'Inventory' using a subquery.
 SELECT Ename 
 FROM Employees
 WHERE Empno = (SELECT Empno
                FROM EmpProjectTask
                where Project_id =  (SELECT Project_id
                                     FROM projects
                                     WHERE Descr = 'Inventory')); 


-- 35.  Retrieve the employees who have completed the most tasks by comparing their task count against other employees.


