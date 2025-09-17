-- Basic:(a,b,c,d,e)
-- Retrieve the total number of orders placed.
-- Calculate the total revenue generated from pizza sales.
-- Identify the highest-priced pizza.
 -- Identify the most common pizza size ordered.
-- List the top 5 most ordered pizza types along with their quantities.


-- Intermediate:(i,j,k,l,m)
-- Join the necessary tables to find the total quantity of each pizza category ordered.
-- Determine the distribution of orders by hour of the day.
-- Join relevant tables to find the category-wise distribution of pizzas.
-- Group the orders by date and calculate the average number of pizzas ordered per day.
-- Determine the top 3 most ordered pizza types based on revenue.

-- Advanced:(x,y,z)
-- Calculate the percentage contribution of each pizza type to total revenue.
-- Analyze the cumulative revenue generated over time.
-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.use pizzahut;
select*from pizzas;
select*from pizza_types;
select*from orders;
select*from order_details;

create table orders(
order_id int primary key,
order_date date not null,
order_time time not null
);
create table order_details(
order_details_id int primary key,
order_id int not null,
pizza_id text not null,
quantity int not null
);

