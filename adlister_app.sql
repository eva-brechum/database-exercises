CREATE DATABASE IF NOT EXISTS adlister_db;
USE adlister_db;


-- DESCRIBE users;

CREATE TABLE IF NOT EXISTS users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL,
    password VARCHAR(250)NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (user_name, email)
);

CREATE TABLE IF NOT EXISTS ads(
       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        user_id INT UNSIGNED NOT NULL,
       title VARCHAR(250) NOT NULL,
        description TEXT NOT NULL,
        PRIMARY KEY (id),
        FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS categories (
       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
      title VARCHAR(250) NOT NULL,
       PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads_categories(
         ad_id INT UNSIGNED NOT NULL,
           cate_id INT UNSIGNED NOT NULL,
           FOREIGN KEY(ad_id) REFERENCES ads(id),
           FOREIGN KEY(cate_id)REFERENCES categories(id)
);
