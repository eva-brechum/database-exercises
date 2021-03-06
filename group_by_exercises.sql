USE employees;

-- use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title FROM titles;

-- Find your query for employees whose last names start and end with 'E'
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name
ORDER BY last_name;

-- Update your previous query to now find unique combinations of first and lastname where the last name starts and ends with 'E'.
-- You should get 846 rows. --
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;

-- Find the unique last names with a 'q' but not 'qu'. Your results should be:
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND
        last_name  NOT LIKE  '%qu%'
GROUP BY last_name;

# Walkthrough solution
# SELECT DISTINCT last_name
# FROM employees
# WHERE last_name LIKE '%q%' AND
#       last_name NOT LIKE '%qu%';


-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%' AND
        last_name  NOT LIKE  '%qu%'
GROUP BY last_name
ORDER BY last_name;


-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:

SELECT  COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;


