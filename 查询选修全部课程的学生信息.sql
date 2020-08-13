select * from student
where SId in (select SId from sc
			  group by SId
              having count(*) = (select count(CId) from course))