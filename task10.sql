--Найдите клиентов, которые: 
--1. Сделали хотя бы 2 заказа (любых), 
--2. Имеют хотя бы одну доставку со статусом 'Delivered'. 
--Для каждого такого клиента выведите: 
--● full_name (имя + фамилия), 
--● общее количество заказов, 
--● общую сумму заказов, 
--● страну проживания. 
select 
	concat (c.first_name, ' ',c.last_name ) as full_name,
	c.country ,
	count(o.order_id),
	sum(o.amount)
from customers c 
inner join orders o on c.customer_id = o.customer_id 
where exists (
	select 1
	from shippings s 
	where s.customer = c.customer_id 
	and s.status = 'Delivered'
)
group by c.customer_id
having (count(o.order_id) >= 2)
