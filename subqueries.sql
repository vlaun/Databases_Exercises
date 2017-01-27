use employees;

#Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT first_name, last_name, hire_date, emp_no as "Same hire date as employee 101010."
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

#Find all the titles held by all employees with the first name Aamod.
SELECT title, first_name, last_name
FROM employees
  JOIN titles
WHERE title IN (
  SELECT title
  FROM titles
  WHERE first_name  like "Aamod"
);


#Find all the department managers that are female.
SELECT gender, first_name, last_name
FROM employees as managers
  JOIN dept_manager
WHERE gender IN (
  SELECT gender
  FROM employees
  WHERE gender = 'F'
);


#Find all the department names that have female managers.
SELECT dept_name as "Departments managed by women.", gender, first_name, last_name
FROM departments
  JOIN dept_manager on dept_manager.dept_no = departments.dept_no
  JOIN employees as managers on dept_manager.emp_no = managers.emp_no
WHERE gender IN (
  SELECT gender
  FROM employees
  WHERE gender = 'F'
);