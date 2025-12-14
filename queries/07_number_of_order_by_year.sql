-- Query 7 - Number of Orders by Year

select  year(o.orderdate) as order_year, count(o.orderid) as total_orders
from orders o
group by order_year
order by order_year;
