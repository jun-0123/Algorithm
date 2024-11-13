-- 코드를 작성해주세요
SELECT count(*) as COUNT
FROM ECOLI_DATA
WHERE substring(bin(GENOTYPE),-2,1) = 0 and (
substring(bin(GENOTYPE),-1,1) =1 or
substring(bin(GENOTYPE),-3,1) =1 )