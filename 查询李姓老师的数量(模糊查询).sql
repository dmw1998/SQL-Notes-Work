select sum(case when Tname like "李%" then 1 else 0 end) as "李姓老师的数量"
from teacher