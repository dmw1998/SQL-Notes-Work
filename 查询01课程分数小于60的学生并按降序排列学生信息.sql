select student.* from student
right join (select * from sc
			where CId = "01" and Score < 60) s
on student.SId = s.SId
order by score desc 