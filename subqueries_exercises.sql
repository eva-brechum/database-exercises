USE employees;

-- 1.Find all the employees with the same hire date as employee 101010
-- using a subquery. -69 Rows --
SELECT first_name, last_name,hire_date
FROM employees
WHERE hire_date =
    (SELECT hire_date
        FROM employees
      WHERE emp_no = '101010'
    );

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

SELECT DISTINCT first_name
FROM employees
WHERE first_name =
      (SELECT first_name
          FROM employees
          WHERE first_name = 'Aamod'
          );
# Needs work