select * from order_payments;


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











