select CId, sum(Score)/count(Score) as "ave"
from sc
group by CId
order by ave desc, CId