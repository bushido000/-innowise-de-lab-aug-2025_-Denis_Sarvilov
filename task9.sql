--Для каждого заказа добавьте колонку с суммой всех заказов этого клиента (используя оконную функцию). 
select order_id, customer_id, item, amount,
sum(amount) over (partition by customer_id) as Total_amount
from Orders 