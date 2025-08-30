--1. Увеличить Salary всех сотрудников в отделе 'HR' на 10%. 
--2. Обновить Department любого сотрудника с Salary выше 70000.00 
--на 'Senior IT'. 
--3. Удалить всех сотрудников, которые не назначены ни на один проект в 
--таблице EmployeeProjects. Подсказка: Используйте подзапрос NOT 
--EXISTS или LEFT JOIN 
--4. Вставить новый проект и назначить на него двух существующих 
--сотрудников с определенным количеством HoursWorked в 
--EmployeeProjects, и все это в одном блоке BEGIN/COMMIT. 

update employees e 
set salary = salary * 1.1
where e.department = 'HR';

update employees e 
set department = 'Senior IT'
where e.salary > 700000.00;

delete from Employees
where EmployeeID not in(
	select e.employeeid 
	from projects p
	left join EmployeeProjects e on e.ProjectID = p.ProjectID
	);

BEGIN;
INSERT INTO Projects (ProjectName) VALUES ('Новый проект');

INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
SELECT 
    e.employee_id, 
    currval('projects_projectid_seq'), 
    169
FROM (VALUES (2), (3)) AS e(employee_id)
WHERE EXISTS (
    SELECT 1 FROM Employees 
    WHERE EmployeeID = e.employee_id
);

COMMIT;

select * from employees;
SELECT * FROM projects;
SELECT * FROM employeeprojects;
