--1. Создать новую таблицу с именем Departments со столбцами: 
--DepartmentID (SERIAL PRIMARY KEY), DepartmentName 
--(VARCHAR(50), UNIQUE, NOT NULL), Location (VARCHAR(50)).
 
--2. Изменить таблицу Employees, добавив новый столбец с именем 
--Email (VARCHAR(100)). 

--3. Добавить ограничение UNIQUE к столбцу Email в таблице 
--Employees, предварительно заполнив любыми значениями 

--4. Переименовать столбец Location в таблице Departments в 
--OfficeLocation. 

create table Departments ( -- 1
	DepartmentID SERIAL PRIMARY KEY, 
	DepartmentName VARCHAR(50) unique NOT NULL, 
	Location VARCHAR(50)
	);

alter table Employees add column Email VARCHAR(100); -- 2

UPDATE Employees
SET Email = 
    'user_' || EmployeeID || '@example.com' 
    WHERE 
    Email IS NULL OR  
    Email IN (       
        SELECT Email
        FROM Employees
        GROUP BY Email
        HAVING COUNT(*) > 1  
    );

alter table Employees 
add constraint unique_email unique (Email);

alter table Departments -- 4 
rename column location to OfficeLocation;

select * from employees ;

select * from Departments;