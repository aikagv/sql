
 -- 1.Show all employees whose salaries are in the database, along with their salaries
SELECT employee_name, monthly_salary 
FROM employees e 
JOIN employee_salary es 
ON e.id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id ;

-- 2.Show all employees and their salaries where salary < 2000
SELECT employee_name, monthly_salary 
FROM employees e 
JOIN employee_salary es 
ON e.id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id
WHERE s.monthly_salary < 2000;

-- 3.Show all salary positions, but no employee is assigned to them
SELECT employee_name, monthly_salary 
FROM employees e 
RIGHT JOIN employee_salary es 
ON e.id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE employee_name IS NULL ;

--  4.Show all salary positions < 2000, but no employee is assigned to them
SELECT employee_name, monthly_salary
FROM employees e 
RIGHT JOIN employee_salary es 
ON e.id = es.employee_id  
JOIN salary s 
ON s.id = es.salary_id 
WHERE employee_name IS NULL
and s.mONthly_salary < 2000;

-- 5.Show all employees who have not received a salary
SELECT employee_name, salary_id
FROM employees e 
LEFT JOIN employee_salary es 
ON e.id = es.employee_id 
WHERE salary_id IS NULL ;

-- 6.Show all employees with their job titles
SELECT employee_name, role_name
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON r.id = re.role_id ;

-- 7.Show names and positions only for Java developers 
SELECT employee_name, role_name
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON r.id = re.role_id 
WHERE role_name LIKE '%Java developer%' ;

-- 8.Show names and positions only for PythON developers 
SELECT employee_name, role_name
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON r.id = re.role_id 
WHERE role_name LIKE '%PythON%' ;

-- 9.Show names and positions only for QA engineers
SELECT employee_name, role_name
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON r.id = re.role_id 
WHERE role_name LIKE '%QA%' ;

-- 10.Show names and positiONs only for Manual QA engineers
SELECT employee_name, role_name
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON r.id = re.role_id 
WHERE role_name LIKE '%Manual QA%' ;

-- 11.Show names and positiONs only for AutomatiON QA engineers
SELECT employee_name, role_name
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON r.id = re.role_id 
WHERE role_name LIKE '%AutomatiON QA%' ;

-- 12.Show names and salaries only for Junior specialists
SELECT employee_name, role_name, monthly_salary
FROM employees e
JOIN roles_employee re
ON e.id = re.employee_id
JOIN roles r
ON r.id = re.role_id
JOIN employee_salary es
ON e.id = es.employee_id
JOIN salary s
ON s.id = es.salary_id
WHERE role_name LIKE '%Junior%';

-- 13.Show names and salaries only for Middle specialists
SELECT employee_name, role_name, monthly_salary
FROM employees e
JOIN roles_employee re
ON e.id = re.employee_id
JOIN roles r
ON r.id = re.role_id
JOIN employee_salary es
ON e.id = es.employee_id
JOIN salary s
ON s.id = es.salary_id
WHERE role_name LIKE '%Middle%';

-- 14.Show names and salaries only for Senior specialists
SELECT employee_name, role_name, monthly_salary
FROM employees e
JOIN roles_employee re
ON e.id = re.employee_id
JOIN roles r
ON r.id = re.role_id
JOIN employee_salary es
ON e.id = es.employee_id
JOIN salary s
ON s.id = es.salary_id
WHERE role_name LIKE '%Senior%';

-- 15.Show salaries only for Java developers
SELECT  role_name, monthly_salary
FROM  roles r
JOIN roles_employee re
ON r.id = re.role_id 
JOIN employee_salary es
ON re.employee_id = es.employee_id
JOIN salary s
ON s.id = es.salary_id
WHERE role_name LIKE '%Java developer%';

 -- 16.Show salaries only for Python developers
SELECT role_name, monthly_salary
FROM roles r 
JOIN roles_employee re 
ON r.id = re.role_id 
JOIN employee_salary es 
ON re.employee_id = es.employee_id 
JOIN salary s 
ON s.id =es.salary_id 
WHERE role_name LIKE '%Python%' ;

-- 17.Show names and salaries only for Junior Python developers
SELECT employee_name, role_name, monthly_salary    
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON re.employee_id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id  
WHERE role_name LIKE '%Junior Python%';

-- 18.Show names and salaries only for Middle JS developers
SELECT employee_name, role_name, monthly_salary
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON re.employee_id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE role_name LIKE '%Middle JavaScript%' ;

