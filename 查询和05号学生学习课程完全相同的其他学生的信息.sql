select * from student
where SId in (select SId from sc
			where CId in (select CId from sc where SId = "05")
            group by SId
            having count(SId) = (select count(*)from sc where SId = "05")
            and SId in
				(select SId from sc
                group by SId
                having count(SId) = (select count(*)from sc where SId = "05")
                )
			)