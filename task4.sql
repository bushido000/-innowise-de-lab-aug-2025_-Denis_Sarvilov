--Выведите список доставок со статусом и именем клиента.
select Shippings.status, Customers.first_name, Customers.Last_name
from Customers  
inner join Shippings on Customers.customer_id = Shippings.customer