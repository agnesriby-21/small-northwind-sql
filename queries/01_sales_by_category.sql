-- Query 1 - Sales by Product Category

select c.categoryname as category, sum(od.unitprice * od.quantity) as total_sales
from categories c
inner join products p on c.categoryid = p.categoryid
inner join orderdetails od on p.productid = od.productid
group by c.categoryname 
order by total_sales desc;
