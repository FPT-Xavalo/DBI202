









































--5
select Fname,Lname
from EMPLOYEE
where Salary> (select max (Salary)
from EMPLOYEE
where Dno= 5)

