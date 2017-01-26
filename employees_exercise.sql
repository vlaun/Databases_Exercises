use employees;

#write a query that shows each department
#along with the name of the current manager for that department.
#look on the first table for foreign keys that reference other tables
#if no foreign keys, search for a table that does have the dept_no as the foreign key
SELECT concat(employees.first_name, ' ', employees.last_name) as "current manager", dept_name
FROM departments
JOIN dept_manager on dept_manager.dept_no = departments.dept_no
JOIN employees on dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date > curdate()
ORDER BY departments.dept_name;


#Find the name of all departments currently managed by women.
SELECT dept_name as "Departments managed by women.", gender
FROM departments
  JOIN dept_manager on dept_manager.dept_no = departments.dept_no
  JOIN employees as managers on dept_manager.emp_no = managers.emp_no
WHERE managers.gender = 'F'
AND dept_manager.to_date > curdate();



#Find the current titles of employees currently working in the Customer Service department.
SELECT title as "Titles of employess working in the Customer Service Department.", departments.dept_name as dept_name
FROM titles
  JOIN employees on titles.emp_no = employees.emp_no
  JOIN dept_emp on employees.emp_no = dept_emp.emp_no
  JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = "Customer Service"
AND dept_emp.to_date > curdate()
AND titles.to_date > curdate();


SELECT title, count(employees.first_name)
FROM titles
  JOIN employees on titles.emp_no = employees.emp_no
  JOIN dept_emp on employees.emp_no = dept_emp.emp_no
  JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = "Customer Service"
      AND dept_emp.to_date > curdate()
      AND titles.to_date > curdate();


#Find the current salary of all current managers.
SELECT salary, employees.first_name, employees.last_name
FROM salaries
  JOIN employees on salaries.emp_no = employees.emp_no
  JOIN dept_manager on employees.emp_no = dept_manager.emp_no
  JOIN departments on dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > curdate()
AND salaries.to_date > curdate();


#Find the names of all current employees, their department name,
# and their current manager's name.
SELECT concat(e.first_name, " ", e.last_name) as "Employee", departments.dept_name,
  concat(managers.first_name, managers.last_name) as "Manager"
FROM employees as e
JOIN dept_emp on e.emp_no = dept_emp.emp_no
JOIN departments on dept_emp.dept_no = departments.dept_no
JOIN dept_manager on departments.dept_no = dept_manager.dept_no
JOIN employees as managers on dept_emp.emp_no = managers.emp_no
WHERE dept_emp.to_date > curdate()
AND dept_manager.to_date > curdate();