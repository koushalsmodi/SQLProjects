# which players were paid the lowest salaries in 2001
# find the 50 players paid the least in 2001.
# Sort players by salary, lowest to highest, first name and then by last name, sort by player ID

select first_name, last_name, salary
from players p join salaries s on s.player_id = p.id
where year = 2001
order by salary, first_name, last_name, p.id
limit 50;
