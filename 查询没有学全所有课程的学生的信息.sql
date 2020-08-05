select * from student
where SId not in (select SId from sc
				group by SId
                having count(CId) = (select count(CId) from course))