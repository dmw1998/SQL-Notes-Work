select * from student s
right join (select * from sc 
			where CId = (select CId from course 
						 where TId = (select TId from teacher where Tname = "张三")
                         )
			order by Score desc
            limit 1) a
on s.SId = a.SId