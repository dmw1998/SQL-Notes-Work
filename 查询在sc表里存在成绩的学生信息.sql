use prc;

select * from student
where SId in (select distinct SId from sc);