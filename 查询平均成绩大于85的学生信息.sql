select s.SId as "学号", s.Sname as "姓名", ave as "平均成绩"
from student s
right join (select SId, sum(Score)/count(Score) as ave
			from sc
            group by SId
            having ave >= 85) a 
on s.SId = a.SId