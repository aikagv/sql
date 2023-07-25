CREATE TABLE public.students (
 id serial NOT NULL,
 "name" varchar(50) NOT NULL,
 email varchar(50) NOT NULL,
 "password" varchar(50) NOT NULL,
 created_on timestamp NOT NULL,
 CONSTRAINT students_email_key UNIQUE (email),
 CONSTRAINT students_pkey PRIMARY KEY (id)
);

-- 1.Show all fields and all rows in the table 'Students'
SELECT * FROM students s ;

-- 2.Show all students of the table 'Students'
SELECT name FROM students s ;

-- 3.Show ids of the table 'Students'
SELECT id FROM students s ;

-- 4.Show only the user names of the table 'Students'
SELECT name FROM students s ;

-- 5.Show only the user e-mails of the table 'Students'
SELECT email FROM students s ;

 -- 6.Show all names and e-mails of the table 'Students'
SELECT name, email FROM students s ;

 -- 7.Show all ids, names, e-mails, dates of creation of the table 'Students'
SELECT id, name, email, created_on FROM students s ;

 -- 8.Show all users of the table 'Students' with password 12333
SELECT name, password 
FROM students s 
WHERE "password" = '12333';

 -- 9.Show all users of the table 'Students' which were created on 2021-03-26 00:00:00
SELECT name, created_on
FROM students s 
WHERE created_on = '2021-03-26 00:00:00';

 -- 10.Show all users of the table 'Students'  which  names contain "Anna"
SELECT name 
FROM students s 
WHERE name LIKE '%Anna%';

 -- 11.Show all users of the table 'Students' which names contain "8" in the end of the name
SELECT name 
FROM students s 
WHERE name LIKE '%8';

 -- 12.Show all users of the table 'Students' which names contain "a"
SELECT name 
FROM students s 
WHERE name LIKE '%a%';

 -- 13.Show all users of the table 'Students' which were created on 2021-07-12 00:00:00
SELECT name, created_on 
FROM students s 
WHERE created_on = '2021-07-12 00:00:00';

 -- 14.Show all users of the table 'Students' which were created on 2021-07-12 00:00:00 and have password 1m313
SELECT name, created_on, password
FROM students s 
WHERE created_on = '2021-07-12 00:00:00'
AND "password" = '1m313';

 -- 15.Show all users of the table 'Students' which were created on 2021-07-12 00:00:00 and name contained "Andrey"
SELECT name, created_on 
FROM students s 
WHERE created_on = '2021-07-12 00:00:00'
AND "name" LIKE '%Andrey%';

 -- 16.Show all users of the table 'Students' which were created on 2021-07-12 00:00:00 and name contained "8"
SELECT name, created_on 
FROM students s 
WHERE created_on = '2021-07-12 00:00:00'
AND "name" LIKE '%8%';

 -- 17.Show user of the table 'Students' which have id = 110
SELECT id, name
FROM students s 
WHERE id = '110';

 -- 18.Show user of the table 'Students' which have id = 153
SELECT id, name
FROM students s 
WHERE id = '153';

 -- 19.Show users of the table 'Students' which have id > 140
select id, name
FROM students s 
WHERE id > '140';

 -- 20.Show users of the table 'Students' which have id < 130
SELECT id, name
FROM students s 
WHERE id < '130';

 -- 21.Show users of the table 'Students' which have id < 127 or > 188
SELECT id, name
FROM students s 
WHERE id < '127' 
OR id > '188';

 -- 22.Show users of the table 'Students' which have id <= 137
SELECT id, name 
FROM students s 
WHERE id <= '137';

 -- 23.Show users of the table 'Students' which have id >= 137
SELECT id, name
FROM students s 
WHERE id >= '137';

 -- 24.Show users of the table 'Students' which have id more than 180 and less than 190
SELECT id, name
FROM students s 
WHERE id > '180' 
AND id < '190';

 -- 25.Show users of the table 'Students' which have id between 180 and 190
SELECT id, name
FROM students s 
WHERE id BETWEEN '180' 
AND '190';

 -- 26.Show users of the table 'Students' which have password in range 12333, 1m313, 123313
SELECT name, password 
FROM students s 
WHERE "password" IN ('12333', '1m313', '123313');

 -- 27.Show users of the table 'Students' which were created in range 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT name, created_on 
FROM students s 
WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

 -- 28.Show minimum id of the table 'Students'
SELECT MIN(id) FROM students;

 -- 29.Show maximum id of the table 'Students'
SELECT MAX(id) FROM students s; 

 -- 30.Show number of users of the table 'Students'
SELECT COUNT(name) FROM students s; 

 -- 31.Show all ids, names of the table 'Students' order by creation  date ascending order
SELECT id, name, created_on 
FROM students s 
ORDER BY created_on;

 -- 32.Show all ids, names of the table 'Students' order by creation  date descending order
SELECT id, name, email, created_on
FROM students s 
ORDER BY created_on DESC;