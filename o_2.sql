-- Analyze the cumulative revenue generated over time.
-- Good question
-- method -1  without cte


-- select o.order_date,sum(d.quantity*p.price) as revenue,sum(sum(d.quantity*p.price)) over(order by o.order_date) as cuml_sum
-- from orders o
-- inner join order_details d
-- on o.order_id=d.order_id
-- inner join pizzas p
-- on p.pizza_id=d.pizza_id
-- group by o.order_date;



-- with cte
with cte as (
    select 
        o.order_date as date,
        sum(d.quantity * p.price) as revenue
    from orders o
    inner join order_details d on o.order_id = d.order_id
    inner join pizzas p on p.pizza_id = d.pizza_id
    group by o.order_date
    )
    select date,revenue,sum(revenue) over(order by date) as cumulative_sum
    from cte;
