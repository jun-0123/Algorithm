WITH RECURSIVE Hierarchy as(
    
select id, parent_Id, 1 as GENERATION
from ECOLI_DATA
where PARENT_ID is null
    
union all
    
select e.id, e.parent_Id, h.GENERATION +1 as GENERATION
from ECOLI_DATA e join Hierarchy h on e.parent_Id=h.id
    
)

select count(*) as COUNT,GENERATION
from Hierarchy h join ECOLI_DATA e on h.id=e.id
where e.id not in (SELECT distinct(parent_Id) 
                   from ECOLI_DATA where parent_Id is not null)
group by GENERATION
ORDER by GENERATION