select student.SId as "学号", student.Sname as "学生姓名", Score1,Score2,Score3,ave as "平均成绩"
from student
left join (select SId, Score as Score1 from sc where CId = "01") s1 on student.SId = s1.SId
left join (select SId, Score as Score2 from sc where CId = "02") s2 on student.SId = s2.SId
left join (select SId, Score as Score3 from sc where CId = "03") s3 on student.SId = s3.SId
left join (select SId, sum(Score)/count(Score) as ave from sc group by SId) s on student.SId = s.SId
order by ave desc