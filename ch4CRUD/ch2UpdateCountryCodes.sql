-- Update Country Codes
-- Using our previous query, we've noticed that some of the records were incorrectly saved with a country_code value of USA instead of US.

-- Challenge
-- Write an SQL statement to update the country_code value from 'USA' to 'US' for all user records, ensuring that only those records initially marked with 'USA' are changed.


UPDATE users
SET country_code = "US"
WHERE country_code = "USA";


-- TEST SUITE, DON'T TOUCH BELOW THIS LINE --

SELECT * FROM users;
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country_code TEXT NOT NULL,
    username TEXT UNIQUE,
    password TEXT NOT NULL,
    is_admin BOOLEAN
);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (1, 'David', 34, 'US', 'DavidDev', 'insertPractice', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (2, 'Samantha', 29, 'BR', 'Sammy93', 'addingRecords!', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (3, 'John', 39, 'CA', 'Jjdev21', 'welovebootdev', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (4, 'Ram', 42, 'IN', 'Ram11c', 'thisSQLcourserocks', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (5, 'Hunter', 30, 'US', 'Hdev92', 'backendDev', false);

INSERT INTO users(id, name, age, country_code, username, password, is_admin)
VALUES (6, 'Allan', 27, 'US', 'Alires', 'iLoveB00tdev', true);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Lance', 20, 'USA', 'LanChr', 'b00tdevisbest', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Tiffany', 28, 'USA', 'Tifferoon', 'autoincrement', true);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Lane', 27, 'USA', 'wagslane', 'update_me', false);