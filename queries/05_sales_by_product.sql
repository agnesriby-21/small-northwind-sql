-- Query 5 - Sales by Product

select p.productname as product, sum(od.unitprice * od.quantity) as total_sales
from products p
inner join orderdetails od on p.productid = od.productid
group by p.productname
order by total_sales desc;
