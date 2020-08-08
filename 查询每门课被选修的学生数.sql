select CId, count(Score) as "人数"
from sc
group by CId