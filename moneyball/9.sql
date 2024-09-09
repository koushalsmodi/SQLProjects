# find the 5 lowest paying teams (by average salary) in 2001.
# “average salary”

select t.name, ROUND(AVG(s.salary), 2) as "average salary"
from teams t join salaries s on s.team_id = t.id
where s.year = 2001
group by t.name
order by "average salary"
limit 5;
