select * from sc
where SId in (select SId from sc where CId = "01") and CId = "01"
order by Score desc
limit 3