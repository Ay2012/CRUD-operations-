-- displaying entire table 
select * from gfg.data;
-- displaying brand names
select  brand_name from gfg.data;
-- displaying products names 
select product_name from gfg.data;
-- displaying a few columns 
SELECT
    brand_tag as 'brand',
    product_tag,
    marked_price,
    discounted_price,
    marked_price - discounted_price AS discount,
    round(((marked_price-discounted_price)/marked_price)*100,3) AS disc_percntge,
    round((rating*rating_count),2) as popular_product  
FROM
    gfg.data;
select * from gfg.data where brand_name="nike" and product_tag="sports-shoes";
select * from gfg.data where product_tag="tshirts" and 3000<discounted_price and discounted_price<=5000; 
select * from gfg.data 
where (brand_name="nike" or brand_name="adidas") and
product_tag ="sports-shoes" and 
discounted_price>3000 and discounted_price<=7000;
select count(distinct brand_tag ) from gfg.data;
select distinct(product_tag) from gfg.data where brand_tag="adidas";
-- using '!=' to retrieve data from database avoiding a few categories
select * from gfg.data where brand_tag !="adidas" and brand_tag!="nike";
-- using 'BETWEEN' and 'AND' to avoid using two conditions instead of '<' and '>' operators 
select *from gfg.data where discounted_price between 3000 and 5000;
-- products between certain budget from brands excluding a few of them
select* from gfg.data where not (brand_tag='nike' and brand_tag='puma') and discounted_price between 3000 and 6000;
-- selecting shoes from database with rating above 4.0 with 200+ reviews
select * from gfg.data where rating> 4.0 and rating_count>200 and product_tag in ("sports-shoes","casual-shoes");


