select i.id, n.fish_name, i.length
from FISH_INFO i join FISH_NAME_INFO n on i.fish_type = n.fish_type
where i.length in (SELECT max(length) 
                  from FISH_INFO
                 group by fish_type)
order by id


