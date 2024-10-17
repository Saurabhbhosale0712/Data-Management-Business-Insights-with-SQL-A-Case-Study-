-- 1.	Create the Clients table using the information provided above. Once tables are ready,fill in the given data of this table.  
CREATE TABLE Clients (
  Client_ID INT PRIMARY KEY,
  Cname VARCHAR(30) NOT NULL,
  Address VARCHAR(30),
  Email VARCHAR(30) UNIQUE,
  Phone VARCHAR(10),
  Business VARCHAR(20) NOT NULL
 );
INSERT INTO Clients (Client_ID, Cname, Address, Email, Phone, Business)
 VALUES 
  (1001, 'ACME Utilities', 'Noida',    'contact@acmeutil.com',   '9567880032',   'Manufacturing'),
   (1002, 'Trackon Consultants', 'Mumbai',   'consult@trackon.com', '8734210090',   'Consultant'),
    (1003,   'MoneySaver Distributors', 'Kolkata',   'save@moneysaver.com',   '7799886655',  'Reseller'),
     (1004, 'Lawful Corp', 'Chennai',   'justice@lawful.com', '9210342219',  'Professional');
SELECT * from Clients;

-- 2.	Create the Departments table using the information provided above. Once tables are ready, fill in the given data of this table.  
CREATE TABLE Departments(
  Deptno int PRIMARY key,
  Dname varchar(15),
  Loc varchar(15)
  );
INSERT INTO Departments(Deptno, Dname, Loc)
  VALUES(10, 'Design', 'Pune'),
         (20,'Development',	'Pune'),
          (30,'Testing','Mumbai'),
           (40, 'Document', 'Mumbai');
SELECT * FROM Departments;

-- 3.  Create the Employees table using the information provided above. Once tables are ready, fill in the given data of this table.  
CREATE TABLE Employees(
  Empno INT PRIMARY KEY,
  Ename VARCHAR(15) not null,
  Job varchar(15) not null,
  salary decimal check (salary > 0),
  Deptno int,
  FOREIGN key (Deptno) REFERENCES Departments(Deptno)
  );
INSERT into Employees(Empno, Ename, Job, salary, Deptno)
     VALUES( 7001, 	'Sandeep',	'Analyst',	25000,	10),
            (7002,	'Rajesh',	'Designer',	30000,	10),
             (7003,	'Madhav',	'Developer', 40000,	20),
              ( 7004,	'Manoj',	'Developer', 40000,	20),
               (7005,	'Abhay',	'Designer',	35000,	10),
                (7006,	'Uma',	'Tester',  30000,  30),
               (7007,	'Gita',	'Tech Writer', 30000, 40),
              (7008,	'Priya',	'Tester',	35000,	30),
             (7009,	'Nutan',	'Developer', 45000, 20),
            (7010,	'Smita',	'Analyst', 20000, 10),
           (7011,	'Anand',	'Project Mgr', 65000, 10);
 SELECT * from Employees;
   
-- 4.	Create the Projects table using the information provided above. Once tables are ready, fill in the given data of this table. 
CREATE table projects (
     project_ID int primary key,
     descr varchar(15) NOT NULL,
     start_date date, 
     Planned_end_date DATE,
     actual_end_date DATE CHECK( actual_end_date > Planned_end_date),
     budget decimal CHECK(budget > 0),
     Client_ID int,
     FOREIGN key (Client_ID) REFERENCES Clients(Client_ID)
    );  
INSERT INTO projects (project_ID, descr, start_date, planned_end_date, actual_end_date, budget, Client_ID)
   VALUES 
      (401, 'Inventory', '2011-04-01', '2011-10-01', '2011-10-31', 150000, 1001),
       (402, 'Accounting', '2011-08-01', '2012-01-01', NULL, 500000, 1002), 
        (403, 'Payroll', '2011-10-01', '2011-12-31', NULL, 75000, 1003), 
         (404, 'Contact Mgmt', '2011-11-01', '2011-12-31', NULL, 50000, 1004);   
 SELECT * from projects;
      
-- 5.	Create the EmpProjectTasks table using the information provided above. Once tables are ready, fill in the given data of this table.  
  create table EmpProjectTask (
    project_ID INT,
    Empno INT,
    start_date DATE,
    End_date DATE,
    Task varchar(15) NOT NULL,
    Status varchar(15) NOT NULL,
    PRIMARY key (project_ID, Empno),
    FOREIGN key (project_ID) REFERENCES projects(project_ID) 
    FOREIGN key (Empno) REFERENCES Employees(Empno)
    );
 INSERT INTO EmpProjectTask( project_ID, Empno, start_date, End_date, Task, Status)
 VALUES
    (401, 7001, '2011-04-01', '2011-04-20', 'System Analysis', 'Completed'),
      (401, 7002, '2011-04-21', '2011-05-30', 'System Design', 'Completed'),
     (401, 7003, '2011-06-01', '2011-07-15', 'Coding', 'Completed'),
    (401, 7004, '2011-07-18', '2011-09-01', 'Coding', 'Completed'),
    (401, 7006, '2011-09-03', '2011-09-15', 'Testing', 'Completed'),
      (401, 7009, '2011-09-18', '2011-10-05', 'Code Change', 'Completed'),
    (401, 7008, '2011-10-06', '2011-10-16', 'Testing', 'Completed'),
      (401, 7007, '2011-10-06', '2011-10-22', 'Documentation', 'Completed'),
    (401, 7011, '2011-10-22', '2011-10-31', 'Sign off', 'Completed'),
      (402, 7010, '2011-08-01', '2011-08-20', 'System Analysis', 'Completed'),
    (402, 7002, '2011-08-22', '2011-09-30', 'System Design', 'Completed'),
    (402, 7004, '2011-10-01', NULL, 'Coding', 'In Progress');
 SELECT * from EmpProjectTask;

-- 6.	Display customer details with business as ‘Consultant’.
 SELECT * 
 FROM Clients
 WHERE Business = 'Consultant';

-- 7.	Display employee details who are not ‘Developers’.
 SELECT * 
 from Employees
 where job <> 'Developer';
 
-- 8.	Display project details with budget > 100000.
 SELECT * 
 FROM projects
 WHERE budget > 100000;
 
-- 9.	Display details of project that are already finished.
 SELECT * 
 FROM projects
 where actual_end_date is not null;
 
-- 10.	Display employee names beginning with ‘M’.
 SELECT * 
 from Employees
 WHERE Ename LIKE 'M%';



-- 1.	Create the Clients table using the information provided above. Once tables are ready,fill in the given data of this table.  
-- 2.	Create the Departments table using the information provided above. Once tables are ready, fill in the given data of this table.  
-- 3.  Create the Employees table using the information provided above. Once tables are ready, fill in the given data of this table.  
-- 4.	Create the Projects table using the information provided above. Once tables are ready, fill in the given data of this table. 
-- 5.	Create the EmpProjectTasks table using the information provided above. Once tables are ready, fill in the given data of this table.  
-- 6.	Display customer details with business as ‘Consultant’.
-- 7.	Display employee details who are not ‘Developers’.
-- 8.	Display project details with budget > 100000.
-- 9.	Display details of project that are already finished.
-- 10.	Display employee names beginning with ‘M’.

 

 