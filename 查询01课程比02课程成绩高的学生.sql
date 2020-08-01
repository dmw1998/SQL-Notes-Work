select *
/* 将sc表自连接，选择包含01课程和02课程，且01课程的分数大于02课程的分数的记录生成新的表a，然后将student表右连接表a，即得到想要的结果。*/
from student right join
			(select sc1.SId, sc1.score as Score1, sc2.Score as Score2
             from sc sc1 join sc sc2 on sc1.SId = sc2.SId
             where sc1.CId = "01" and sc2.CId = "02" and sc1.Score > sc2.Score) a
on a.SId = student.SId

/* 先从sc表中分别取出01课程和02课程的记录，分别记为表s1和表s2，将两表合并，并留下01课程分数大于02课程分数的记录生成表a，然后表student右连接表a，即得到所需信息。*/
select student.*, Score1, Score2
from student right join
			(select s1.SId, s1.Score as Score1, s2.Score as Score2
             from (select * from sc where CId = "01") s1
             left join
			(select * from sc where CId = "02") s2
             on s1.SId = s2.SId
             where s1.Score > s2.Score) a
on student.SId = a.SId
