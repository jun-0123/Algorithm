select count(*) as fish_count, month(TIME) as month
from FISH_INFO
group by month(TIME)
order by month