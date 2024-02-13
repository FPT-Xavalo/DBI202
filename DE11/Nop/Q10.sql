update [dbo].[EMPLOYEE]
set Salary= Salary*1.1
where Ssn in (
select DISTINCT E.Ssn
from EMPLOYEE E
join DEPENDENT D
on E.Ssn= D.Essn
where
 DATEDIFF(YEAR,D.Bdate ,GETDATE()) < 18 
 )
 -- update luong neu co ng than nho hon 18