USE employees;


-- 3. Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.

SELECT  first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, last_name ASC;

 -- 4.Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT   last_name, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name DESC;


-- 5. Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no ASC;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name
FROM employees
WHERE first_name = 'Irena' OR
        first_name = 'Vidya' OR
            first_name= 'Maya'
        AND gender = 'male';


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' OR
        last_name LIKE '%E';

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E';



SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND
        last_name  NOT LIKE  '%qu%';