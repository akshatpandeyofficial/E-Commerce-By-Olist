select * from order_payments;


#Total Revenue generated
select round(sum(payment_value),2) as total_payment 
from order_payments;


#monthly Revenue trends 
select * from orders;
















