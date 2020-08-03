select student.SId as `学生编号`, student.Sname as `学生姓名`, sc1.Score as `Score1`, sc2.Score as `Score2`, sc3.Score as `Score3`
from student
left join
(select * from sc where sc.CId = "01") sc1 on student.SId = sc1.SId
left join
(select * from sc where sc.CId = "02") sc2 on student.SId = sc2.SId
left join
(select * from sc where sc.CId = "03") sc3 on student.SId = sc3.SId