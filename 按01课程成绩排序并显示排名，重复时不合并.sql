select s1.*, count(s2.Score) as "Rank"
from (select * from sc where CId = "01") s1, (select * from sc where CId = "01") s2
where s1.Score < s2.Score or (s1.Score = s2.Score and s1.SId = s2.SId)
group by s1.SId, s1.Score, s1.CId
order by s1.Score desc, s1.SId