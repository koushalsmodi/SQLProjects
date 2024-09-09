# write a SQL query to find all teams that Satchel Paige played for.

select name
from players p join performances pf on pf.player_id = p.id
               join teams t on t.id = pf.team_id
where first_name = 'Satchel' and last_name = 'Paige';
