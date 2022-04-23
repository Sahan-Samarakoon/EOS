--What are the full names and ages of the professors who teach CS112?
select x.fname, x.lname, age
from professor x, teach y
where (x.fname = y.fname)
and	  (x.lname = y.lname)
and	  (cno = 'CS112')

--What are the full names of the professors who teach CS112 or CS114?
select fname, lname
from teach
where cno = 'CS112'
or	  cno = 'CS114'

--What are the full names of the professors who teach CS112 and CS114?
select x.fname, x.lname
from teach x, teach
where (x.fname = teach.fname)
and	  (x.lname = teach.lname)
and	  (x.cno = 'CS112')
and	  (teach.cno = 'CS114')

--What are the full names of the professors who teaches any course that is not CS112?
select fname, lname
from teach
where cno != 'CS112'

--Who teaches at least 2 courses?
select x.fname, x.lname
from teach x, teach y
where (x.fname = y.fname)
and	  (x.lname = y.lname)
and	  (x.cno < y.cno)


--Which courses are taught by at least 2 professors ?
select x.cno, c.title
from teach x, teach y, courses c
where (x.cno = y.cno) --our reference is one single course
and	  (x.cno = c.cno)
and	  ((x.fname != y.fname)
or	  (x.lname != y.lname))

--Which courses are taught by at least 3 professors?

--Who does not teach CS112?
select fname, lname
from professor
where (fname + lname not in
	  (select fname + lname
	   from teach
	   where cno = 'CS112'))

--Which professors teach at most 2 courses?
select fname, lname
from professor
where fname + lname not in
	 (select x.fname + x.lname
	  from teach x, teach y, teach z
	  where x.fname = y.fname
	  and	x.fname = z.fname
	  and	x.lname = y.lname
	  and	x.lname = z.lname
	  and	x.cno < y.cno
	  and   y.cno < z.cno)

--Which professors teach exactly 2 courses?
select x.fname, x.lname
from teach x, teach y
where x.fname = y.fname
and	  x.lname = y.lname
and	  x.cno < y.cno
and   x.fname + x.lname not in
	 (select x.fname + x.lname
	  from teach x, teach y, teach z
	  where x.fname = y.fname
	  and   x.fname = z.fname
	  and   x.lname = y.lname
	  and   x.lname = z.lname
	  and	x.cno < y.cno
	  and	y.cno < z.cno)

--Which professors teach only CS112?
select fname, lname
from teach
where fname + lname not in 
	 (select fname + lname
	  from teach 
	  where cno != 'CS112')

--Which professors teach either CS112 or CS114?
select fname, lname
from teach
where (cno = 'CS112'
or    cno = 'CS114')
and   fname + lname not in
	 (select x.fname + x.lname
	  from teach x, teach y
	  where x.fname = y.fname
	  and   x.lname = y.lname
	  and   x.cno = 'CS112'
	  and   y.cno = 'CS114')

--Who are the youngest professors?
select fname, lname 
from professor
where fname + lname not in 
	 (select x.fname + x.lname
	  from professor x, professor y
	  where x.age > y.age)

