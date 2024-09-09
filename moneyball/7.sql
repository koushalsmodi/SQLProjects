# find the name of the player who’s been paid the highest salary, of all time, in Major League Baseball.

select first_name, last_name
from players p join salaries s on s.player_id = p.id
where salary = (select max(salary)
                from salaries);
