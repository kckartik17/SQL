-- select * from customers;

-- select * from orders;
-- select id from customers where first_name = "Boy";

-- select * from orders where customer_id = (select id from customers where first_name = "Boy");

-- Implicit Inner join

-- select first_name, last_name, email, order_date, amount from customers,orders where customers.id = orders.customer_id;

-- Explicit inner join

-- select first_name, last_name, email, order_date, amount from customers JOIN orders ON customers.id = orders.customer_id;

-- select first_name,last_name, Sum(amount) as total_spent from customers JOIN orders on customers.id = orders.customer_id group by customers.id order by total_spent desc;

-- select * from customers LEFT JOIN orders on customers.id = orders.customer_id;

-- select * from customers RIGHT JOIN orders on customers.id = orders.customer_id;

-- select first_name, last_name, sum(amount) as total_spent from customers LEFT JOIN orders on customers.id = orders.customer_id group by customers.id order by total_spent;

select first_name, last_name, ifnull(sum(amount), 0) as total_spent from customers LEFT JOIN orders on customers.id = orders.customer_id group by customers.id order by total_spent;