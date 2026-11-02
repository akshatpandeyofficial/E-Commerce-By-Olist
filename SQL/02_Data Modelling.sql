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

#orders
select * from orders;
ALTER TABLE orders
MODIFY order_id VARCHAR(100) NOT NULL,
MODIFY customer_id VARCHAR(100) NOT NULL;

#Products 
select * from products;
ALTER TABLE products
MODIFY product_id VARCHAR(100) NOT NULL;


#Sellers
select * from sellers;
ALTER TABLE sellers
MODIFY seller_id VARCHAR(100) NOT NULL;

#Creating Primary key

#Customers
select * from customers;
alter table customers
ADD PRIMARY KEY (customer_id);

#Order Items
select * from order_items;
Alter table order_items
ADD PRIMARY KEY(order_id,order_item_id);

#Order Payments
select * from order_payments ;
alter table order_payments
ADD PRIMARY KEY (order_id, payment_sequential);


#orders
select * from orders;

select order_id , count(*)
from orders 
group by order_id
having count(*)>1;

alter table orders
ADD PRIMARY KEY (order_id);
desc orders;

#product

select * from Products;
alter table products
ADD PRIMARY KEY (product_id);

DESCRIBE products;

#sellers

select * from sellers;
alter table sellers
ADD PRIMARY KEY (seller_id);

desc sellers;

#category
select * from category_translation;

ALTER TABLE category_translation
MODIFY product_category_name VARCHAR(100) NOT NULL;

ALTER TABLE category_translation
ADD PRIMARY KEY (product_category_name);

desc category_translation;


#Adding Foreign Keys 

#ORDER ITEMS
select * from order_items;

alter table order_items
ADD CONSTRAINT item_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE order_items
ADD CONSTRAINT items_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);

alter table order_items
ADD CONSTRAINT item_seller
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id);

#ORDERS 
select * from orders;

ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

#order PAYMENTS & ORDER REVIEWS

select * from order_reviews;
select * from order_payments;

ALTER TABLE order_payments
ADD CONSTRAINT payments_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE order_reviews
ADD CONSTRAINT reviews_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);






















