-- query 4 - Total Orders by Customer

select c.companyname as customer, count(o.orderid) as total_orders
from customers c
inner join orders o on c.customerid = o.customerid
group by c.companyname
order by total_orders desc;
