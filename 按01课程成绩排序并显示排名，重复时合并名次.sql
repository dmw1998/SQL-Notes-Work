select s1.SId, s1.CId, s1.Score,
case
when @prevRank = Score then @curRank
when @prevRank := Score then @curRank := @curRank + 1
end as "Rank"
from (select * from sc where CId = "01" order by Score desc) s1,
(select @curRank := 0, @prevRank := null) r