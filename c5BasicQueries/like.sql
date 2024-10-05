-- Like
-- Sometimes we don't have the luxury of knowing exactly what it is we need to query. Have you ever wanted to look up a song or a video but you only remember part of the name? SQL provides us an option for when we're in situations LIKE this.

-- The LIKE keyword allows for the use of the % and _ wildcard operators. Let's focus on % first.

-- % Operator
-- The % operator will match zero or more characters. We can use this operator within our query string to find more than just exact matches depending on where we place it.

-- Product starts with "banana":
-- SELECT * FROM products
-- WHERE product_name LIKE 'banana%';
-- Copy icon
-- Product ends with "banana":
-- SELECT * FROM products
-- WHERE product_name LIKE '%banana';
-- Copy icon
-- Product contains "banana":
-- SELECT * FROM products
-- WHERE product_name LIKE '%banana%';
-- Copy icon
-- Assignment
-- Our HR team is dealing with a ticket from one of our users but they are having trouble pulling up their record in the database. They are pretty sure the user's name starts with Al.

-- Write a query that returns all the fields for records where the user's name starts with Al.


SELECT * FROM users
WHERE name LIKE "Al%"