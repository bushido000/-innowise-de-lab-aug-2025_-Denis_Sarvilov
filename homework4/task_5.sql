--1. Функция: Создать функцию PostgreSQL с именем 
--CalculateAnnualBonus, которая принимает employee_id и 
--Salary  в качестве входных данных и возвращает рассчитанную 
--сумму бонуса (10 % от Salary) для этого сотрудника. Используйте 
--PL/pgSQL для тела функции. 
--2. Использовать эту функцию в операторе SELECT, чтобы увидеть 
--потенциальный бонус для каждого сотрудника. 
--3. Представление (View): Создать представление с именем 
--IT_Department_View, которое показывает EmployeeID, 
--FirstName, LastName и Salary только для сотрудников из отдела 
--'IT'. 
--4. Выбрать данные из вашего представления IT_Department_View
create or replace function CalculateAnnualBonus( -- 1
	employee_id int,
	Salary numeric
	)
returns numeric as $$
begin
	return salary * 0.1;
end; $$
language plpgsql;
select  -- 2
	EmployeeID,
	FirstName, 
	LastName, 
	Salary,
	CalculateAnnualBonus(EmployeeID,Salary) as AnnualBonus
from employees ;

create or replace view IT_Department_View as -- 3
select 
	employeeID,
	lastName,
	Salary,
	FirstName,
	Department
from Employees
where Department = 'IT';

select * from IT_Department_View -- 4
	

