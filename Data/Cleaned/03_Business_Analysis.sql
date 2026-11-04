select * from order_payments;

#---------------------------------------------
#Revenue & Sales Analysis
#---------------------------------------------

#Total Revenue generated
select round(sum(payment_value),2) as total_payment 
from order_payments;


#monthly Revenue trends 
select * from orders;

select year(o.order_purchase_timestamp) as year,
month(o.order_purchase_timestamp) as month,
round(sum(payment_value),2) as total_payment
from orders o
join order_payments p
	ON o.order_id = p.order_id
where o.order_status = 'Delivered'
group by 
year(o.order_purchase_timestamp),
month(o.order_purchase_timestamp)
order by year, month;


#having Highest to Lowest Revenue
select * from orders;
select * from order_payments;

select year(o.order_purchase_timestamp) as year,
month(o.order_purchase_timestamp) as month,
round(sum(payment_value),2) as total_revenue 
from orders o
join order_payments p
	on o.order_id = p.order_id
    where o.order_status = 'Delivered'
group by year(o.order_purchase_timestamp) ,
month(o.order_purchase_timestamp)
order by total_revenue desc;

#Average Order value
select * from orders;
select* from order_payments;
select round(avg(order_value),2) as Average_order_value
from (
select order_id , sum(payment_value) as order_value
from order_payments
group by order_id
)
as order_totals;



#---------------------------------------------
#Product Analysis
#---------------------------------------------


#top 10 Selling products with high and low sales
select * from products;
SELECT
    MAX(total_sold) AS highest_sales,
    MIN(total_sold) AS lowest_sales
FROM (
    SELECT
        product_id,
        COUNT(*) AS total_sold
    FROM order_items
    GROUP BY product_id
) AS product_sales;


#Products Category that generate highest revenue

select * from order_items;
select * from products;

select p.product_category_name,
round(sum(oi.price),2) as total_revenue
from  order_items oi
join products p
on oi.product_id= p.product_id
group by p.product_category_name
order by total_revenue desc;


#products Category having highest number of orders

select * from order_items;
select* from products;


select p.product_category_name, count(distinct oi.order_id) as total_orders
from order_items oi
JOIN products p
on oi.product_id = p.product_id
group by p.product_category_name
order by total_orders desc;


#products with the lowest sales 
select * from order_items;
select p.product_category_name, round(sum(oi.price),2) as total_revenue
from order_items oi
join products p
on oi.product_id = oi.product_id
group by p.product_category_name
order by total_revenue asc
limit 10;

#---------------------------------------------
#Customer analysis
#---------------------------------------------

select * from customers;

#Unique Customers
select count(distinct(customer_id)) as Unique_Customers from customers;


select * from orders;










select * from customers;

select count(*) as repeated_customers 
from ( 
select customer_unique_id , count(*) as total_orders
from customers
group by customer_unique_id
having count(*) >1) 
as repeated_customers;













