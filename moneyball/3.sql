# Ken Griffey Jr
# Ken Griffey Jr.’s home run history.
# born in 1969

select year, HR
from players p join performances pf on pf.player_id = p.id
where birth_year = 1969 and first_name = 'Ken' and last_name = 'Griffey'
order by year desc;
