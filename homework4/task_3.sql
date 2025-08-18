--1. Создать нового пользователя PostgreSQL (роль) с именем hr_user и 
--простым паролем. 
--2. Предоставить hr_user право SELECT на таблицу Employees. 
--3. Тест: В новой сессии подключиться как hr_user и попытаться 
--выполнить SELECT * FROM Employees;. (Должно сработать). 
--4. Как hr_user, попытаться выполнить INSERT нового сотрудника в 
--Employees. (Должно завершиться неудачей). 
--5. Как пользователь-администратор, предоставить hr_user права 
--INSERT и UPDATE на таблицу Employees. 
--6. Тест: Как hr_user, попробовать выполнить INSERT и UPDATE 
--сотрудника. (Теперь должно сработать).  

create ROLE hr_user Login password '12345';

grant select on table Employees to hr_user;

grant insert, update on table Employees to hr_user;
GRANT USAGE ON SEQUENCE employees_employeeid_seq TO hr_user;
-- выполнения заданий 3, 4, 6 представлены на скриншотах