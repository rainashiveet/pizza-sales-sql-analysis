-- Identify the highest-priced pizza.
select t.name,p.price
from pizza_types t
join pizzas p
    on t.pizza_type_id = p.pizza_type_id
where p.price = (
    select max(p2.price)
    from pizzas p2
);
