--Найдите всех клиентов, которые сделали заказ с максимальной суммой.
select 
	c.first_name,
	c.last_name,
	sum(o.amount)
from customers c 
join Orders o on o.customer_id = c.customer_id 
group by c.customer_id 
	
having sum(o.amount) = (
	select max(total)
	from (
		select sum(amount) as total
		from Orders
		group by customer_id
	) as sum_table
);