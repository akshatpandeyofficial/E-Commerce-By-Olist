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

#Unique Customers --:
select count(distinct(customer_id)) as Unique_Customers from customers;

#Repeated Customers --:
select * from orders;
select * from customers;

select count(*) as repeated_customers 
from ( 
select customer_unique_id , count(*) as total_orders
from customers
group by customer_unique_id
having count(*) >1) 
as repeated_customers;

#which State Generate the highest Revenue

select * from customers;
select * from orders;
select * from order_payments;


select c.customer_state as State,
round(sum(p.payment_value),2) as total_revenue
from customers c
join orders o
on o.customer_id = c.customer_id
join order_payments p
on p.order_id = o.order_id
where o.order_status = 'Delivered'
group by state
order by total_revenue desc;

# average Spending Per customer



select round(avg(customer_spend),2) as customer_average_spend
from(
select c.customer_unique_id , 
sum(p.payment_value) as customer_spend
from customers c
join orders o 
on o.customer_id = c.customer_id
join order_payments p
on o.order_id = p.order_id
where o.order_status = 'Delivered'
group by c.customer_unique_id) as Customer_totals;

#---------------------------------------------
#Order & Delievery Analysis 
#---------------------------------------------

#order Contribution by order status 

select * from Orders;

select order_status , count(*) as total_orders
from orders
group by order_status
order by total_orders desc;


#What percentage of orders are delivered, cancelled, or unavailable?

select order_status,
round(count(*)*100.0 / (select count(*) from orders),2) as percentage 
from orders
group by order_status 
order by percentage desc;

#Average Delivery Time

select round(avg(datediff(order_delivered_customer_date,
                order_purchase_timestamp)),2) as AVG_delievery_days
from orders
where order_status = "Delivered"
AND order_delivered_customer_date is not null;


#How many orders were delivered late?
select * from orders;
select count(*) as late_delievered_orders from orders
where order_status = 'delivered'
AND order_delivered_customer_date IS NOT NULL
AND order_estimated_delivery_date IS NOT NULL
and order_delivered_customer_date > order_estimated_delivery_date;

#month having highest order volume

select year(order_purchase_timestamp) as year,
month(order_purchase_timestamp) as month,
count(order_id) as total_orders
from orders
group by  year(order_purchase_timestamp),
month(order_purchase_timestamp) 
order by total_orders desc;


#---------------------------------------------
#Payment Analysis 
#---------------------------------------------



#Highest Transactin through which medium 
select * from order_payments;

select payment_type , count(*) as Total_transactions
from order_payments
group by payment_type
order by Total_transactions desc;


#Avg Payment by Payment_type
select payment_type , round(avg(payment_value),2) as AVG_Payment
from order_payments
group by payment_type
order by AVG_Payment desc;

#percenatage of revenue by each method -:


select* from order_payments;
select  payment_type, 
round(sum(payment_value) *100.0 / (select sum(payment_value) from order_payments),2) as revenue_percentage
from order_payments
group by payment_type;


#---------------------------------------------
#Seller & Review Analysis
#---------------------------------------------

#which Seller Generates the highest Revenue 

select * from order_items;
select * from sellers;

select s.seller_id , round(sum(oi.price),2) as Revenue_Generated
from order_items oi
join sellers s
on oi.seller_id = s.seller_id
group by s.seller_id
order by Revenue_Generated desc;



#which Sellers Recieves The most Orders

select * from sellers ;
select * from order_items;


select seller_id , count(distinct(order_id)) as total_orders 
from order_items
group by seller_id
order by  total_orders desc;


#Average Review Score

select * from order_reviews; 

select round(avg(review_score),2) as Review_Score
from order_reviews;

#Product_Category having Lowest Ratings

select * from category_translation;
select * from products;
select * from order_reviews;
select * from order_items;


select p.product_category_name ,
round(avg(r.review_score),2) as average_rating
from order_reviews r
join order_items oi
on r.order_id = oi.order_id
join products p
on p.product_id = oi.product_id
group by p.product_category_name
order by Average_rating Asc;

#Product_Category having Highest Ratings

select p.product_category_name ,
round(avg(r.review_score),2) as average_rating
from order_reviews r
join order_items oi
on r.order_id = oi.order_id
join products p
on p.product_id = oi.product_id
group by p.product_category_name
order by Average_rating desc;


#state Having the highest Order value 


select * from customers;
select * from orders;
select * from order_payments;

select c.customer_state , ROUND(
        SUM(p.payment_value) / COUNT(DISTINCT o.order_id),
        2
    ) as AVG_ORDER_VALUE
    from customers c 
    join orders o
    on o.customer_id = c.customer_id
    join order_payments p 
    on p.order_id = o.order_id
   where o.order_status = 'Delivered'
   group by c.customer_state
   order by AVG_ORDER_VALUE desc;





































