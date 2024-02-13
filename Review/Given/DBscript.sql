create table salary_grade
(
 	grade INTEGER primary key not null,
 	min_salary INTEGER,
            max_salary INTEGER
  )
 create table department(
 	  dep_id INTEGER primary key not null,
 	 dep_name VARCHAR(20),
 	dep_location VARCHAR(20)
)

create table employees
(
 emp_id INTEGER primary key not null,
 emp_name VARCHAR(15),
 	job_name VARCHAR(10),
manager_id INTEGER,
 	hire_date DATE,
 	saraly DECIMAL(10,2),
 	commission DECIMAL(7,2),
 	dep_id INTEGER FOREIGN KEY REFERENCES department(dep_id)
)
insert into department values(1001,'finance','sydney')
insert into department values(2001,'audit','melbourne')
insert into department values(3001,'marketing','perth')
insert into department values(4001,'production','brisbane')
Insert into employees values(68319,'KAYLING','PRESIDENT',68319,'1991-06-09',6000,null,1001)
Insert into employees values(66928,'BLAZE','MANAGER',68319,'1991-06-09',2750.00,null,3001)
Insert into employees values(67832,'CLARE','MANAGER',68319, '1991-06-09',2550.00,null,1001)
Insert into employees values(65646,'JONAS','MANAGER',68319, '1991-04-02',2957.00,null,2001)
Insert into employees values(64989,'ADELYN','SALESMAN',66928,'1991-02-20',1700.00,400.00,3001)
Insert into employees values(65271,'WADE','SALESMAN',66928, '1991-02-22',1350.00,600.00,3001)
Insert into employees values(66564,'MADDEN','SALESMAN',66928,'1991-09-28',1350.00,1500.00,3001)
Insert into employees values(68454,'TUCKER','SALESMAN',66928,'1991-09-08',1600.00,0.00,3001)
Insert into employees values(68736,'ADNRES','CLERK',67858,'1997-05-23',1200.00,null,2001)
Insert into employees values(69000,'JULIUS','CLERK',66928,'1991-12-03',1050.00,1050.00,3001)
Insert into employees values(69324,'MARKER','CLERK',67832,'1992-01-23',1400.00,null,1001)
Insert into employees values(67858,'SCARLET','ANALYST',65646,'1997-04-19',3100.00, null,2001)
Insert into employees values(69062,'FRANK','ANALYST',65646,'1991-12-03',3100.00, null,2001)
Insert into employees values(63679,'SANDRINE','CLERK',69062,'1990-12-18',900.00,null,2001)






