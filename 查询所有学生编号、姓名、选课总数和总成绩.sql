use prc;

select *
from student
left join
(select SId, count(Score),sum(Score) from sc group by SId) sc1
on student.SId = sc1.SId;