--  19.Show names and salaries only for Senior Java developers
SELECT employee_name, role_name, monthly_salary
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON re.employee_id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE role_name LIKE '%Senior Java developer%' ;

 -- 20.Show salaries only for Junior QA engineers
SELECT role_name, monthly_salary
FROM roles r 
JOIN roles_employee re 
ON r.id = re.role_id 
JOIN employee_salary es 
ON es.employee_id = re.employee_id 
JOIN salary s 
ON s.id = re.role_id 
WHERE role_name LIKE '%Junior%QA%';

-- 21.Show average salaries only for Junior specialists
SELECT AVG(monthly_salary), role_name 
FROM roles r 
JOIN roles_employee re 
ON r.id = re.role_id
JOIN employee_salary es 
ON re.employee_id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id
WHERE role_name LIKE '%Junior%' 
GROUP BY role_name;

-- 22.Show the amount of salaries only for JS developers
SELECT SUM(monthly_salary)
FROM roles r 
JOIN roles_employee re 
ON r.id = re.role_id 
JOIN employee_salary es 
ON re.employee_id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE role_name LIKE '%JavaScript%';

-- 23.Show minimum salary only for QA engineers
SELECT MIN(monthly_salary)
FROM roles r 
JOIN roles_employee re 
ON r.id = re.role_id  
JOIN employee_salary es 
ON re.employee_id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE role_name LIKE '%QA%' ;

--  24.Show maximum salary only for QA engineers
SELECT MAX(monthly_salary)
FROM roles r 
JOIN roles_employee re 
ON r.id = re.role_id  
JOIN employee_salary es 
ON re.employee_id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id 
WHERE role_name LIKE '%QA%' ;

-- 25.Show the number of QA engineers 
SELECT COUNT(role_name)
FROM roles r 
JOIN roles_employee re 
ON r.id = re.role_id 
JOIN employees e 
ON e.id = re.employee_id 
WHERE role_name LIKE '%QA%' ;

-- 26.Show the number of Middle specialists
SELECT COUNT(role_name)
FROM roles r 
JOIN roles_employee re 
ON r.id = re.role_id 
JOIN employees e 
ON e.id = re.employee_id 
WHERE role_name LIKE '%Middle%' ;

-- 27.Show the number of developers
SELECT COUNT(role_name)
FROM roles r 
JOIN roles_employee re 
ON r.id = re.role_id 
JOIN employees e 
ON e.id = re.employee_id 
WHERE role_name LIKE '%developer%' ;

-- 28.Show amount salary of all developers
SELECT SUM(monthly_salary)
FROM roles r 
JOIN roles_employee re 
ON r.id = re.role_id 
JOIN salary s 
ON s.id = re.role_id 
WHERE role_name LIKE '%developer%';

-- 29.Show names, job titles and salary of all specialists in ascending order
SELECT employee_name, role_name, monthly_salary
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON r.id = re.role_id 
JOIN employee_salary es 
ON e.id = es.employee_id 
JOIN salary s 
ON s.id = es.salary_id 
ORDER BY monthly_salary;

-- 30.Show names, job titles and salary of all specialists in ascending order for employees with salary from 1700 to 2300
SELECT e.employee_name, r.role_name, s.monthly_salary
FROM employees e
JOIN roles_employee re
ON e.id = re.employee_id
JOIN roles r
ON re.role_id = r.id
JOIN salary s
ON e.id = s.id
WHERE s.monthly_salary BETWEEN 1700 AND 2300
ORDER BY s.monthly_salary;


-- 31.Show names, job titles and salary of all specialists in ascending order for employees with salary < 2300
select employee_name, role_name, monthly_salary
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON re.role_id = r.id 
JOIN employee_salary es
ON e.id = es.employee_id
JOIN salary s 
ON s.id = es.salary_id
WHERE monthly_salary < 2300
ORDER BY monthly_salary ;

-- 32.Show names, job titles and salary of all specialists in ascending order for employees with salary in 1100, 1500, 2000
SELECT employee_name, role_name, monthly_salary
FROM employees e 
JOIN roles_employee re 
ON e.id = re.employee_id 
JOIN roles r 
ON re.role_id = r.id 
JOIN employee_salary es
ON e.id = es.employee_id
JOIN salary s 
ON s.id = es.salary_id
WHERE monthly_salary IN (1100, 1500, 2000)
ORDER BY monthly_salary ;

