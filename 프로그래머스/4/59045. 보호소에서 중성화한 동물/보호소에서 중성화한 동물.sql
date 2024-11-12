-- 코드를 입력하세요
SELECT ANIMAL_ID, ANIMAL_TYPE, NAME
from ANIMAL_OUTS
where (SEX_UPON_OUTCOME like 'Spayed%'or SEX_UPON_OUTCOME like 'Neutered%')  
    and ANIMAL_ID in (select ANIMAL_ID
     from ANIMAL_INS
     where SEX_UPON_INTAKE like 'Intact%')