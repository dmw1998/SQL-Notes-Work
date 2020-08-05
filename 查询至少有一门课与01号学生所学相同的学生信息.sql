select * from student
where SId in (select distinct SId from sc
			where CId in (select CId from sc where SId = "01"))