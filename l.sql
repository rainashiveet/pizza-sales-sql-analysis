-- Group the orders by date and calculate the average number of pizzas ordered per day.

with quantity_sum as(
select o.order_date,sum(d.quantity) as sum -- over(partition by date(o.order_date))
from orders o
inner join order_details d
on o.order_id=d.order_id
group by o.order_date
)
select round(avg(sum),2) from quantity_sum;

-- select *from orders
-- order by order_date;