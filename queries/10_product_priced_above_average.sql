-- query 10 - Products Priced above Average

select productname, unitprice
from products
where unitprice > (select avg(unitprice) 
				   from products)
order by unitprice desc;
