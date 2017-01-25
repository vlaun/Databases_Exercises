#List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10;


#Find your query for employees born on Christmas and hired in the 90s
# from order_by_exercises.sql.
# Update it to find just the first 5 employees.
SELECT first_name, last_name, hire_date, birth_date, emp_no
FROM employees
WHERE birth_date LIKE '%-12-25'
      AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date, hire_date DESC
LIMIT 5;


#Try to think of your results as batches, or sets.
# The first five results are your first batch.
# The five after that would be your second batch, etc.
# Update the query to find the tenth batch of results.
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25'
      AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date, hire_date
LIMIT 5 OFFSET 45;