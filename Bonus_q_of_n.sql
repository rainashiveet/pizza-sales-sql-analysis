-- Calculate the percentage contribution of each pizza to total revenue.

-- revenue=sum(quantity*cost)
with r as(
select sum(d.quantity*p.price) revenue_total
from pizza_types as t
inner join pizzas p
on t.pizza_type_id=p.pizza_type_id
inner join order_details d
on p.pizza_id=d.pizza_id
),
-- cant put two with one after another 
e as(
select t.name as name,sum(d.quantity*p.price) as each_pizza
from pizza_types as t
inner join pizzas p
on t.pizza_type_id=p.pizza_type_id
inner join order_details d
on p.pizza_id=d.pizza_id
group by t.name
)

select e.name,round((e.each_pizza/r.revenue_total)*100,2) as percentage_contribution
from e
cross join r
order by percentage_contribution desc;