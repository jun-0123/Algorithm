SELECT to_char(DATETIME,'FMHH24') as hour, count(*)as count
FROM ANIMAL_OUTS
GROUP BY to_char(DATETIME,'FMHH24')
having to_char(DATETIME,'FMHH24') between 9 and 19
ORDER BY to_number(hour)


