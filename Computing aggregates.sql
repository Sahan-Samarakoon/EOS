--For each department having more than 3 professors older than 50, what is the average salary of such professors?
select dept, AVG(salary)
from professor
where age > 50
group by dept
having COUNT(*) > 3
