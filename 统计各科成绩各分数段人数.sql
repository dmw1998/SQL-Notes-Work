select CId, sum(case when Score <= 60 then 1 else 0 end) as "及格人数",
(sum(case when Score <=60 then 1 else 0 end)/count(Score))*100 as "及格比率",
sum(case when Score > 60 and Score <=70 then 1 else 0 end) as "中等人数",
(sum(case when Score > 60 and Score <=70 then 1 else 0 end)/count(Score))*100 as "中等比率",
sum(case when Score > 70 and Score <= 85 then 1 else 0 end) as "良好人数",
(sum(case when Score > 70 and Score <= 85 then 1 else 0 end)/count(Score))*100 as "良好比率",
sum(case when Score > 85 then 1 else 0 end) as "优秀人数",
(sum(case when Score > 85 then 1 else 0 end)/count(Score))*100 as "优秀比率"
from sc
group by CId