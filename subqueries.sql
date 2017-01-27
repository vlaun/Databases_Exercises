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
SELECT *
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = "Aamod"
);


#Find all the department managers that are female.
SELECT *
FROM employees as managers
  JOIN dept_manager
WHERE gender IN (
  SELECT gender
  FROM employees
  WHERE gender = 'F'
);


#Find all the department names that have female managers.
SELECT *
FROM departments
  JOIN dept_manager on dept_manager.dept_no = departments.dept_no
  JOIN employees as managers on dept_manager.emp_no = managers.emp_no
WHERE gender IN (
  SELECT gender
  FROM employees
  WHERE gender = 'F'
);