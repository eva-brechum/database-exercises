USE employees;


-- Return 10 employees in a result set named 'full_name'
-- in the format of 'last name, first name' for each employee.

SELECT CONCAT(last_name, '', first_name) AS full_name
FROM employees
GROUP BY full_name
LIMIT 10;

-- Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(birth_date, '', last_name, '', first_name) AS DOB
FROM employees
GROUP BY birth_date
LIMIT 10;
-- Update the query to format full name to include the employee number so it is
-- formatted as 'employee number - last name, first name'.
SELECT CONCAT(emp_no, '', last_name, '', first_name) AS full_name, birth_date AS DOB
FROM employees
GROUP BY emp_no
LIMIT 10;
