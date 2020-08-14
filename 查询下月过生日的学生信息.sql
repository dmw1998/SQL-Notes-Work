select * from student
where month(Sage) = (select case when month(now()) = 12 then 1
								 else month(now()) + 1 end)