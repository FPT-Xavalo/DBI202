select W.Essn
from [dbo].[WORKS_ON] W
join [dbo].[PROJECT] P
on W.Pno= P.Pnumber and P.Plocation= 'Stafford'
group by W.Essn
Having COUNT(DISTINCT P.Pnumber)= (select COUNT(*) from [dbo].[PROJECT] where Plocation= 'Stafford')
