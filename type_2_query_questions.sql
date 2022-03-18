--Who takes at most 2 courses? who does not take at least 3 courses?
select sno 
from dbo.student
where not(sno in
		 (select x.sno
		 from dbo.take x, dbo.take y, dbo.take z 
		 where (x.sno = y.sno)
		 and   (y.sno = z.sno)
		 and   (x.cno < y.cno)
		 and   (y.cno < z.cno)))

select sname
from dbo.student
where ( sno in (1, 2, 4))


--Who takes exactly 2 courses?who takes at least 2 courses and not at least 3?
select a.sno
from dbo.take a, dbo.take b
where  (a.sno = b.sno)
and	   (a.cno < b.cno)
and not(a.sno in
	   (select x.sno
		 from dbo.take x, dbo.take y, dbo.take z 
		 where (x.sno = y.sno)
		 and   (y.sno = z.sno)
		 and   (x.cno < y.cno)
		 and   (y.cno < z.cno)))

--Who takes only CS112? who takes CS112 and doesnt take an other?
select sno
from dbo.take
where not(sno in
		 (select sno
		  from dbo.take
		  where (cno != 'CS112')))

--Who takes either CS112 or CS114?
select sno
from dbo.take
where ((cno = 'CS112') or (cno = 'CS114'))
and not(sno in 
	   (select x.sno
	    from dbo.take x, dbo.take y
		where (x.sno = y.sno)
		and   (x.cno = 'CS112')
		and   (y.cno = 'CS114')))

--Who takes either CS112 or CS114 ?(without brackets)
select sno
from dbo.take
where (cno = 'CS112') or (cno = 'CS114')
and not(sno in 
	   (select x.sno
	    from dbo.take x, dbo.take y
		where (x.sno = y.sno)
		and   (x.cno = 'CS112')
		and   (y.cno = 'CS114')))


select *
from dbo.take


