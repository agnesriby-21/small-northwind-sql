-- Query 9 - Sales by Employee

select concat(e.firstname, ' ', e.lastname) as employee, sum(od.unitprice * od.quantity) as total_sales
from employees e
inner join orders o on e.employeeid = o.employeeid
inner join orderdetails od on o.orderid = od.orderid
group by employee
order by total_sales desc;
