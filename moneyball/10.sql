#  player’s first names
# player’s last names
# player’s salaries
# player’s home runs
# year in which the player was paid that salary and hit those home runs

select p.first_name, p.last_name, s.salary, pf.HR, s.year
from players p join salaries s on s.player_id = p.id
               join performances pf on pf.player_id = p.id and s.year = pf.year
order by p.id, pf.year desc, HR desc, salary desc
