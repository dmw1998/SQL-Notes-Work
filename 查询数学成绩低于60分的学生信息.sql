select s.Sname, a.Score
from student s 
right join (select SId, Score from sc
			where CId = (select CId from course
						 where Cname = "数学")
			and Score < 60 ) a
on s.SId = a.SId