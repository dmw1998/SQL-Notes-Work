select * from sc
where SId in (select SId from sc
              group by Score, SId
              having count(Score) > 1)