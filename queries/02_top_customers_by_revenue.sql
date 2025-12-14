-- Query 2 - Top Customers by Revenue

select c.companyname as customer, sum(od.unitprice * od.quantity * (1 - od.discount)) as total_revenue
from customers c
inner join orders o on c.customerid = o.customerid
inner join orderdetails od on o.orderid = od.orderid
group by c.companyname
order by total_revenue desc
limit 10;
