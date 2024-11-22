select sub.FISH_COUNT, sub.MAX_LENGTH,sub.FISH_TYPE
from (select FISH_TYPE, 
      count(*)as FISH_COUNT,
      max(LENGTH)as MAX_LENGTH
      from FISH_INFO
      group by FISH_TYPE
      having avg(coalesce(length,10))>=33) sub
order by FISH_TYPE