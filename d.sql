-- Identify the most common pizza size ordered.
select p.size,count(o.order_details_id) as total_orders
from pizzas p
join order_details o
on p.pizza_id=o.pizza_id
group by p.size
;