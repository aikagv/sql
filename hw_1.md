## SQL Data Definition Language
___

#### 1. Create the 'employees' table:
```sql
CREATE TABLE employees(
	id serial NOT NULL primary key,
	employee_name varchar(50) NOT NULL
);
```
#### 2. Fill the 'employee' table with 70 rows:
```sql
INSERT INTO employees(employee_name)
VALUES  ('Melinda Wood'),
        ('...');
        ('Elizabeth Jensen');
```
```sql
mysql> SELECT * FROM employees;
+----+-------------------+
| id | employee_name     |
+----+-------------------+
|  1 | Melinda Wood      |
|  2 | Matthew Holmes    |
|  3 | Dave Smith        |
|  4 | Shane Murphy      |
|  5 | Ellen Chavez      |
|  6 | Bruce Smith       |
|  7 | Karen Sanchez     |
|  8 | Richard Hughes    |
|  9 | Lewis Collins     |
| 10 | Ryan Johnson      |
| .. | ...               |
| 70 | Elizabeth Jensen  |
+----+-------------------+
```
#### 3. Create the 'salary' table:
```sql
CREATE TABLE salary(
	id serial NOT NULL primary key,
	monthly_salary int NOT NULL
);
```
#### 4. Fill the 'salary' table with 40 rows:
```sql
INSERT INTO salary(monthly_salary)
VALUES  (1000),
		(...),
		(2500);
``` 
```sql
mysql> SELECT * FROM salary;
+----+----------------+
| id | monthly_salary |
+----+----------------+
|  1 |           1000 |
|  2 |           1100 |
|  3 |           1200 |
|  4 |           1300 |
|  5 |           1400 |
| .. |            ... |
| 16 |           2500 |
+----+----------------+
```
#### 5. Create the 'employee_salary' table:
```sql
CREATE TABLE employee_salary(
	id serial NOT NULL primary key,
	employee_id int NOT NULL unique,
	salary_id int NOT NULL
);
```
#### 6. Fill the 'employee_salary' table with 40 rows. In 10 rows out of 40 insert non-existent employee_id:
```sql
INSERT INTO employee_salary(employee_id, salary_id)
VALUES  (6, 3),
		(...),
		(95, 11);
``` 
```sql
mysql> SELECT * FROM employee_salary;
+----+-------------+-----------+
| id | employee_id | salary_id |
+----+-------------+-----------+
|  1 |           6 |         3 |
|  2 |          17 |        13 |
|  3 |          37 |         5 |
|  4 |          31 |        13 |
|  5 |          70 |        14 |
|  6 |          54 |        10 |
|  7 |          67 |         3 |
|  8 |           9 |         6 |
|  9 |          21 |         1 |
| 10 |          46 |        14 |
| .. |         ... |       ... |
| 40 |          95 |        11 |
+----+-------------+-----------+
```
#### 7. Create the 'roles' table:
```sql
CREATE TABLE roles(
	id serial NOT NULL primary key,
	role_name varchar(30) NOT NULL unique
);
```
#### 8. Change column type 'role_name' from `int` to `varchar(30)`
```sql
ALTER TABLE roles
ALTER column role_name TYPE varchar(30);
```
#### 9. Fill the 'roles' table with 20 rows:
```sql
INSERT INTO roles(role_name)
VALUES  ('Junior Python developer'),
		('...'),
		('Senior Automation QA engineer');
```
```sql
mysql> SELECT * FROM roles ORDER BY id;
+----+-------------------------------+
| id | role_name                     |
+----+-------------------------------+
|  1 | Junior Python developer       |
|  2 | Middle Python developer       |
|  3 | Senior Python developer       |
|  4 | Junior Java developer         |
|  5 | Middle Java developer         |
| .. |
| 20 | Senior Automation QA engineer |
+----+-------------------------------+
```
#### 10. Create the 'roles_employee' table:
```sql
CREATE TABLE roles_employee(
	id serial NOT NULL primary key,
	employee_id int NOT NULL unique,
	role_id int NOT NULL
);	
```
#### 11. Fill the 'roles' table with 40 rows:
```sql
insert into roles_employee(employee_id, role_id)
values  (51, 15),
		(...),
		(40, 18);
```
```sql
mysql> select * from roles_employee;
+----+-------------+---------+
| id | employee_id | role_id |
+----+-------------+---------+
|  1 |          51 |      15 |
|  2 |          35 |       1 |
|  3 |          57 |      17 |
|  4 |          45 |       4 |
|  5 |          26 |      14 |
| .. |          .. |      .. |
| 39 |          28 |       6 |
| 40 |          58 |      18 |
+----+-------------+---------+
```
