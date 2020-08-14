select student.*, date_format(curdate(),"%Y") - date_format(Sage,"%Y") as age
from student