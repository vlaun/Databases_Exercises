#Modify your first query to order by first name. The first result should be Irena Majewski and the last result should be Vidya Schaft.
SELECT first_name
        FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;


#Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

#Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT last_name, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;


#Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no;


#Now reverse the sort order for both queries.
SELECT last_name, emp_no
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no DESC;

#Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT first_name, last_name, hire_date, birth_date, emp_no
FROM employees
WHERE birth_date LIKE '%-12-25'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date, hire_date DESC;