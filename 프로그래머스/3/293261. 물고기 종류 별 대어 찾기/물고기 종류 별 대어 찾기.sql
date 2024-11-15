select i.id, n.fish_name, Max_length as length
from FISH_INFO i join FISH_NAME_INFO n on i.fish_type = n.fish_type
join (SELECT fish_type,max(length) as Max_length
                  from FISH_INFO
                 group by fish_type) mix 
                 on i.fish_type = mix.fish_type 
                 and i.length = Max_length
order by id
