-- Query 3 - Revenue by Customer Country

select c.country, sum(od.unitprice * od.quantity * (1 - od.discount)) as total_revenue
from customers c
inner join orders o on c.customerid = o.customerid
inner join orderdetails od on o.orderid = od.orderid
group by c.country
order by total_revenue desc;
