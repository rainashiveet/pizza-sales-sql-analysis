-- Determine the top 3 most ordered pizza types based on revenue.
with cte as(
select t.name as name,sum(p.price*d.quantity) as cost
from pizza_types t
inner join pizzas p
on t.pizza_type_id=p.pizza_type_id
inner join order_details d
on p.pizza_id=d.pizza_id
group by t.name
)
select distinct name,cost from cte
order by cte.cost desc limit 3;
