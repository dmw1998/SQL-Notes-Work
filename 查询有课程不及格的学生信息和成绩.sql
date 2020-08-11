select s.SId, Sname, Score1, Score2, Score3
from (select distinct SId from sc
	  where Score < 60 
      group by SId) s
left join
(select SId, Sname from student) a on s.SId = a.SId
left join
(select SId, Score as Score1 from sc where CId = "01") sc1 on s.SId = sc1.SId
left join
(select SId, Score as Score2 from sc where CId = "02") sc2 on s.SId = sc2.SId
left join
(select SId, Score as Score3 from sc where CId = "03") sc3 on s.SId = sc3.SId