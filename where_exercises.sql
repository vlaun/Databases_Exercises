#Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

#Employees whose last name starts with 'E' — 7,330 rows.
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

#Employees hired in the 90s — 135,214 rows.
SELECT hire_date
FROM employees
WHERE hire_date > 2000;
;


#Employees born on Christmas — 842 rows.
SELECT birth_date
FROM employees
WHERE birth_date LIKE '%12-25';


#Employees with a 'q' in their last name — 1,873 rows.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%';