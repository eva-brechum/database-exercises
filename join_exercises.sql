CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

SHOW CREATE DATABASE join_test_db;
SHOW DATABASES;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null),
                                             ('megan', 'megan@example.com', 2),
                                             ('sam', 'sam@example.com', 2),
                                             ('star', 'star@example.com', 2),
                                             ('nala', 'nala@example.com', null);

-- Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results
   -- from the users and roles tables as we did in the lesson

SELECT CONCAT(u.name, ' ', u.email) AS  user_name,
       CONCAT(r.name, ' ', r.name) AS roles
FROM users AS u
JOIN roles AS r ON u.role_id = r.id;

# LEFT JOIN
SELECT CONCAT(u.name, ' ', u.email) AS  users,
       CONCAT(r.name, ' ', r.name) AS roles
FROM users AS u
         LEFT JOIN roles r on u.role_id = r.id;

# RIGHT JOIN
SELECT CONCAT(u.name, ' ', u.email) AS  users,
       CONCAT(r.name, ' ', r.name) AS role
FROM users as u
         RIGHT JOIN roles r on u.role_id = r.id;

SELECT roles.*, users.*
FROM roles
JOIN users
ON roles.id = roles.id = users.role_id;


USE employees;

# write a query that shows each department along with the name
# of the current manager for that department.

SELECT * FROM dept_manager;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM salaries;
SELECT * FROM employees;
SELECT * FROM titles;

# SELECT CONCAT(e.first_name, '  ', e.last_name) AS full_name,
#        d.dept_name
# FROM employees AS e
#     JOIN dept_emp AS de
#     ON de.emp_no = e.emp_no
#     JOIN departments AS d on de.dept_no = d.dept_no
#     WHERE de.to_date ='1999-01-01' AND e.emp_no =10001;

SELECT d.dept_name AS 'department name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department manager'
FROM departments AS d
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE dm.to_date > curdate()
ORDER BY d.dept_name;

-- Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department manager'
FROM departments AS d
         JOIN dept_manager AS dm
              ON d.dept_no = dm.dept_no
         JOIN employees AS e
              ON e.emp_no = dm.emp_no
WHERE dm.to_date > curdate() AND e.gender = 'F'
ORDER BY d.dept_name;

-- Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS title,
       COUNT(*) AS Total FROM titles AS T
JOIN dept_emp de on T.emp_no = de.emp_no
WHERE de.dept_no = 'd009' AND t.to_date > curdate()
GROUP BY t.title;

-- Find the current salary of all current managers.
SELECT d.dept_name AS 'Department name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department manager',
       s.salary AS Salary
      FROM departments AS d
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE s.to_date > curdate() AND dm.to_date > curdate()
ORDER BY d.dept_name;

#  Bonus: Find the names of all current employees, their department name,
# and their current manager's name .
SELECT CONCAT (e.first_name, ' ', e.last_name) AS 'Employee Name',
    d.dept_name AS 'Department name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department manager'
FROM departments AS d
         JOIN dept_manager AS dm
              ON d.dept_no = dm.dept_no
        JOIN dept_emp de on d.dept_no = de.dept_no
         JOIN employees AS em ON em.emp_no = dm.emp_no
         JOIN employees AS e ON e.emp_no = de.emp_no
WHERE dm.to_date > curdate() AND de.to_date > curdate()
ORDER BY d.dept_name;


