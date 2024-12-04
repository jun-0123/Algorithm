SELECT DISTINCT ID,EMAIL,FIRST_NAME,LAST_NAME
FROM DEVELOPERS d JOIN SKILLCODES s
WHERE d.SKILL_CODE & s.CODE = s.CODE AND s.CATEGORY = 'Front End'
ORDER BY ID;