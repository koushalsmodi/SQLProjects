# Cal Ripken Jr.’s salary history

select year, salary
from salaries s join players p on p.id = s.player_id
where first_name = 'Cal' and last_name = 'Ripken'
order by year desc;
