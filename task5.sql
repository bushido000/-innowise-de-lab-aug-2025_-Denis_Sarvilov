--Подсчитайте количество клиентов в каждой стране. 
select country, count(country)
from Customers  
group by country
