SELECT b.AUTHOR_ID,a.AUTHOR_NAME, b.CATEGORY, sum((s.SALES*b.price)) as total_sales
FROM BOOK b 
join AUTHOR a on a.AUTHOR_ID = b.AUTHOR_ID
join BOOK_SALES s on b.BOOK_ID = s.BOOK_ID
WHERE to_char(s.SALES_DATE,'yyyy-mm') = '2022-01'
GROUP BY b.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY
ORDER BY b.AUTHOR_ID, b.CATEGORY desc