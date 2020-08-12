select CId, count(*) from sc
group by CId
having count(*) > 5