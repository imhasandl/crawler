-- Invoice Subquery
-- Certain customers have been using their personal CashPal accounts for business expenses. CashPal is trying to contact these customers so they can upsell business accounts.

-- Challenge
-- Using a subquery, write an SQL statement that retrieves full user records for every user who matches the sender_id in a transaction with invoice or tax mentioned anywhere in the transaction note, and who is not an admin.


SELECT * FROM users
  WHERE id IN (
    SELECT sender_id
    FROM transactions
    WHERE note LIKE "%invoice%"
    OR note LIKE "%tax%"
  )
  AND is_admin = false





CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  country_code TEXT NOT NULL,
  username TEXT UNIQUE,
  password TEXT NOT NULL,
  is_admin BOOLEAN
);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('David', 34, 'US', 'DavidDev', 'insertPractice', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Samantha', 29, 'BR', 'Sammy93', 'addingRecords!', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('John', 39, 'CA', 'Jjdev21', 'welovebootdev', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Ram', 42, 'IN', 'Ram11c', 'thisSQLcourserocks', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Hunter', 30, 'US', 'Hdev92', 'backendDev', true);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Allan', 27, 'US', 'Alires', 'iLoveB00tdev', true);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Lance', 20, 'US', 'LanChr', 'b00tdevisbest', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Tiffany', 28, 'US', 'Tifferoon', 'autoincrement', true);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Lane', 27, 'US', 'wagslane', 'update_me', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Darren', 15, 'CA', 'Dshan', 'found_me', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Albert', 55, 'BR', 'BertDev', 'one_al_name', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Alvin', 27, 'US', 'AlvinA27', 'easter_egg', false);

INSERT INTO users(name, age, country_code, username, password, is_admin)
VALUES ('Al', 39, 'JP', 'quickCoder', 'snake_case', false);

CREATE TABLE transactions (
  id INTEGER PRIMARY KEY, 
  user_id INTEGER NOT NULL,
  recipient_id INTEGER, 
  sender_id INTEGER, 
  note TEXT, 
  amount INTEGER,
  was_successful BOOLEAN
);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (1, 4, 'June Invoice', 10.50, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (1, 10, 'Sales tax', 9.56, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (1, 2, 'Car problems', 256.21, false);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (1, 5, 'Franchise Tax', 50, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (9, 11, 'MTG Draft', 50, false);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (6, 4, 'lunch with the friends', 12.56, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (6, 12, 'paying ya back for lunch', 12.22, false);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (9, 6, 'Payroll Taxes', 24.89, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (1, 23, 'thanks for lunch yesterday', 10.00, true);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (6, 14, '5 buck pizza for lunch', 5.00, true);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (8, 2, 'lunch was goooood thanks, man!', 47.42, true);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (23, 4, 'lunch meetup, lets get together again soon.', 16.91, false);

INSERT INTO transactions (user_id, sender_id, note, amount, was_successful)
VALUES (6, 1, 'Landscaping Invoice', 20.00, true);

INSERT INTO transactions (user_id, recipient_id, note, amount, was_successful)
VALUES (2, 13, 'Happy birthday, sis! Lets get lunch soon.', 100.00, true);