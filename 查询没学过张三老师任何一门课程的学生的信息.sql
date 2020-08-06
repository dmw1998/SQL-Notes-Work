select * from student
where SId not in (select distinct SId from sc
				where CId in (select CId from course
							where TId = (select TId from teacher where Tname = "张三")
                            )
				)