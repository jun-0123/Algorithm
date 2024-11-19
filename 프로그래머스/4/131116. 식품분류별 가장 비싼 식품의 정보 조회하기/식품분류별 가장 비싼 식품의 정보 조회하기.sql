select p.CATEGORY, p.price, p.PRODUCT_NAME
from FOOD_PRODUCT p join (SELECT CATEGORY, max(price) as MAX_PRICE
                     FROM FOOD_PRODUCT
                     WHERE CATEGORY in ('과자', '국', '김치', '식용유')
                     GROUP BY CATEGORY) m 
on m.category = p.category and m.MAX_PRICE = p.price
order by MAX_PRICE desc