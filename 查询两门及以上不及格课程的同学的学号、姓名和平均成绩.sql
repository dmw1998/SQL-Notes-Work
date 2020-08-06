select student.SId as "学生编号", student.Sname as "学生姓名", ave as "平均成绩"
from student
right join (select SId, sum(Score)/count(Score) as ave
			from sc
            where SId in (select SId from sc
						where Score < 60
                        group by SId
                        having count(Score) >= 2)
			group by SId) s 
on student.SId = s.SId