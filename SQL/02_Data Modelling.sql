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


#M
select * from order_items; 
alter table order_items 
modify order_id varchar(100) NOT NULL,
modify product_id varchar(100) NOT NULL,
modify seller_id varchar(100) NOT NULL;












































































