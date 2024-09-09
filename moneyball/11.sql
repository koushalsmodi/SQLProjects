#  one for the players’ first names, one of their last names, and one called “dollars per hit”

select p.first_name, p.last_name, s.salary/pf.H as "dollars per hit"
from players p join salaries s on s.player_id = p.id
               join performances pf on pf.player_id = p.id and s.year = pf.year
where pf.year = 2001 and pf.H != 0
order by "dollars per hit" , p.first_name, p.last_name
limit 10;

