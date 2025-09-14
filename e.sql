-- List the top 5 most ordered pizza types along with their quantities.
select t.name,
sum(o.quantity) as quantity
from pizza_types t
join pizzas p
ON t.pizza_type_id=p.pizza_type_id
join order_details o
on p.pizza_id=o.pizza_id
group by  t.name
order by quantity desc limit 5;
;