--Получите список заказов вместе с именем клиента, который сделал заказ.
select Customers.first_name, Customers.last_name, Orders.item, Orders.amount
from Customers 
inner join Orders on Customers.customer_id = Orders.customer_id 