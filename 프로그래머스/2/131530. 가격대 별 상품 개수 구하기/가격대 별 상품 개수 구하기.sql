SELECT trunc(PRICE, -4) as PRICE_GROUP, count(*) as PRODUCTS
from product
group by trunc(PRICE, -4)
order by PRICE_GROUP