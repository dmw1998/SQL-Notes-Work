select SId, Sname from student
where SId in (select SId from sc
			  group by SId
              having count(*) >= 2)