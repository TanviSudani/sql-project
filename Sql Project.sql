create database pizzasalesdb;
use pizzasalesdb;
select * from pizza_sales;

-- 1. Total Revenue: The sum of the total price of all pizza orders.
select order_id,sum(total_price) as `Total Revenue` from pizza_sales group by order_id;

-- 2. Average Order Value: The average amount spent per order, calculated by 
-- dividing the total revenue by the total number of orders.
select order_id,sum(total_price) / count(order_id) AS `Average Order Value`
from
 pizza_sales group by order_id;

-- 3. Total Pizzas Sold: The sum of the quantities of all pizza sold.
select order_id,sum(quantity) as `Total Pizzas Sold` from pizza_sales
group by order_id;

-- 4. Total Orders: The total number of orders placed.
select count(order_id) as `Total Orders` from pizza_sales;

-- 5. Average Pizza Per Order: The average number of pizzas sold per order, 
-- calculated by dividing the total number of pizzas sold by the total number of 
-- orders.
select sum(quantity)/count(order_id) as `Average Pizza Per Order` from pizza_sales;	