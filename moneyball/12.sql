#  players among the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001


select first_name, last_name
from players p join salaries s on s.player_id = p.id
               join performances pf on pf.player_id = p.id and s.year = pf.year
               join
               (select p.id, s.salary/pf.H as "dollars per hit", s.salary/pf.RBI as "dollars per RBI"
                from players p join salaries s on s.player_id = p.id
                               join performances pf on pf.player_id = s.player_id and s.year = pf.year)t on t.id=p.id
where pf.year = 2001 and pf.H != 0 and pf.RBI != 0
order by "dollars per hit" , "dollars per RBI", p.first_name, p.last_name
limit 10;

