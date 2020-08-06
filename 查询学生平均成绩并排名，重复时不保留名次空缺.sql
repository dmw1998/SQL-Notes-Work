select s1.SId, s1.aveScore,
case
when @prevRank = aveScore then @curRank
when @prevRank := aveScore then @curRank := @curRank + 1
end as "Rank"
from (select SId, sum(Score)/count(SId) as aveScore from sc group by SId order by aveScore desc) s1,
	 (select @curRank := 0, @prevRank := null) r