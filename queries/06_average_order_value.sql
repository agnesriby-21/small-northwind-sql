-- Query 6 - Average Order Value

select avg(order_total) as average_order_value
from (select o.orderid, sum(od.unitprice * od.quantity) as order_total
	  from orders o
      inner join orderdetails od on o.orderid = od.orderid
      group by o.orderid) 
t;
