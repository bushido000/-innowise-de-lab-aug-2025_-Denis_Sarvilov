--1. Найти ProjectName всех проектов, в которых 'Bob Johnson' 
--работал более 150 часов. 
--2. Увеличить Budget всех проектов на 10%, если к ним назначен хотя 
--бы один сотрудник из отдела 'IT'. 
--3. Для любого проекта, у которого еще нет EndDate (EndDate IS 
--NULL), установить EndDate на один год позже его StartDate. 
--4. Вставить нового сотрудника и немедленно назначить его на проект 
--'Website Redesign' с 80 отработанными часами, все в рамках одной 
--транзакции. Использовать предложение RETURNING, чтобы получить 
--EmployeeID вновь вставленного сотрудника.

-- Задание 1
SELECT p.ProjectName
FROM Projects p
JOIN EmployeeProjects ep ON p.ProjectID = ep.ProjectID
JOIN Employees e ON ep.EmployeeID = e.EmployeeID
WHERE e.FirstName = 'Bob' 
  AND e.LastName = 'Johnson'
GROUP BY p.ProjectID, p.ProjectName
HAVING SUM(ep.HoursWorked) > 150;


-- Задание 2
UPDATE Projects p
SET Budget = Budget * 1.10
WHERE EXISTS (
    SELECT 1
    FROM EmployeeProjects ep
    JOIN Employees e ON ep.EmployeeID = e.EmployeeID
    WHERE ep.ProjectID = p.ProjectID
    AND e.Department = 'IT'
);

-- Задание 3
UPDATE Projects
SET EndDate = StartDate + INTERVAL '1 year'
WHERE EndDate IS NULL;


-- Задание 4
BEGIN;

WITH NewEmployee AS (
    INSERT INTO Employees (FirstName, LastName, Department, Salary)
    VALUES ('Alex', 'Smith', 'IT', 70000.00)
    RETURNING EmployeeID
)
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
SELECT 
    NewEmployee.EmployeeID,
    (SELECT ProjectID FROM Projects WHERE ProjectName = 'Website Redesign'),
    80
FROM NewEmployee;

COMMIT;

