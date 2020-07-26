select distinct userid, amount from order 
group by userid order by paytime limit 1;