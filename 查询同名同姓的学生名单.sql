select a.* from student a
join student b on a.Sname = b.Sname
where a.Ssex = b.Ssex and a.SId != b.SId