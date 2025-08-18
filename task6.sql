--Подсчитайте количество клиентов в каждой стране. 
select item, count(item), avg(amount)
from Orders
group by item 