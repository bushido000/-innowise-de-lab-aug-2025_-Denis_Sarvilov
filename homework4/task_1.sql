--1. Вставить двух новых сотрудников в таблицу Employees. 
--2. Выбрать всех сотрудников из таблицы Employees. 
--3. Выбрать только FirstName и LastName сотрудников из отдела 'IT'. 
--4. Обновить Salary 'Alice Smith' до 65000.00. 
--5. Удалить сотрудника, чья LastName — 'Prince'. 
--6. Проверить все изменения, используя SELECT * FROM Employees;. 

insert into employees (FirstName, LastName, Department, Salary) VALUES 
('Den', 'Sarv', 'IT', 80000.00), 
('Fredy', 'Kruger', 'HR', 50000.00);

select * from employees; -- 2

select concat(FirstName, ' ', LastName) as FullName -- 3
from employees
where department = 'IT';

update employees 
set Salary = 65000.00
where FirstName = 'Alice' and LastName = 'Smith' ;

delete from EmployeeProjects -- 5
where EmployeeID = (
	select EmployeeID 
	from employees 
	where LastName = 'Prince');
delete from employees
where LastName = 'Prince';

select * from employees; -- 6