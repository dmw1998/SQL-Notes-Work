select student.*,
case 
when date_format(now(),"%m-%d") >= date_format(Sage,"%m-%d")
then date_format(curdate(),"%Y") - date_format(Sage,"%Y")
else date_format(curdate(),"%Y") - date_format(Sage,"%Y") - 1
end as age
from student;