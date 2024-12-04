SELECT a.PRODUCT_CODE,sum(b.sales_amount)*a.price as SALES
from PRODUCT a 
join OFFLINE_SALE b
on a.PRODUCT_ID = b.PRODUCT_ID
group by a.PRODUCT_CODE
order by SALES desc, a.PRODUCT_CODE