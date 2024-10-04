-- Assignment
-- Let's begin building a table for CashPal database! Create the people table with the following fields:

-- id - Integer
-- handle - Text
-- name - Text
-- age - Integer
-- balance - Integer
-- is_admin - boolean
-- Tip
-- The pragma table_info(TABLENAME); command returns information about a table and its fields. You don't need to edit this line, I just thought you might be curious!

CREATE TABLE people(
  id INTEGER,
  handle TEXT,
  name TEXT,
  age INTEGER,
  balance INTEGER,
  is_admin BOOLEAN
);

-- TEST SUITE, DON'T TOUCH BELOW THIS LINE --

pragma table_info('people');
