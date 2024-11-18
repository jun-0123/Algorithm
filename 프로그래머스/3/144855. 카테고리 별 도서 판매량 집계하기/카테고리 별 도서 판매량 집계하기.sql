-- 코드를 입력하세요
SELECT CATEGORY, SUM(s.sales) as TOTAL_SALES
FROM BOOK b join BOOK_SALES s on b.BOOK_ID = s.BOOK_ID
WHERE to_char(s.SALES_DATE,'yyyy-mm') = '2022-01'
group by CATEGORY
order by CATEGORY
