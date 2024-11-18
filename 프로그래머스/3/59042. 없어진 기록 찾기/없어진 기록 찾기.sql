SELECT outs.ANIMAL_ID, outs.NAME
FROM ANIMAL_INS ins right join ANIMAL_OUTS outs on ins.ANIMAL_ID = outs.ANIMAL_ID
where ins.ANIMAL_ID is null
order by outs.ANIMAL_ID