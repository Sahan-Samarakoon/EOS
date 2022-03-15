--Who takes CS112?
select sno
from dbo.take
where (cno = 'CS112')


--sname and sno of those taking CS112
select dbo.take.sno,sname
from dbo.take, dbo.student
where (take.sno = student.sno)
and		( cno = 'CS112')

--Who takes CS112 or CS114?
select distinct sno
from dbo.take
where ( cno = 'CS112')
or	  ( cno = 'CS114')

--Who takes both CS112 and CS114?
select x.sno
from dbo.take x, dbo.take y
where (x.sno = y.sno)
and	  (x.cno = 'CS112')
and	  (y.cno = 'CS114')

--Who takes any course other than CS112?
select distinct sno
from dbo.take
where (cno != 'CS112')

--Who takes at least 2 courses?
select x.sno
from dbo.take x, dbo.take y
where (x.sno = y.sno)
and   (x.cno < y.cno)





