select a.SId, a.Sname, Score1, Score2, Score3
from (select SId, Sname from student
	  where SId in (select distinct SId from sc
					where Score > 70)) a 
left join
(select SId, Score as Score1 from sc where CId = "01") sc1 on a.SId = sc1.SId
left join
(select SId, Score as Score2 from sc where CId = "02") sc2 on a.SId = sc2.SId
left join
(select SId, Score as Score3 from sc where CId = "03") sc3 on a.SId = sc3.SId