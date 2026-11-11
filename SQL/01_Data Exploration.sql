SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM geolocation;
SELECT COUNT(*) FROM order_items;
SELECT COUNT(*) FROM order_payments;
SELECT COUNT(*) FROM order_reviews;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM sellers;
SELECT COUNT(*) FROM category_translation;

#Everything is Imported

show tables;
LOAD DATA LOCAL INFILE
'C:/Users/AKSHAT/Desktop/Data analyst Projects/E-Commerce Multi Table Olist/Data/Cleaned/olist_products_cleaned.csv'
INTO TABLE products
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
    product_id,
    product_category_name,
    product_name_lenght,
    product_description_lenght,
    product_photos_qty,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm
);