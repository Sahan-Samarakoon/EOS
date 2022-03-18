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
select x.cno
from teach x, teach y
where (x.cno = y.cno) --our reference is one single course
and	  ((x.fname != y.fname)
or	  (x.lname != y.lname))

--Which courses are taught by at least 3 professors?
