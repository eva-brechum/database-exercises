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

SELECT CONCAT(u.name, ' ', u.email) AS  users,
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
