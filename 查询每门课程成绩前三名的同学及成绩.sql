select a.SId, a.CId, a.Score from sc as a
left join sc as b
on a.CId = b.CId and a.Score < b.score
group by a.CId, a.SId
having count(b.CId) < 3
order by a.CId