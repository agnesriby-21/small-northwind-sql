-- Query 8 - Top Selling Products by Quantity

select p.productname as product, sum(od.quantity) as total_quantity
from products p
inner join orderdetails od on p.productid = od.productid
group by p.productname
order by total_quantity desc;
