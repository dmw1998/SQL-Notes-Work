use prc;

select *
from 
	(select * from sc where sc.CId = '02') as sc2
left join
	(select * from sc where sc.CId = '01') as sc1
on sc1.SId = sc2.SId
where sc1.score is null;