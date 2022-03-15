select dbo.take.sno,sname
from dbo.take, dbo.student
where (take.sno = student.sno)
and		( cno = 'CS112')

select distinct sno
from dbo.take
where ( cno = 'CS112')
or	  ( cno = 'CS114')

select x.sno
from dbo.take x, dbo.take y
where (x.sno = y.sno)
and	  (x.cno = 'CS112')
and	  (y.cno = 'CS114')


select distinct sno
from dbo.take
where (cno != 'CS112')

select x.sno
from dbo.take x, dbo.take y
where (x.sno = y.sno)
and   (x.cno < y.cno)





