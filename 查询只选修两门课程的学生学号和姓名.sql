select sc.SId, a.Sname from sc
left join (select SId, Sname from student) a 
on sc.SId = a.SId
group by sc.SId, a.Sname
having count(sc.CId) = 2