-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
with cte as(select t.category as cat,t.name as name,sum(p.price*d.quantity) as revenue
from pizza_types t
inner join pizzas p
on t.pizza_type_id=p.pizza_type_id
inner join order_details d
on p.pizza_id=d.pizza_id
group by t.category,t.name
)
select cat,name,revenue from(select cat,name,revenue,rank() over(partition by cat order by revenue desc) r
from cte) ranked
where r<=3;