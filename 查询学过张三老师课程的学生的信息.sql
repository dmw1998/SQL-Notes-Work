select * from student
where SId in (select SId from sc
			where CId in (select CId
						from course join teacher
									on course.TId = teacher.TId
						where Tname = "张三"))