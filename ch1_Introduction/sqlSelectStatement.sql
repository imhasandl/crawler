-- Assignment
-- The state of our CashPal users table is as follows:

-- id	name	age	balance	is_admin
-- 1	John Smith	28	450	1
-- 2	Darren Walker	27	200	1
-- 3	Jane Morris	33	496.24	0
-- It's very common to write queries that only return specific portions of data from a table. Our HR team has requested a report asking for all the names and balances of all of our users.

-- Write a query that retrieves all of the names and balances from the users table.


SELECT name, balance from users