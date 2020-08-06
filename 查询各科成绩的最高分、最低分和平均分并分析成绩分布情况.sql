select sc.CId, Cname, count(Score) as "选课人数", max(Score) as "最高分", min(Score) as "最低分", sum(Score)/count(Score) as "平均分",
sum(case when Score >= 60 then 1 else 0 end)/count(Score) as "及格率",
sum(case when Score >= 70 and Score < 80 then 1 else 0 end)/count(Score) as "中等率",
sum(case when Score >= 80 and Score < 90 then 1 else 0 end)/count(Score) as "优良率",
sum(case when Score >= 90 then 1 else 0 end)/count(Score) as "优秀率"
from sc left join course on sc.CId = course.CId
group by sc.CId, Cname
order by count(Score) desc, CId