--Найдите всех клиентов из страны 'USA', которым больше 25 лет.
select first_name, last_name, age, country
from Customers
where age > 25 and country = 'USA'