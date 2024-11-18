select * 
from(SELECT NAME, DATETIME
     FROM ANIMAL_INS
     where ANIMAL_ID not in (select ANIMAL_ID 
                             from ANIMAL_OUTS)
     order by DATETIME)
where rownum <= 3

