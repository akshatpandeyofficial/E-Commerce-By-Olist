desc customers;
desc geolocation;
desc order_items;
desc order_payments;
desc order_reviews;
desc orders;
desc products;
desc sellers;
desc category_translation;

select * from customers;

#Converting ID TO VARCHAR -:

alter table customers
modify customer_id VARCHAR(50) NOT NULL;


#Modify order items 
select * from order_items; 
alter table order_items 
modify order_id varchar(100) NOT NULL,
modify product_id varchar(100) NOT NULL,
modify seller_id varchar(100) NOT NULL;

#Order Payments
select * from order_payments;
alter table order_payments
modify order_id varchar(100) NOT NULL;

#Order reviews
select * from order_reviews;
alter table order_reviews
modify review_id varchar(100) NOT NULL,
modify order_id varchar(100) NOT NULL;







































































