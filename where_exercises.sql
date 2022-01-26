USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).

SELECT  first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');


-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

-- Find all employees with a 'q' in their last name — 1,873 rows.--
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

# PART TWO
SELECT first_name
FROM employees
WHERE first_name = 'Irena' OR
        first_name = 'Vidya' OR
            first_name= 'Maya'
        AND gender = 'male';

-- Find all employees whose last name starts or ends with 'E' -30723
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' OR
      last_name LIKE '%E';


 -- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E';

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT last_name
FROM employees
WHERE last_name LIKE ('q' NOT LIKE  'qu');

