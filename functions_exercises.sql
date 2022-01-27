USE employees;

SELECT  *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT  first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, last_name ASC;

SELECT   last_name, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name DESC;

 -- 2. for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
# SELECT concat(first_name,' ',last_name')
# FROM employees
# WHERE last_name LIKE 'E%E';

SELECT concat('last_name','FROM employees', 'WHERE last_name' 'LIKE E%E');

-- 3. Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

   -- 4.  Find all employees hired in the 90s and born on Christmas 362 rows

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

# Walkthrough solution
# SELECT*
# FROM employees
# WHERE month(birth_date) = 12
# AND day(birth_date) =25;
 -- 5.Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last Khun Bernini
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date desc;


 -- 6. For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company

SELECT first_name, last_name, CONCAT(datediff(curdate(),hire_date),'days.')
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%12-25'
ORDER BY datediff(curdate(), hire_date, DESC);


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E';


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no ASC;

SELECT   last_name, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;





