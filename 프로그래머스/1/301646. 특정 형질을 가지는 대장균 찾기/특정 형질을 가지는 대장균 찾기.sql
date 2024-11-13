-- 코드를 작성해주세요
# SELECT count(*) as COUNT
# FROM ECOLI_DATA
# WHERE substring(bin(GENOTYPE),-2,1) = 0 and (
# substring(bin(GENOTYPE),-1,1) =1 or
# substring(bin(GENOTYPE),-3,1) =1 )

SELECT count(*) as COUNT
FROM ECOLI_DATA
WHERE GENOTYPE & 2 !=2 and 
GENOTYPE & 5 in (1, 4, 5)