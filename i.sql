-- Intermediate:
-- Join the necessary tables to find the total quantity of each pizza category ordered.

select t.category,sum(o.quantity) as quantity
from pizza_types t
inner join pizzas p
on t.pizza_type_id=p.pizza_type_id
inner join order_details o
on p.pizza_id=o.pizza_id
group by t.category
order by quantity desc
;