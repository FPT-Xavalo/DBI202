SELECT E.*
FROM EMPLOYEE E
left JOIN DEPENDENT D ON E.Ssn = D.Essn
GROUP BY E.Ssn, E.Fname, E.Lname, E.Minit, E.Bdate, E.Address, E.Sex, E.Salary, E.Super_ssn, E.Dno
HAVING COUNT(DISTINCT D.Essn) = 0 or MAX(DATEDIFF(YEAR, D.Bdate, GETDATE())) < 18
order by E.Fname
-- Tra ra Eploy k co ng than va ng than duoi 18 tuoi, sort theo ten