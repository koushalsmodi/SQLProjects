# top 5 teams, sorted by the total number of hits by players in 2001

# “total hits”

select t.name, sum(p.H) as "total hits"
from performances p join teams t on t.id = p.team_id
where p.year = 2001
group by t.name
order by "total hits" desc
limit 5;
