-- Join relevant tables to find the category-wise distribution of pizzas.
select t.category,count(t.name)
from pizza_types t
group by t.category;
