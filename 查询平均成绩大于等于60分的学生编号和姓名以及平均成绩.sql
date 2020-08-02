use prc;

select sc.SId, Sname, sum(Score)/count(sc.SId) as Score_Ave
from sc join student on sc.SId = student.SId
group by sc.SId, Sname
having Score_Ave >= 60;