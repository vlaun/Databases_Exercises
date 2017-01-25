#Update your query for 'Irena', 'Vidya', or 'Maya'.
# Use count(*) and GROUP BY to find the number of employees for each gender
# with those names.
SELECT COUNT(*), gender as 'Number of Male and Female employees'
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
#ORDER BY first_name
GROUP BY gender;


#Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together
# as a single column in your results.

SELECT CONCAT(first_name, " ", last_name) as 'full name'
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no;


#For your query of employees born on Christmas and hired in the 90s,
# use datediff() to find how many days they have been working at the company
# (Hint: You will also need to use now() or curdate())

SELECT first_name, last_name, DATEDIFF(now(), hire_date) as 'Number of days employed'
FROM employees
WHERE birth_date LIKE '%-12-25'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';



#Add a GROUP BY clause to your query for last names with 'q' and not 'qu'
# to find the distinct combination of first and last names.
# You will find there were some duplicate first and last name pairs
# in your previous results. Add a count() to your results and use ORDER BY
# to make it easier to find employees whose unusual name is shared with others.

SELECT CONCAT(first_name, " ", last_name) as "full_name", count(first_name) as "number of people with this name"
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY full_name
ORDER BY 'number of people with this name' DESC;