SELECT ins.ANIMAL_ID, ins.NAME
FROM ANIMAL_INS ins join ANIMAL_OUTS outs on ins.ANIMAL_ID = outs.ANIMAL_ID
where outs.DATETIME < ins.DATETIME
order by ins.DATETIME