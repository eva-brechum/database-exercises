USE employees;

SELECT DISTINCT title FROM titles;

-- 2. List the first 10 distinct last name sorted in descending order. Your result should look like this:

SELECT DISTINCT last_name
FROM employees
WHERE last_name like 'Z%'
ORDER BY last_name DESC
LIMIT 10;

-- 3.Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be:

SELECT DISTINCT emp_no
FROM employees
WHERE emp_no
ORDER BY emp_no BETWEEN 43624 AND 253939
LIMIT 5;

-- 4.Update the previous query to find the tenth page of results. The employee number results should be:
