select SId, Sname from student
where SId in (select SId from sc
			  where CId = "01"
              and Score >= 80)