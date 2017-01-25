
#Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT first_name
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya';

#Now add a condition to find everybody with those names who is also male — 441 rows.
SELECT first_name
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya'
AND gender = 'm';

#Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT  last_name
FROM employees
WHERE last_name LIKE 'E%';


#Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT  last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';


#Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT  hire_date, birth_date
FROM employees
WHERE hire_date > 2000
AND birth_date LIKE '%12-25';