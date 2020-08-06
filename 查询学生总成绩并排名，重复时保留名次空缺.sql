select s1.*, count(s2.Score) as "Rank"
from (select SId, sum(Score) as Score from sc group by SId) s1,
	 (select SId, sum(Score) as Score from sc group by SId) s2
where s1.Score < s2.Score or (s1.Score = s2.Score and s1.SId = s2.SId)
group by s1.SId, s1.Score
order by s1.Score desc, s1.SId