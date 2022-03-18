--Who are the youngest students?
select sno
from dbo.student
where not(age in 
		 (select x.age
		  from dbo.student y, dbo.student x
		  where (x.age > y.age)))

select sno
from dbo.student
where not(sno in
		 (select x.sno
		  from dbo.student x, dbo.student y
		  where (x.sno > y.sno)))

--Using enhancements to sort answers
select sname, age
from student, take
where (student.sno = take.sno)
and	  (cno = 'CS112')
order by 2, 1

select sname, age
from student, take
where (student.sno = take.sno)
and	  (cno = 'CS112')
order by 2, sname desc